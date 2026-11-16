from astropy.table import Table
import matplotlib
import subprocess
from matplotlib import pyplot as plt
from astropy.io import fits
from astropy.stats import sigma_clipped_stats
from astropy.wcs import wcs
from photutils.aperture import aperture_photometry
from photutils.aperture import CircularAperture, CircularAnnulus
import numpy as np
from astropy.stats import sigma_clipped_stats
from photutils.detection import DAOStarFinder
#from astropy.time import Time
import os.path
import os, sys
from astropy.coordinates import SkyCoord
from astropy import units as u

def get_automag_pars():

    file = '/mnt/64bin/auto_astrom/automag_driver'

    if not os.path.exists('automag_driver'):
        printlog('No automag_driver in current directory.  Using default at /mnt/64bin/auto_astrom/automag_driver')
        if not os.path.exists(file):
            printlog('No default autmag_driver file.  Will not continue.  Aborting...')
            sys.exit()

    if os.path.exists('automag_driver'):
        file = 'automag_driver'

    printlog('automag_driver: using file '+file)
    data = open(file,'r')
    n = len(open(file).readlines(  ))
    for i in range(0,n):
        line = data.readline()
        word = line.split()
        if word[0] == 'radius':
            rad = float(word[2])
        if word[0] == 'radius_1':
            r_in = float(word[2])
        if word[0] == 'radius_2':
            r_out = float(word[2])
    printlog('aperture parameters; rad, r_in, r_out: '+str(rad)+', '+str(r_in)+', '+str(r_out))
    return rad,r_in,r_out

# --------------------------------------------------------------------------------------------------------------

def printlog(word):
    print(word)
    log.write(str(word)+'\n')
    return

# --------------------------------------------------------------------------------------------------------------

def getscale(hdr):
    w = wcs.WCS(hdr)
    ra0,dec0 = w.wcs_pix2world(0,0,1)
    ra1,dec1 = w.wcs_pix2world(0,1,1)
    dra = (ra1-ra0)*np.cos(dec0*np.pi/180)
    ddec = (dec1-dec0)
    asecpix = (dra**2+ddec**2)**0.5
    #asecpix = ((dec1-dec0)**2+(ra0-ra1)**2)**0.5
    asecpix = abs(3600*asecpix)
    return asecpix

# ------------------------------------------------------------------------------------------------------------------------------------------

def xy2ad(hdr,x,y):
    w = wcs.WCS(hdr)
    ra,dec = w.wcs_pix2world(x+1,y+1,1)
    return ra,dec

# ------------------------------------------------------------------------------------------------------------------------------------------

def ad2xy(hdr,ra,dec):
    w = wcs.WCS(hdr)
    xc,yc = w.wcs_world2pix(ra,dec,1)
    return xc,yc

# ------------------------------------------------------------------------------------------------------------------------------------------

def getMJD(datetime):
    t = Time(datetime, format='isot', scale='utc')
    date_mjd = "{:.5f}".format(t.mjd)
    return(date_mjd)

# ------------------------------------------------------------------------------------------------------------------------------------------

def checkxy(x,y,sz):
    flag = 0
    if x <= 0 or x > sz[1] or y <= 0 or y >= sz[0] or np.isfinite(x)==False or np.isfinite(y)==False:
        flag = 1
        x = 0
        y = 0
        printlog('WARNING: RA/Dec are not in image range')
    return x,y,flag

# -----------------------------------------------------------------------------------------------------------------------------------------

def getphot(img,hdr,sources,rad_asec,r_in_asec,r_out_asec):

    # get pixel scale of image
    spix = getscale(hdr)
    printlog('pixel scale is: '+str(spix))

    # convert aperture sizes from arcseconds to pixels
    rad = rad_asec / spix        # pixels
    r_in = r_in_asec / spix      # pixels
    r_out = r_out_asec / spix    # pixels
    
    # CCD parameters (used for noise calculation)
    gain = 1.
    dark = 0.
    rd = 15.
    linear_lim = 50000. # linearity limit.  ignore stars if any pixel within aperture exceeds linear_lim

    ra,dec = xy2ad(hdr,sources['xcentroid'], sources['ycentroid'])
    
    positions = np.transpose((sources['xcentroid'], sources['ycentroid']))
    apertures = CircularAperture(positions, r=rad)
    ## create circular aperture (for photometry calculation)
    aperture = CircularAperture(positions, r=rad)
    ## create annulus aperture (for sky calculation)
    annulus_aperture = CircularAnnulus(positions, r_in=r_in, r_out=r_out)
    ## create mask
    annulus_masks = annulus_aperture.to_mask(method='center')
    phot_masks = apertures.to_mask(method='center')
    ## calcullate the data and (sigma clipped) sky
    bkg_median = []

    # loop over apertures and find maximum value of pixels within aperture (used to reject no linearity)
    max_val = []
    max_flag = []    
    for mask in phot_masks:
        phot_data = mask.multiply(img)
        phot_data_1d = phot_data[mask.data > 0]
        max_tmp = np.nanmax(phot_data_1d)
        max_val.append(max_tmp)
        if max_tmp >= linear_lim:
            max_flag.append(1)
        if max_tmp < linear_lim:
            max_flag.append(0)        
    max_val = np.array(max_val)
    max_flag = np.array(max_flag)

    # loop over sky annuli and get sig-clipped sky value
    for mask in annulus_masks:
        annulus_data = mask.multiply(img)
        annulus_data_1d = annulus_data[mask.data > 0]
        _, median_sigclip, _ = sigma_clipped_stats(annulus_data_1d)
        bkg_median.append(median_sigclip)
    bkg_median = np.array(bkg_median)

    # write results to output object
    phot = aperture_photometry(img, aperture)
    phot['max_val'] = max_val
    phot['annulus_median'] = bkg_median
    phot['aper_bkg'] = bkg_median * aperture.area
    phot['aper_sum_bkgsub'] = phot['aperture_sum'] - phot['aper_bkg']
    # noise calculation
    phot['aper_sum_bkgsub_err'] = np.sqrt((phot['aperture_sum']) + (phot['aper_bkg']) + dark + rd**2)
    phot['aper_SNR'] =  phot['aper_sum_bkgsub'] / phot['aper_sum_bkgsub_err']
    #print(len(max_val),len(max_flag))
    phot['max_flag'] =  max_flag

    phot['RA'] = ra
    phot['Dec'] = dec

    for col in phot.colnames:
        phot[col].info.format = '%.8g'  # for consistent table output

    return(phot)

# ------------------------------------------------------------------------------------------------------------------------------------------

def findstars(img,hdr):
    fwhm_asec = hdr['PSF_FWHM']
    spix = getscale(hdr)
    fwhm_pix = fwhm_asec/spix
    mean, median, std = sigma_clipped_stats(img, sigma=3.0)
    daofind = DAOStarFinder(fwhm=fwhm_pix, threshold=5.*std)  
    sources = daofind(img - median)
    for col in sources.colnames:  
        sources[col].info.format = '%.8g'  # for consistent table output
    #print(sources)

    positions = np.transpose((sources['xcentroid'], sources['ycentroid']))
    apertures = CircularAperture(positions, r=8.)
    #norm = ImageNormalize(stretch=SqrtStretch())
    #plt.imshow(img, cmap='Greys', origin='lower', interpolation='nearest',vmin=median-3*std,vmax=median+5*std)
    #apertures.plot(color='blue', lw=1.5, alpha=0.5)
    #plt.show(block=False)
    return(sources)

# ------------------------------------------------------------------------------------------------------------------------------------------

def get_refcat(hdr,refcat_rad,maglim):
    naxis1 = float(hdr['NAXIS1'])
    naxis2 = float(hdr['NAXIS2'])
    xc = naxis1/2.
    yc = naxis2/2.

    rac,decc = xy2ad(hdr,xc,yc)
    printlog('RA/Dec center of frame: '+str(rac)+' '+str(decc))
    command = '/mnt/64bin/auto_astrom/refcat '+str(rac)+' '+str(decc)+' -rad '+str(refcat_rad)+' -all > refcat_output'
    #print(command)
    #sys.exit()
    refcat_output = subprocess.getoutput(command)
    #refcat_output = subprocess.getoutput('cat mm > refcat_output')
    data = np.genfromtxt('refcat_output')
    ra = np.array(data[:,0])
    dec = np.array(data[:,1])
    #pm_ra = np.array(data[:,4])
    #pm_dec = np.array(data[:,5])
    #ra,dec = update_for_propermotions(hdr,ra,dec,pm_ra,pm_dec)
    
    gaia_gmag = np.array(data[:,21])
    gaia_gmag_err = np.array(data[:,22])

    gaia_rmag = np.array(data[:,25])
    gaia_rmag_err = np.array(data[:,26])

    gaia_imag = np.array(data[:,29])
    gaia_imag_err = np.array(data[:,30])

    ps_b    =  0.213 + 0.587 * (gaia_gmag - gaia_rmag) + gaia_gmag
    ps_v    =  0.006 + 0.474 * (gaia_gmag - gaia_rmag) + gaia_rmag
    ps_r_c  = -0.138 - 0.131 * (gaia_gmag - gaia_rmag) + gaia_rmag
    ps_i_c  = -0.367 - 0.149 * (gaia_gmag - gaia_rmag) + gaia_imag

    bad = np.where(gaia_gmag >=maglim)
    ra[bad] = 0
    dec[bad] = -90
    
    refcat = Table()
    refcat['RA'] = ra
    refcat['Dec'] = dec
    refcat['bmag'] = ps_b
    refcat['bmag_err'] = gaia_gmag_err
    refcat['vmag'] = ps_v
    refcat['vmag_err'] = gaia_gmag_err
    refcat['gmag'] = gaia_gmag
    refcat['gmag_err'] = gaia_gmag_err
    refcat['rmag'] = ps_r_c
    refcat['rmag_err'] = gaia_rmag_err
    refcat['imag'] = ps_i_c
    refcat['imag_err'] = gaia_imag_err
    for col in refcat.colnames:
        refcat[col].info.format = '%.8g'  # for consistent table output

    #print(refcat)
    return(refcat)

# ------------------------------------------------------------------------------------------------------------------------------------------

def zeropoint(img,hdr):

    global log
    log = open('zpt_out.log','w')

    #######################

    offset_lim = 3.  # refcat--star matching radius (arcsec)
    SNR_lim = 10.     # zpt only calculated for stars with SNR>SNR_lim

    refcat_rad =  0.5 # catalog radius to return [degrees]
    maglim = 16.5   # g-banmd magnitude limit of refcat catalog to consider.  stars fainter than maglim are ignored.

    maxval_limit = 45000
    #######################

    #img,hdr = fits_read(file,0)
    #checkfile(file,hdr)
    filter = hdr["FILTER"]

    rad_asec,r_in_asec,r_out_asec = get_automag_pars()

    # find stars
    sources = findstars(img,hdr)

    # perform aperture photometry at star positions in "sources"
    phot = getphot(img,hdr,sources,rad_asec,r_in_asec,r_out_asec)

    # get refcat catalog
    refcat = get_refcat(hdr,refcat_rad,maglim)

    # extract RA and Dec for both catalogs
    refcat_coords = SkyCoord(refcat['RA']*u.deg, refcat['Dec']*u.deg)
    phot_coords = SkyCoord(phot['RA']*u.deg, phot['Dec']*u.deg)

    # match catalogs
    idx_refcat, d2d_refcat, d3d_refcat = phot_coords.match_to_catalog_sky(refcat_coords)

    # extract counts and magnitudes for star catalog
    if filter=="B": gaia_mag = refcat['bmag']
    if filter=="V": gaia_mag = refcat['vmag']
    if filter=="g": gaia_mag = refcat['gmag']
    if filter=="R": gaia_mag = refcat['rmag']
    if filter=="r": gaia_mag = refcat['rmag']
    if filter=="i": gaia_mag = refcat['imag']
    if filter=="I": gaia_mag = refcat['imag']
    
    #gaia_mag = refcat['vmag']
    mag_phot = gaia_mag[idx_refcat]  
    counts  = phot['aper_sum_bkgsub']
    countserr = phot['aper_sum_bkgsub_err']
    aper_SNR  = phot['aper_SNR']
    maxval = phot['max_val']
        
    
    gaia_RA = refcat['RA']
    gaia_Dec = refcat['Dec']
    gaia_RA = gaia_RA[idx_refcat]
    gaia_Dec = gaia_Dec[idx_refcat]
    
    # get catalog offsets
    offset = d2d_refcat.arcsec

    # get matches within offset_lim and SNR limits.
    gd = np.where((offset <= offset_lim) & (aper_SNR>=SNR_lim) & (maxval<=maxval_limit) & (mag_phot<=maglim))
    printlog("There are "+str(len(gd[0]))+' matches within '+str(offset_lim)+'arcsec and above SNR='+str(SNR_lim))

    if len(gd[0])==0:
        printlog('No stars matched between catalogs and within limits.')
        printlog('Aborting')
        return np.nan,np.nan,np.nan,np.nan,np.nan
       
    if len(gd[0])<=5:
        printlog('Warning: <5 stars detected within matching and magnitude limits.  This may not be doing something sensible...')

    # calculate zero points for all stars that are matched and within magnitude tolerance
    zpt = mag_phot + 2.5 * np.log10(counts)
    zpt_gd = zpt[gd]
    aper_SNR_gd = aper_SNR[gd]
    mag_phot_gd = mag_phot[gd]
    counts_gd = counts[gd]
    countserr_gd = countserr[gd]
    gaia_RA_gd = gaia_RA[gd]
    gaia_Dec_gd = gaia_Dec[gd]
    

    mean, median, std = sigma_clipped_stats(zpt_gd, sigma=3.0)
    zpt_err = std/np.sqrt(len(zpt_gd))
    mean_weighted = np.average(zpt_gd, weights=aper_SNR_gd)

    #
    a = open('star_mags.dat','w')
    a.write('#   RA   Dec   GaiaMag_'+filter+'   counts    aper_SNR    mag_'+filter+'   err_mag_'+filter+ '\n')
    nstars = len(counts_gd)
    mag_mnw_zpt = mean_weighted - 2.5*np.log10(counts_gd)
    magerr_mnw_zpt = mag_mnw_zpt - (mean_weighted - 2.5*np.log10(counts_gd+countserr_gd))
    #print(len(mag_mnw_zpt),len(counts_gd))
    nstars = len(counts_gd)
    #print(magerr_mnw_zpt)
    #sys.exit()
    for i in range(0,nstars):
        #print(gaia_RA_gd[i],gaia_Dec_gd[i],mag_phot_gd[i],counts_gd[i],aper_SNR_gd[i],mag_mnw_zpt[i],magerr_mnw_zpt[i],magerr_mnw_zpt[i])
        #if aper_SNR[i]>=SNR_lim:
        # print(mag_mnw_zpt,magerr_mnw_zpt)
        a.write(str("{:.6f}".format(gaia_RA_gd[i]))  + ' ' + str("{:.6f}".format(gaia_Dec_gd[i])) + ' ' + \
                str("{:.3f}".format(mag_phot_gd[i])) + ' ' + str("{:.2f}".format(counts_gd[i]))   + ' ' + \
                str("{:.1f}".format(aper_SNR_gd[i])) + ' ' + str("{:.3f}".format(mag_mnw_zpt[i])) + ' ' + \
                str("{:.3f}".format(magerr_mnw_zpt[i])) + '\n')
    a.close()

    print()
    printlog("Zeropoint: ")
    printlog("mean    median   mean_weighted  stdev  zpt_err")
    out_word = str("{:.3f}".format(mean))+'  '+str("{:.3f}".format(median))+'   '+str("{:.3f}".format(mean_weighted))+\
        '         '+str("{:.3f}".format(std))+'  '+str("{:.3f}".format(zpt_err))+'\n'
    printlog(out_word)

    #print(len(counts_gd),len(mag_phot_gd),len(zpt))

    return mean,median,mean_weighted,std,zpt_err,zpt_gd,mag_phot_gd,counts_gd,mag_phot,counts

#plt.figure()
#plt.scatter(mag_phot_gd,zpt)
#plt.plot([0,100],[mean_weighted,mean_weighted],color='red')
#plt.plot([0,100],[mean_weighted+zpt_err,mean_weighted+zpt_err],color='blue')
#plt.plot([0,100],[mean_weighted-zpt_err,mean_weighted-zpt_err],color='blue')
#plt.xlim(np.min(mag_phot[gd])-0.5,np.max(mag_phot[gd])+0.5)
#plt.show(block=False)
