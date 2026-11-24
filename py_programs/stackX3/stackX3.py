#!/usr/bin/env python3

# stackX3.py: a copy of stackX2.py with four changes. Everything else is unchanged.
#
#  1. Frame offsets are measured on 3x3 median-filtered copies of each frame.
#     Hot and dead pixels sit in the same place on every frame, so in stackX2
#     they dominated the cross-correlation and forced every offset to zero.
#     The filtered copies are used only to measure offsets; the stack itself is
#     built from the unfiltered frames. Where both frames have astrometry, the
#     offset is also compared with the WCS and a warning is printed if they differ.
#  2. The flat field is chosen automatically when no 6th argument is given.
#     pt5m: <filter>flatnorm2x2.fits from that night's calibs folder, otherwise
#     the nearest earlier night that has one. Other telescopes: the most recent
#     flat in SHARED_FLATS taken on or before the night. A flat more than about
#     6 months older than the data is still used, with a warning (FLATOLD = T).
#     If no suitable flat is found, the script stops. Pass 'none' as the 6th
#     argument to stack without a flat on purpose, or a path to use a given flat.
#  3. All output goes into the current directory, nothing into ~/tmp, so several
#     jobs can run at once from separate terminals if each runs in its own folder.
#  4. Printed offsets are rounded correctly for negative values, and aborts
#     return exit status 1 instead of 0.
#  5. Failures are handled more clearly:
#     - a frame whose PSF cannot be measured, or with no stars, is left out
#       (stackX2 crashed, or counted it as a good frame);
#     - if the diagnostic plots crash, astrometry still runs;
#     - the script exits with status 1 if arefcat writes no new amosaic.fits;
#     - telescope names with underscores (east_16) are changed to hyphens;
#     - a wrong number of arguments prints the usage text.
#     The mosaic header records frames used (NFRAMES), frames left out
#     (NSKIPPED, with reasons in HISTORY) and WCS disagreements (NWCSWARN).
#
# How to use it: STACKX3_GUIDE.md in the project folder. Known open issues: STACKX3_OPEN_ISSUES.md.
#
# For testing away from the lab, three environment variables change the folders:
#   STACKX3_ARCHIVE_ROOT (default /mnt/archive)
#   STACKX3_FLAT_ROOT    (default /mnt/share/flatfields)
#   STACKX3_AREFCAT      (default /mnt/64bin/auto_astrom/arefcat.py)

def lookup_scale(hdr,tele):
    asecpix = 0
    if tele == 'pt5m': tel = 'pt5m'
    if tele != 'pt5m': tel = hdr['telescop']
    if tel == '14-inch DRACO2 Dome':
        asecpix = 0.988
    if tel == '14-inch East Dome':
        asecpix = 0.98
    if tel == '16-inch  East Dome':
        asecpix = 0.9252
    if tel == '14-inch West Dome':
        asecpix = 0.91 
    if tel == '16-inch Far-East Dome':
        asecpix = 0.830 
    if tel == '20-inch Far-East Dome':
        asecpix = 0.6485 
    if tel == 'pt5m':
        asecpix = 0.556 
    if asecpix == 0:
        print('could not figure out pixel scale. adopting 1.0".')
        print('please check what happened in "lookup_scale"...')
        asecpix = 1.0
    print(tel)
    return asecpix

def getscale(filename,hdr,tel):
    # if "ad" file exists, measure pixel scale from wcs.  if "d" file
    # only, use "lookup_scale" for pixel scale.
    tmp = str.split(filename,'/')
    filetype = (tmp[len(tmp)-1])[0]
    if filetype == 'a':
        #print('got astrometry.  reading pixel scale from header')
        w = wcs.WCS(hdr)
        ra0,dec0 = w.wcs_pix2world(0,0,1)
        ra1,dec1 = w.wcs_pix2world(0,1,1)
        #asecpix = ((dec1-dec0)**2+(ra0-ra1)**2)**0.5
        dra = (ra1-ra0)*np.cos(dec0*np.pi/180)
        ddec = (dec1-dec0)
        asecpix = (dra**2+ddec**2)**0.5
        asecpix = abs(3600*asecpix)
    if filetype=='d':
        #print('no astrometry.  looking up pixel scale.')
        asecpix = lookup_scale(hdr,tel)
    return asecpix

def nan2d(img,val):
    bad = np.isnan(img)
    img[bad]=val
    return img

def fits_read(file,i):
    hdu = fits.open(file)
    data = hdu[i].data
    hdr = hdu[i].header
    return data,hdr

def writefits(name,data,hdr):
    hdu = fits.PrimaryHDU(data)
    hdu.data = data
    if hdr != None:
        hdu.header = hdr
    hdulist = fits.HDUList([hdu])
    hdulist.writeto(name,overwrite=True)

def getname(i,path,tel):

    if tel == 'pt5m':
        print('pt5m')
        if i<=999999: pad='0'
        if i>=1000000: pad=''
        file = path+'adbr'+pad+str(i)+'.fits'
        #print('searching for file: '+file)
        file_exist = os.path.exists(file)
        #if file_exist == True: print('success')
        if file_exist == False:
            file = path+'dbr'+pad+str(i)+'.fits'
            file_exist = os.path.exists(file)
            if file_exist == False:
                print('Error.  file '+file+' not found. aborting')
                sys.exit(1)

    if tel != 'pt5m':
        # pad appropriate number of zeros for file names
        if i<=9: pad='000'
        if (i>=10) and (i<=99): pad='00'
        if (i>=100) and (i<=999): pad='0'
        if i>=1000: pad=''
        file = path+'ad'+pad+str(i)+'.fits'
        file_exist = os.path.exists(file)
        #if file_exist == True:
        #    print(file+' exists')
        if file_exist == False:
            file = path+'d'+pad+str(i)+'.fits'
            file_exist = os.path.exists(file)
            #if file_exist == True:
            #    print(file+' exists')
            if file_exist == False:
                print('Error.  file '+file+' not found. aborting')
                sys.exit(1)
    return file

def flat_problem(flatfile,band,shape):
    # returns a reason why this flat should not be used, or '' if it is fine
    try:
        fhdr = fits.getheader(flatfile,0)
    except Exception as err:
        return 'header could not be read ('+type(err).__name__+')'
    flat_shape = (fhdr.get('NAXIS2'),fhdr.get('NAXIS1'))
    if flat_shape != shape:
        return 'size '+str(flat_shape)+' does not match frames '+str(shape)
    flat_band = str(fhdr.get('FILTER','')).strip()
    if flat_band != band:
        return 'FILTER is '+flat_band+', frames are '+band
    return ''

def find_pt5m_flat(date,band,shape):
    # look in this night's calibs folder first, then step back one night at a
    # time (across years if needed) until a suitable flat is found.
    # returns (flat path, age in days) or (None, None)
    flat_name = band+'flatnorm2x2.fits'
    night = datetime.strptime(date,'%y_%m_%d').date()
    tel_folder = ARCHIVE_ROOT+'/pt5m'
    years = [int(y) for y in os.listdir(tel_folder)
             if y.isdigit() and os.path.isdir(tel_folder+'/'+y)]
    years = sorted([y for y in years if y <= night.year],reverse=True)
    for year in years:
        year_folder = tel_folder+'/'+str(year)
        for other in sorted(os.listdir(year_folder),reverse=True):
            if re.fullmatch(r'\d\d_\d\d_\d\d',other) is None:
                continue
            try:
                other_night = datetime.strptime(other,'%y_%m_%d').date()
            except ValueError:
                continue    # folder name is not a real date
            if other_night > night:
                continue
            flatfile = year_folder+'/'+other+'/calibs/'+flat_name
            if not os.path.exists(flatfile):
                continue
            problem = flat_problem(flatfile,band,shape)
            if problem != '':
                print('Skipping flat '+flatfile+': '+problem)
                continue
            return flatfile, (night-other_night).days
    return None, None

def find_shared_flat(tel,date,band,shape):
    # use the most recent flat in SHARED_FLATS taken on or before this night
    # returns (flat path, age in days) or (None, None)
    night = datetime.strptime(date,'%y_%m_%d').date()
    candidates = []
    for flat_tel,flat_band,flat_date,name in SHARED_FLATS:
        flat_night = datetime.strptime(flat_date,'%Y-%m-%d').date()
        if flat_tel == tel and flat_band == band and flat_night <= night:
            candidates.append((flat_night,name))
    if len(candidates) == 0:
        print('No flat in SHARED_FLATS for',tel,band,'taken on or before',date)
        return None, None
    candidates.sort(reverse=True)    # most recent first
    for flat_night,name in candidates:
        flatfile = FLAT_ROOT+'/'+name
        if not os.path.exists(flatfile):
            print('Skipping flat '+flatfile+': file does not exist')
            continue
        problem = flat_problem(flatfile,band,shape)
        if problem != '':
            print('Skipping flat '+flatfile+': '+problem)
            continue
        return flatfile, (night-flat_night).days
    return None, None

def measure_shift(target,source):
    # A 3x3 median filter removes single bad pixels but keeps stars, which are
    # several pixels wide. NaNs are set to zero so the filter can run.
    target_smooth = median_filter(np.nan_to_num(target),size=3)
    source_smooth = median_filter(np.nan_to_num(source),size=3)
    return image_registration.cross_correlation_shifts(target_smooth,source_smooth)

def wcs_shift(file1,hdr1,file2,hdr2,shape):
    # offset predicted from the astrometry in both headers, in the same sign
    # convention as measure_shift. Only 'a' files have astrometry.
    name1 = os.path.basename(file1)
    name2 = os.path.basename(file2)
    if name1[0] != 'a' or name2[0] != 'a':
        return None
    try:
        w1 = wcs.WCS(hdr1)
        w2 = wcs.WCS(hdr2)
        x1 = shape[1]/2.
        y1 = shape[0]/2.
        ra,dec = w1.wcs_pix2world(x1,y1,0)
        x2,y2 = w2.wcs_world2pix(ra,dec,0)
    except Exception:
        return None
    # a star that moved by +d pixels needs an offset of -d to line up again
    return float(x1-x2), float(y1-y2)

def getrange(img,frac):
    gd = np.where(img != 0)
    vals = img[gd]
    type(vals)
    out = sorted(vals)
    n = len(vals)
    lo_i = round(n*(1-frac))
    hi_i = round(n*frac)
    lov = out[lo_i]
    hiv = out[hi_i]
    out = np.array([lov,hiv])
    return out

def getstats(img):
    # scaling needs to be calculated quickly, so take first 100x100
    # pixels and calculate median and sigma and show image from median
    # to median+10-sigma.
    sz = img.shape
    xc = sz[1]
    yc = sz[0]
    x0 = int(xc)-300
    x1 = int(xc)+300
    y0 = int(yc)-300
    y1 = int(yc)+300
    sub = img[y0:y1,x0:x1]
    m = np.median(sub)
    std = np.std(sub)
    return m+10*std

def twoD_Gaussian(xdata_tuple, amplitude, sigma_x, sigma_y, theta):#, offset):
    (x, y) = xdata_tuple
    xo = float(np.max(x)/2.)
    yo = float(np.max(y)/2.)
    a = (np.cos(theta)**2)/(2*sigma_x**2) + (np.sin(theta)**2)/(2*sigma_y**2)   
    b = -(np.sin(2*theta))/(4*sigma_x**2) + (np.sin(2*theta))/(4*sigma_y**2)    
    c = (np.sin(theta)**2)/(2*sigma_x**2) + (np.cos(theta)**2)/(2*sigma_y**2)   
    g = amplitude*np.exp( - (a*((x-xo)**2) + 2*b*(x-xo)*(y-yo) + c*((y-yo)**2))) #+ offset
    return g.ravel()

def getPSF(img,spix,xc,yc):
    cc=0
    # cut out region +/-10" around each star
    bbox_asec = 10.
    bbox_pix = int(round(bbox_asec/spix))

    # ignore any stars with flux at x/y above ccd_lim (due to being close to saturation)
    ccd_lim = 55000

    # get x/y positions of stars and convert to integer
    #xc = target_list[:,0]
    #yc = target_list[:,1]
    xc = np.round(xc)
    yc = np.round(yc)
    xc = xc.astype(int)
    yc = yc.astype(int)
    nstars = len(xc)
    # build cube of star thumbnails
    cube = np.zeros((2*bbox_pix,2*bbox_pix,nstars))
    sz = img.shape
    # for simplicity, only include stars within bbox_asec (10") of edges of frame
    for i in range(0,nstars):
        if xc[i] >= bbox_pix and xc[i] <= (sz[1]-bbox_pix) and yc[i] >= bbox_pix and yc[i] <= (sz[0]-bbox_pix):
            sub = img[yc[i]-bbox_pix:yc[i]+bbox_pix,xc[i]-bbox_pix:xc[i]+bbox_pix]
            szsub = sub.shape
            xcs = int(np.round(szsub[1]/2))
            ycs = int(np.round(szsub[0]/2))
            # get peak value on CCD of star
            cen_val = sub[ycs,xcs]
            # simple estimate of sky noise
            sig_est = np.std(sub[:,0:2])
            # check if central pixel for star is near saturation.
            # also check if central pixel is >5-sigma
            if cen_val <= ccd_lim and cen_val>=5*sig_est:
                #tot = np.nansum(sub)
                tot = sub[ycs,xcs]
                # normalise by total flux
                cube[:,:,i] = sub/tot
                #ii = plt.imshow(sub)
                #plt.show()
                cc=cc+1
    #print(cc,len(xc))
    #sys.exit()
    bad = np.where(cube == 0)
    # set zeros to NaN (so not included in stack)
    if len(bad[0]) >= 1:
        cube[bad] = np.nan
    # median combine star thumbails
    star = np.nansum(cube,axis=2)

    # fit 2D gaussian profile to star image
    sz = star.shape
    x = np.linspace(0, sz[1]-1, sz[1])
    y = np.linspace(0, sz[0]-1, sz[0])
    x, y = np.meshgrid(x, y)

    # set up the initial guess for the gaussian fit
    sz = star.shape
    #xc = sz[1]/2.
    #yc = sz[0]/2.
    initial_guess1 = (np.max(star),1.5,1.5,0)
    # gaussian fit happens on 1d vectors, so need to expand to array to 1D for fitting
    xdata = np.vstack((x.ravel(),y.ravel()))
    ydata_star = star.ravel()

    # fit Gaussians using curvefit
    popt1,pcov1 = opt.curve_fit(twoD_Gaussian, xdata, ydata_star, p0=initial_guess1)

    # sigma_x and sigma_y in pixels
    FWHM_x = 2.35*popt1[1]*spix
    FWHM_y = 2.35*popt1[2]*spix
    # return max value of FWHM
    FWHM = np.max([FWHM_x,FWHM_y])
    #ii = plt.imshow(star)
    #print(FWHM)
    #plt.show()
    return FWHM

from photutils.detection import DAOStarFinder
import image_registration
import subprocess, time
import astroalign as aa
import sys
import numpy as np
from matplotlib import pyplot as plt
from astropy.stats import sigma_clip
from astropy.io import fits
#registered_image, footprint = aa.register(source, target)
import scipy.optimize as opt
from scipy.ndimage import median_filter
from astropy.stats import sigma_clipped_stats
from astropy import wcs
from datetime import datetime
import os
import re

ARCHIVE_ROOT = os.environ.get('STACKX3_ARCHIVE_ROOT','/mnt/archive')
FLAT_ROOT = os.environ.get('STACKX3_FLAT_ROOT','/mnt/share/flatfields')
AREFCAT = os.environ.get('STACKX3_AREFCAT','/mnt/64bin/auto_astrom/arefcat.py')

# Flats for telescopes other than pt5m. Durham takes a set of flats each
# Michaelmas (around October) and each Epiphany (around January). For each image
# the most recent flat taken on or before the observing night is used.
#
# Each entry is (telescope, FILTER, date the flat was taken, path relative to
# FLAT_ROOT). FILTER and date come from each file's own header, read from the
# lab inventory of 2026-10-26; flats_Mich2026 was re-read on 2026-11-23
# (dump_flat_headers.py). Check for new flat sets after that date.
# The west-14 B flat was replaced at the lab on 2026-10-26 and its header now
# says FILTER = B, so it is included again.
# The script also checks each flat's FILTER and size before using it, so a flat
# from a different camera on the same telescope is skipped.
#
# Files left out on purpose:
# flats_Eph2022/east-14/C/master_flat_draco2_22_01_13_C.fits: in the east-14 folder but TELESCOP is DRACO2
# flats_Eph2022/far-east-20/old/B/master_flat_far-east-20_22_01_05_B.fits: in an old/ folder
# flats_Eph2023/FE20/EoP/B/master_flat_far-east-20_23_01_19_B.fits: two flats per filter (east and west of pier); pier side of each image unknown
# flats_Eph2023/FE20/EoP/C/master_flat_far-east-20_23_01_19_C.fits: two flats per filter (east and west of pier); pier side of each image unknown
# flats_Eph2023/FE20/EoP/R/master_flat_far-east-20_23_01_19_r.fits: two flats per filter (east and west of pier); pier side of each image unknown
# flats_Eph2023/FE20/EoP/V/master_flat_far-east-20_23_01_19_V.fits: two flats per filter (east and west of pier); pier side of each image unknown
# flats_Eph2023/FE20/WoP/B/master_flat_far-east-20_23_01_19_B.fits: two flats per filter (east and west of pier); pier side of each image unknown
# flats_Eph2023/FE20/WoP/C/master_flat_far-east-20_23_01_19_C.fits: two flats per filter (east and west of pier); pier side of each image unknown
# flats_Eph2023/FE20/WoP/R/master_flat_far-east-20_23_01_19_r.fits: two flats per filter (east and west of pier); pier side of each image unknown
# flats_Eph2023/FE20/WoP/V/master_flat_far-east-20_23_01_19_V.fits: two flats per filter (east and west of pier); pier side of each image unknown
# flats_Mich2019/FE16_12inch/V/master_flat.fits: header says FILTER = B, same exposure as the B flat

SHARED_FLATS = [
    # draco2
    ('draco2','B','2018-10-18','flats_Mich2018/draco2/b/master_flat.fits'),
    ('draco2','C','2018-10-18','flats_Mich2018/draco2/c/master_flat.fits'),
    ('draco2','V','2018-10-18','flats_Mich2018/draco2/v/master_flat.fits'),
    ('draco2','B','2019-01-23','flats_Eph2019/Draco2/b/master_flat.fits'),
    ('draco2','C','2019-01-23','flats_Eph2019/Draco2/c/master_flat.fits'),
    ('draco2','E','2019-01-23','flats_Eph2019/Draco2/E/master_flat.fits'),
    ('draco2','V','2019-01-23','flats_Eph2019/Draco2/v/master_flat.fits'),
    ('draco2','r','2019-01-23','flats_Eph2019/Draco2/r/master_flat.fits'),
    ('draco2','B','2019-10-21','flats_Mich2019/draco2/B/master_flat.fits'),
    ('draco2','C','2019-10-21','flats_Mich2019/draco2/C/master_flat.fits'),
    ('draco2','V','2019-10-21','flats_Mich2019/draco2/V/master_flat.fits'),
    ('draco2','r','2019-10-21','flats_Mich2019/draco2/R/master_flat.fits'),
    ('draco2','B','2020-10-15','flats_Mich2020/draco2/B/master_flat_draco2_20_10_15_B.fits'),   # from file name
    ('draco2','C','2020-10-15','flats_Mich2020/draco2/C/master_flat_draco2_20_10_15_C.fits'),   # from file name
    ('draco2','V','2020-10-15','flats_Mich2020/draco2/V/master_flat_draco2_20_10_15_V.fits'),   # from file name
    ('draco2','r','2020-10-15','flats_Mich2020/draco2/R/master_flat_draco2_20_10_15_r.fits'),   # from file name
    ('draco2','B','2021-01-23','flats_Mich2021/Jan/draco2/B/master_flat_draco2_21_01_23_B.fits'),
    ('draco2','C','2021-01-23','flats_Mich2021/Jan/draco2/C/master_flat_draco2_21_01_23_C.fits'),
    ('draco2','V','2021-01-23','flats_Mich2021/Jan/draco2/V/master_flat_draco2_21_01_23_V.fits'),
    ('draco2','r','2021-01-23','flats_Mich2021/Jan/draco2/R/master_flat_draco2_21_01_23_r.fits'),
    ('draco2','B','2022-01-04','flats_Eph2022/draco2/B/master_flat_draco2_22_01_04_B.fits'),
    ('draco2','C','2022-01-04','flats_Eph2022/draco2/C/master_flat_draco2_22_01_04_C.fits'),
    ('draco2','V','2022-01-04','flats_Eph2022/draco2/V/master_flat_draco2_22_01_04_V.fits'),
    ('draco2','r','2022-01-04','flats_Eph2022/draco2/r/master_flat_draco2_22_01_04_r.fits'),
    ('draco2','B','2022-10-22','flats_Mich2022/draco2/master_flat_draco2_22_10_22_B.fits'),
    ('draco2','C','2022-10-22','flats_Mich2022/draco2/master_flat_draco2_22_10_22_C.fits'),
    ('draco2','V','2022-10-22','flats_Mich2022/draco2/master_flat_draco2_22_10_22_V.fits'),
    ('draco2','r','2022-10-22','flats_Mich2022/draco2/master_flat_draco2_22_10_22_r.fits'),
    ('draco2','B','2023-01-18','flats_Eph2023/draco2/B/master_flat_draco2_23_01_18_B.fits'),
    ('draco2','V','2023-01-18','flats_Eph2023/draco2/V/master_flat_draco2_23_01_18_V.fits'),   # header not captured; taken from file name
    ('draco2','r','2023-01-18','flats_Eph2023/draco2/R/master_flat_draco2_23_01_18_r.fits'),
    ('draco2','B','2024-01-17','flats_Eph2024/draco2/b/master_flat_draco2_24_01_17_B.fits'),
    ('draco2','C','2024-01-17','flats_Eph2024/draco2/c/master_flat_draco2_24_01_17_C.fits'),
    ('draco2','V','2024-01-17','flats_Eph2024/draco2/v/master_flat_draco2_24_01_17_V.fits'),
    ('draco2','r','2024-01-17','flats_Eph2024/draco2/r/master_flat_draco2_24_01_17_r.fits'),
    ('draco2','B','2024-10-19','flats_Mich2024/master_flat_draco2_24_10_19_B.fits'),   # from file name
    ('draco2','C','2024-10-19','flats_Mich2024/master_flat_draco2_24_10_19_C.fits'),   # from file name
    ('draco2','V','2024-10-19','flats_Mich2024/master_flat_draco2_24_10_19_V.fits'),   # from file name
    ('draco2','r','2024-10-19','flats_Mich2024/master_flat_draco2_24_10_19_r.fits'),   # from file name
    ('draco2','C','2025-01-25','flats_Eph2025/draco2/c/master_flat_draco2_25_01_25_C.fits'),
    ('draco2','V','2025-01-25','flats_Eph2025/draco2/v/master_flat_draco2_25_01_25_V.fits'),
    ('draco2','B','2025-01-30','flats_Eph2025/draco2/b/master_flat_draco2_25_01_30_B.fits'),
    ('draco2','r','2025-01-30','flats_Eph2025/draco2/r/master_flat_draco2_25_01_30_r.fits'),
    ('draco2','V','2025-10-10','flats_Mich2025/master_flat_draco2_25_10_10_V.fits'),   # from file name
    ('draco2','B','2025-11-28','flats_Mich2025/master_flat_draco2_25_11_28_B.fits'),   # from file name
    ('draco2','C','2025-11-28','flats_Mich2025/master_flat_draco2_25_11_28_C.fits'),   # from file name
    ('draco2','V','2025-11-28','flats_Mich2025/master_flat_draco2_25_11_28_V.fits'),   # from file name
    ('draco2','r','2025-11-28','flats_Mich2025/master_flat_draco2_25_11_28_r.fits'),   # from file name
    ('draco2','B','2026-02-24','flats_Eph2026/draco2_26_02_24_B_master_flat.fits'),
    ('draco2','C','2026-02-24','flats_Eph2026/draco2_26_02_24_C_master_flat.fits'),
    ('draco2','V','2026-02-24','flats_Eph2026/draco2_26_02_24_V_master_flat.fits'),
    ('draco2','r','2026-02-24','flats_Eph2026/draco2_26_02_24_R_master_flat.fits'),
    ('draco2','C','2026-10-22','flats_Mich2026/master_flat_draco2_26_10_22_C.fits'),
    ('draco2','V','2026-10-22','flats_Mich2026/master_flat_draco2_26_10_22_V.fits'),
    ('draco2','B','2026-11-20','flats_Mich2026/master_flat_draco2_26_11_20_B.fits'),
    ('draco2','C','2026-11-20','flats_Mich2026/master_flat_draco2_26_11_20_C.fits'),
    ('draco2','V','2026-11-20','flats_Mich2026/master_flat_draco2_26_11_20_V.fits'),
    ('draco2','r','2026-11-20','flats_Mich2026/master_flat_draco2_26_11_20_r.fits'),

    # east-14
    ('east-14','B','2018-10-22','flats_Mich2018/east-14/b/master_flat.fits'),
    ('east-14','C','2018-10-22','flats_Mich2018/east-14/c/master_flat.fits'),
    ('east-14','R','2018-10-22','flats_Mich2018/east-14/r/master_flat.fits'),
    ('east-14','V','2018-10-22','flats_Mich2018/east-14/v/master_flat.fits'),
    ('east-14','B','2019-01-17','flats_Eph2019/East14/b/master_flat.fits'),
    ('east-14','C','2019-01-17','flats_Eph2019/East14/c/master_flat.fits'),
    ('east-14','R','2019-01-17','flats_Eph2019/East14/r/master_flat.fits'),
    ('east-14','V','2019-01-17','flats_Eph2019/East14/v/master_flat.fits'),
    ('east-14','B','2019-10-31','flats_Mich2019/east-14/QSI/B/master_flat.fits'),
    ('east-14','C','2019-10-31','flats_Mich2019/east-14/QSI/C/master_flat.fits'),
    ('east-14','R','2019-10-31','flats_Mich2019/east-14/QSI/R/master_flat.fits'),
    ('east-14','V','2019-10-31','flats_Mich2019/east-14/QSI/V/master_flat.fits'),
    ('east-14','B','2019-11-29','flats_Mich2019/east-14/MI/B/master_flat.fits'),
    ('east-14','C','2019-11-29','flats_Mich2019/east-14/MI/C/master_flat.fits'),
    ('east-14','V','2019-11-29','flats_Mich2019/east-14/MI/V/master_flat.fits'),
    ('east-14','g','2019-11-29','flats_Mich2019/east-14/MI/g/master_flat.fits'),
    ('east-14','r','2019-11-29','flats_Mich2019/east-14/MI/r/master_flat.fits'),
    ('east-14','B','2020-10-30','flats_Mich2020/east-14/B/master_flat_east-14_20_10_30_B.fits'),   # from file name
    ('east-14','C','2020-10-30','flats_Mich2020/east-14/C/master_flat_east-14_20_10_30_C.fits'),   # from file name
    ('east-14','V','2020-10-30','flats_Mich2020/east-14/V/master_flat_east-14_20_10_30_V.fits'),   # from file name
    ('east-14','g','2020-10-30','flats_Mich2020/east-14/g/master_flat_east-14_20_10_30_g.fits'),   # from file name
    ('east-14','r','2020-10-30','flats_Mich2020/east-14/R/master_flat_east-14_20_10_30_r.fits'),   # from file name
    ('east-14','r','2022-01-07','flats_Eph2022/east-14/r/master_flat_east-14_22_01_07_r.fits'),
    ('east-14','B','2022-01-13','flats_Eph2022/east-14/B/master_flat_east-14_22_01_13_B.fits'),
    ('east-14','V','2022-01-13','flats_Eph2022/east-14/V/master_flat_east-14_22_01_13_V.fits'),
    ('east-14','g','2022-01-13','flats_Eph2022/east-14/g/master_flat_east-14_22_01_13_g.fits'),
    ('east-14','r','2022-01-13','flats_Eph2022/east-14/r/master_flat_east-14_22_01_13_r.fits'),

    # east-16
    ('east-16','B','2022-10-22','flats_Mich2022/east-16/master_flat_east-16_22_10_22_B.fits'),
    ('east-16','C','2022-10-22','flats_Mich2022/east-16/master_flat_east-16_22_10_22_C.fits'),
    ('east-16','V','2022-10-22','flats_Mich2022/east-16/master_flat_east-16_22_10_22_V.fits'),
    ('east-16','r','2022-10-22','flats_Mich2022/east-16/master_flat_east-16_22_10_22_r.fits'),
    ('east-16','B','2023-01-18','flats_Eph2023/East-16/B/master_flat_east-16_23_01_18_B.fits'),
    ('east-16','C','2023-01-18','flats_Eph2023/East-16/C/master_flat_east-16_23_01_18_C.fits'),
    ('east-16','V','2023-01-18','flats_Eph2023/East-16/V/master_flat_east-16_23_01_18_V.fits'),
    ('east-16','g','2023-01-18','flats_Eph2023/East-16/g/master_flat_east-16_23_01_18_g.fits'),
    ('east-16','r','2023-01-18','flats_Eph2023/East-16/R/master_flat_east-16_23_01_18_r.fits'),
    ('east-16','B','2024-01-18','flats_Eph2024/east-16/b/master_flat_east-16_24_01_18_B.fits'),
    ('east-16','C','2024-01-18','flats_Eph2024/east-16/c/master_flat_east-16_24_01_18_C.fits'),
    ('east-16','V','2024-01-18','flats_Eph2024/east-16/v/master_flat_east-16_24_01_18_V.fits'),
    ('east-16','g','2024-01-18','flats_Eph2024/east-16/g/master_flat_east-16_24_01_18_g.fits'),
    ('east-16','r','2024-01-18','flats_Eph2024/east-16/r/master_flat_east-16_24_01_18_r.fits'),
    ('east-16','B','2024-10-19','flats_Mich2024/master_flat_east-16_24_10_19_B.fits'),   # from file name
    ('east-16','C','2024-10-19','flats_Mich2024/master_flat_east-16_24_10_19_C.fits'),   # from file name
    ('east-16','V','2024-10-19','flats_Mich2024/master_flat_east-16_24_10_19_V.fits'),   # from file name
    ('east-16','g','2024-10-19','flats_Mich2024/master_flat_east-16_24_10_19_g.fits'),   # from file name
    ('east-16','r','2024-10-19','flats_Mich2024/master_flat_east-16_24_10_19_r.fits'),   # from file name
    ('east-16','B','2025-01-25','flats_Eph2025/east-16/b/master_flat_east-16_25_01_25_B.fits'),
    ('east-16','C','2025-01-25','flats_Eph2025/east-16/c/master_flat_east-16_25_01_25_C.fits'),
    ('east-16','V','2025-01-25','flats_Eph2025/east-16/v/master_flat_east-16_25_01_25_V.fits'),
    ('east-16','r','2025-01-30','flats_Eph2025/east-16/r/master_flat_east-16_25_01_30_r.fits'),
    ('east-16','B','2025-10-13','flats_Mich2025/master_flat_east-16_25_10_13_B.fits'),   # from file name
    ('east-16','C','2025-10-13','flats_Mich2025/master_flat_east-16_25_10_13_C.fits'),   # from file name
    ('east-16','V','2025-10-13','flats_Mich2025/master_flat_east-16_25_10_13_V.fits'),   # from file name
    ('east-16','B','2026-02-24','flats_Eph2026/east-16_26_02_24_B_master_flat.fits'),
    ('east-16','C','2026-02-24','flats_Eph2026/east-16_26_02_24_C_master_flat.fits'),
    ('east-16','V','2026-02-24','flats_Eph2026/east-16_26_02_24_V_master_flat.fits'),
    ('east-16','r','2026-02-24','flats_Eph2026/east-16_26_02_24_R_master_flat.fits'),
    ('east-16','B','2026-10-07','flats_Mich2026/master_flat_east-16_26_10_07_B.fits'),
    ('east-16','C','2026-10-07','flats_Mich2026/master_flat_east-16_26_10_07_C.fits'),
    ('east-16','V','2026-10-09','flats_Mich2026/master_flat_east-16_26_10_09_V.fits'),
    ('east-16','r','2026-10-09','flats_Mich2026/master_flat_east-16_26_10_09_r.fits'),

    # far-east-16
    ('far-east-16','B','2018-10-17','flats_Mich2018/FE16/b/master_flat.fits'),
    ('far-east-16','C','2018-10-17','flats_Mich2018/FE16/c/master_flat.fits'),
    ('far-east-16','V','2018-10-17','flats_Mich2018/FE16/v/master_flat.fits'),
    ('far-east-16','r','2018-10-17','flats_Mich2018/FE16/r/master_flat.fits'),
    ('far-east-16','B','2019-01-30','flats_Eph2019/FarEast16/b/master_flat.fits'),
    ('far-east-16','C','2019-01-30','flats_Eph2019/FarEast16/c/master_flat.fits'),
    ('far-east-16','V','2019-01-30','flats_Eph2019/FarEast16/v/master_flat.fits'),
    ('far-east-16','r','2019-01-30','flats_Eph2019/FarEast16/r/master_flat.fits'),
    ('far-east-16','B','2019-10-16','flats_Mich2019/FE16_12inch/B/master_flat.fits'),
    ('far-east-16','C','2019-10-21','flats_Mich2019/FE16_12inch/C/master_flat.fits'),
    ('far-east-16','r','2019-10-21','flats_Mich2019/FE16_12inch/R/master_flat.fits'),
    ('far-east-16','B','2020-10-15','flats_Mich2020/far-east-16/B/master_flat_far-east-16_20_10_15_B.fits'),   # from file name
    ('far-east-16','C','2020-10-15','flats_Mich2020/far-east-16/C/master_flat_far-east-16_20_10_15_C.fits'),   # from file name
    ('far-east-16','V','2020-10-15','flats_Mich2020/far-east-16/V/master_flat_far-east-16_20_10_15_V.fits'),   # from file name
    ('far-east-16','r','2020-10-15','flats_Mich2020/far-east-16/R/master_flat_far-east-16_20_10_15_r.fits'),   # from file name
    ('far-east-16','B','2020-11-04','flats_Mich2020/far-east-16/Nov04/B/master_flat_far-east-16_20_11_04_B.fits'),   # from file name
    ('far-east-16','C','2020-11-04','flats_Mich2020/far-east-16/Nov04/C/master_flat_far-east-16_20_11_04_C.fits'),   # from file name
    ('far-east-16','V','2020-11-04','flats_Mich2020/far-east-16/Nov04/V/master_flat_far-east-16_20_11_04_V.fits'),   # from file name
    ('far-east-16','r','2020-11-04','flats_Mich2020/far-east-16/Nov04/R/master_flat_far-east-16_20_11_04_r.fits'),   # from file name
    ('far-east-16','B','2021-01-23','flats_Mich2021/Jan/far-east-16/B/master_flat_far-east-16_21_01_23_B.fits'),
    ('far-east-16','C','2021-01-23','flats_Mich2021/Jan/far-east-16/C/master_flat_far-east-16_21_01_23_C.fits'),
    ('far-east-16','V','2021-01-23','flats_Mich2021/Jan/far-east-16/V/master_flat_far-east-16_21_01_23_V.fits'),
    ('far-east-16','r','2021-01-23','flats_Mich2021/Jan/far-east-16/R/master_flat_far-east-16_21_01_23_r.fits'),

    # far-east-20
    ('far-east-20','B','2022-01-05','flats_Eph2022/far-east-20/B/master_flat_far-east-20_22_01_05_B.fits'),
    ('far-east-20','C','2022-01-05','flats_Eph2022/far-east-20/C/master_flat_far-east-20_22_01_05_C.fits'),
    ('far-east-20','V','2022-01-05','flats_Eph2022/far-east-20/R/master_flat_far-east-20_22_01_05_V.fits'),
    ('far-east-20','B','2022-10-22','flats_Mich2022/far-east-20/master_flat_far-east-20_22_10_22_B.fits'),
    ('far-east-20','C','2022-10-22','flats_Mich2022/far-east-20/master_flat_far-east-20_22_10_22_C.fits'),
    ('far-east-20','V','2022-10-22','flats_Mich2022/far-east-20/master_flat_far-east-20_22_10_22_V.fits'),
    ('far-east-20','B','2024-01-30','flats_Eph2024/far-east20/b/master_flat_far-east-20_24_01_30_B.fits'),
    ('far-east-20','C','2024-01-30','flats_Eph2024/far-east20/c/master_flat_far-east-20_24_01_30_C.fits'),
    ('far-east-20','I','2024-01-30','flats_Eph2024/far-east20/i/master_flat_far-east-20_24_01_30_I.fits'),
    ('far-east-20','R','2024-01-30','flats_Eph2024/far-east20/r/master_flat_far-east-20_24_01_30_R.fits'),
    ('far-east-20','V','2024-01-30','flats_Eph2024/far-east20/v/master_flat_far-east-20_24_01_30_V.fits'),
    ('far-east-20','B','2025-02-05','flats_Eph2025/far-east20/b/master_flat_far-east-20_25_02_05_B.fits'),
    ('far-east-20','C','2025-02-05','flats_Eph2025/far-east20/c/master_flat_far-east-20_25_02_05_C.fits'),
    ('far-east-20','I','2025-02-05','flats_Eph2025/far-east20/i/master_flat_far-east-20_25_02_05_I.fits'),
    ('far-east-20','R','2025-02-05','flats_Eph2025/far-east20/r/master_flat_far-east-20_25_02_05_R.fits'),
    ('far-east-20','V','2025-02-05','flats_Eph2025/far-east20/v/master_flat_far-east-20_25_02_05_V.fits'),
    ('far-east-20','C','2026-10-16','flats_Mich2026/master_flat_far-east-20_26_10_16_C.fits'),
    ('far-east-20','V','2026-10-16','flats_Mich2026/master_flat_far-east-20_26_10_16_V.fits'),
    ('far-east-20','B','2026-11-21','flats_Mich2026/master_flat_far-east-20_26_11_21_B.fits'),
    ('far-east-20','C','2026-11-21','flats_Mich2026/master_flat_far-east-20_26_11_21_C.fits'),
    ('far-east-20','I','2026-11-21','flats_Mich2026/master_flat_far-east-20_26_11_21_I.fits'),
    ('far-east-20','V','2026-11-21','flats_Mich2026/master_flat_far-east-20_26_11_21_V.fits'),

    # west-14
    ('west-14','B','2018-10-29','flats_Mich2018/west-14/b/master_flat.fits'),
    ('west-14','C','2018-10-29','flats_Mich2018/west-14/c/master_flat.fits'),
    ('west-14','R','2018-10-29','flats_Mich2018/west-14/r/master_flat.fits'),
    ('west-14','V','2018-10-29','flats_Mich2018/west-14/v/master_flat.fits'),
    ('west-14','B','2019-01-17','flats_Eph2019/West14/b/master_flat.fits'),
    ('west-14','C','2019-01-17','flats_Eph2019/West14/c/master_flat.fits'),
    ('west-14','R','2019-01-17','flats_Eph2019/West14/r/master_flat.fits'),
    ('west-14','V','2019-01-17','flats_Eph2019/West14/v/master_flat.fits'),
    ('west-14','B','2019-10-31','flats_Mich2019/west-14/B/master_flat.fits'),
    ('west-14','C','2019-10-31','flats_Mich2019/west-14/C/master_flat.fits'),
    ('west-14','R','2019-10-31','flats_Mich2019/west-14/R/master_flat.fits'),
    ('west-14','V','2019-10-31','flats_Mich2019/west-14/V/master_flat.fits'),
    ('west-14','B','2020-10-30','flats_Mich2020/west-14/B/master_flat_west-14_20_10_30_B.fits'),   # from file name
    ('west-14','C','2020-10-30','flats_Mich2020/west-14/C/master_flat_west-14_20_10_30_C.fits'),   # from file name
    ('west-14','R','2020-10-30','flats_Mich2020/west-14/R/master_flat_west-14_20_10_30_R.fits'),   # from file name
    ('west-14','V','2020-10-30','flats_Mich2020/west-14/V/master_flat_west-14_20_10_30_V.fits'),   # from file name
    ('west-14','B','2022-01-05','flats_Eph2022/west-14/B/master_flat_west-14_22_01_05_B.fits'),
    ('west-14','C','2022-01-05','flats_Eph2022/west-14/C/master_flat_west-14_22_01_05_C.fits'),
    ('west-14','R','2022-01-05','flats_Eph2022/west-14/r/master_flat_west-14_22_01_05_R.fits'),
    ('west-14','V','2022-01-05','flats_Eph2022/west-14/V/master_flat_west-14_22_01_05_V.fits'),
    ('west-14','B','2022-10-10','flats_Mich2022/west-14/master_flat_west-14_22_10_10_B.fits'),
    ('west-14','C','2022-10-10','flats_Mich2022/west-14/master_flat_west-14_22_10_10_C.fits'),
    ('west-14','R','2022-10-10','flats_Mich2022/west-14/master_flat_west-14_22_10_10_R.fits'),
    ('west-14','V','2022-10-10','flats_Mich2022/west-14/master_flat_west-14_22_10_10_V.fits'),
    ('west-14','r','2022-10-10','flats_Mich2022/west-14/master_flat_west-14_22_10_10_r.fits'),
    ('west-14','B','2023-01-18','flats_Eph2023/West-14/B/master_flat_west-14_23_01_18_B.fits'),
    ('west-14','C','2023-01-18','flats_Eph2023/West-14/C/master_flat_west-14_23_01_18_C.fits'),
    ('west-14','R','2023-01-18','flats_Eph2023/West-14/R/master_flat_west-14_23_01_18_R.fits'),
    ('west-14','V','2023-01-18','flats_Eph2023/West-14/V/master_flat_west-14_23_01_18_V.fits'),
    ('west-14','B','2024-01-30','flats_Eph2024/west14/b/master_flat_west-14_24_01_30_B.fits'),
    ('west-14','C','2024-01-30','flats_Eph2024/west14/c/master_flat_west-14_24_01_30_C.fits'),
    ('west-14','R','2024-01-30','flats_Eph2024/west14/r/master_flat_west-14_24_01_30_R.fits'),
    ('west-14','V','2024-01-30','flats_Eph2024/west14/v/master_flat_west-14_24_01_30_V.fits'),
    ('west-14','B','2024-10-19','flats_Mich2024/master_flat_west-14_24_10_19_B.fits'),   # from file name
    ('west-14','C','2024-10-19','flats_Mich2024/master_flat_west-14_24_10_19_C.fits'),   # from file name
    ('west-14','R','2024-10-19','flats_Mich2024/master_flat_west-14_24_10_19_R.fits'),   # from file name
    ('west-14','V','2024-10-19','flats_Mich2024/master_flat_west-14_24_10_19_V.fits'),   # from file name
    ('west-14','r','2024-10-19','flats_Mich2024/master_flat_west-14_24_10_19_r.fits'),   # from file name
    ('west-14','B','2025-01-25','flats_Eph2025/west14/b/master_flat_west-14_25_01_25_B.fits'),
    ('west-14','C','2025-01-25','flats_Eph2025/west14/c/master_flat_west-14_25_01_25_C.fits'),
    ('west-14','R','2025-01-25','flats_Eph2025/west14/r/master_flat_west-14_25_01_25_R.fits'),
    ('west-14','V','2025-01-25','flats_Eph2025/west14/v/master_flat_west-14_25_01_25_V.fits'),
    ('west-14','B','2026-10-01','flats_Mich2026/master_flat_west-14_26_10_01_B.fits'),
    ('west-14','C','2026-10-01','flats_Mich2026/master_flat_west-14_26_10_01_C.fits'),
    ('west-14','R','2026-10-01','flats_Mich2026/master_flat_west-14_26_10_01_R.fits'),
    ('west-14','V','2026-10-01','flats_Mich2026/master_flat_west-14_26_10_01_V.fits'),
]

# A flat older than this is still used, but a warning is printed and the
# mosaic header gets FLATOLD = T.
MAX_FLAT_AGE_DAYS = 183    # about 6 months

##########################################

if len(sys.argv) not in (2,6,7):
    if len(sys.argv) > 1:
        print('Error: wrong number of arguments. Usage:')
    print('')
    print('     Stack data from archive or using current directory.')
    print(' ')
    print('       To stack data in current directory, use:')
    print('          > python /mnt/64bin/stackX.py PSFlimit')
    print('    e.g.  > python /mnt/64bin/stackX.py   5.0   ')
    print('    will attempt to stack all d*.fits files in current directory where PSF has FWHM<5.0"')
    print('    Note: if master_flat.fits is included in the current directory, each frame will first be flatfielded')
    print('')
    print('    To stack directly from archive:')
    print('          > python /mnt/64bin/stackX.py telescope date   start end PSFlimit')
    print('     e.g. > python /mnt/64bin/stackX.py  draco2  19_12_31  1    9    5.0')
    print('    will attempt to stack frame numbers [a]d000[1-7].fits on 19_12_31 with seeing FWHM<5.0"')
    print('    stackX3: the flat is now found automatically. An optional 6th argument overrides it:')
    print('          > python stackX3.py  pt5m  26_11_04  885643  885648  5.0  none')
    print('    stacks without a flat;  a file path as the 6th argument uses that flat.')
    print('    ')
    print(' ')
    if len(sys.argv) > 1:
        sys.exit(1)
    sys.exit()

if len(sys.argv)>=6:
    tel = sys.argv[1]
    # archive folders use hyphens (east-16), the database uses underscores (east_16)
    if '_' in tel:
        print('Telescope name '+tel+' changed to '+tel.replace('_','-'))
        tel = tel.replace('_','-')
    date = sys.argv[2]
    start = sys.argv[3]
    end = sys.argv[4]
    PSFlim = sys.argv[5]

    start = int(start)
    end = int(end)
    PSFlim = float(PSFlim)

    print(tel,date,start,end,PSFlim)

    yr = date.split('_')
    yr = '20'+yr[0]

    filepath = ARCHIVE_ROOT+'/'+str(tel)+'/'+str(yr)+'/'+str(date)+'/'
    print('filepath is: ',filepath)

    nf = end-start+1
    filenames = ["" for x in range(nf)]
    n = 0
    for i in range(start,end+1):
        filenames[n] = getname(i,filepath,tel)
        n=n+1
    
    print('files to stack:')
    print(filenames)

    # choose the flat field
    first_data,first_hdr = fits_read(filenames[0],0)
    band = str(first_hdr.get('FILTER','')).strip()
    shape = first_data.shape
    flat_age = -1
    if len(sys.argv)==7 and sys.argv[6].lower()=='none':
        flatfile = None
        flat_mode = 'none requested'
    elif len(sys.argv)==7:
        flatfile = os.path.abspath(sys.argv[6])
        flat_mode = 'given on command line'
        if not os.path.exists(flatfile):
            print('Error. flat '+flatfile+' given on the command line does not exist. aborting')
            sys.exit(1)
        problem = flat_problem(flatfile,band,shape)
        if problem != '':
            print('Warning: flat given on the command line has '+problem)
    elif tel == 'pt5m':
        flatfile,flat_age = find_pt5m_flat(date,band,shape)
        flat_mode = 'same night'
        if flatfile is not None and flat_age > 0:
            flat_mode = 'earlier night'
            print('No suitable '+band+' flat in this night\'s calibs folder.')
            print('Using flat from '+str(flat_age)+' days earlier.')
    else:
        flatfile,flat_age = find_shared_flat(tel,date,band,shape)
        flat_mode = 'most recent shared flat'
        if flatfile is not None:
            print('Using flat taken '+str(flat_age)+' days before this night.')

    if flatfile is None and flat_mode != 'none requested':
        print('Error. no suitable flat found for',tel,date,band)
        print('Give a flat path as the 6th argument, or none to stack without a flat. aborting')
        sys.exit(1)

if len(sys.argv) == 2:
    print(' ')
    print('Stacking d*.fits files in current directory')
    PSFlim = float(sys.argv[1])
    tel = ''    # empty, so the pixel scale comes from the TELESCOP header
    flatfile = os.path.abspath('master_flat.fits')
    flat_mode = 'master_flat.fits in current directory'
    flat_age = -1
    if not os.path.exists(flatfile):
        flatfile = None
        flat_mode = 'no master_flat.fits in current directory'
    filepath = './'
    filenames = subprocess.getoutput('\\ls d*.fits')
    filenames = filenames.split('\n')
    nf = len(filenames)
    if nf == 0:
        print('no files found. aborting...')
        sys.exit(1)
    print('Stacking frames in current directory ')
    print('files to stack')
    print(filenames)
    
#############################################

#start = 11 #11
#end = 19   #197 #21 #222
#filepath = '/home/astrolab/tmp/'
##filepath = '/mnt/archive/draco2/2019/19_12_31/'
#PSFlim = 5.0

##flatpath = '/Users/ams/Desktop/stack/'
#flatfile = './master_flat.fits'

##########################################

ff = 0.99

# check for flat field.
flat_exist = flatfile is not None
flat_old = flat_exist and flat_age > MAX_FLAT_AGE_DAYS
if flat_old:
    print('WARNING: the flat is '+str(flat_age)+' days older than the data (more than '+str(MAX_FLAT_AGE_DAYS)+'). Using it anyway.')
if flat_exist == True:
    print('Flatfield found: '+flatfile)
    print('Flat chosen by: '+flat_mode)
    flat,fhdr = fits_read(flatfile,0)
    flat = nan2d(flat,1)
    szf = flat.shape
if flat_exist == False:
    print('No flatfield found.  Will not flatfield ('+flat_mode+')')

#nint = end-start+1
frame_num = np.arange(nf)
xoff = np.zeros(nf) # to store x offsets
yoff = np.zeros(nf) # to store y offsets
sig_xoff = np.zeros(nf) # to store x offsets
sig_yoff = np.zeros(nf) # to store y offsets
bg = np.zeros(nf) # to store background (median) values for each frame
matched = np.zeros(nf) # boolean 1 or 0 as to whether frame is matched
PSF = np.zeros(nf) # array to store PSF
PSF_FAILED = 99.   # seeing given to frames whose PSF could not be measured
skipped = []       # frames left out of the mosaic, with the reason
n_wcs_warn = 0     # frames whose measured offset disagrees with the WCS

file1 = filenames[0] #getname(start,filepath)
img1,hdr1 = fits_read(file1,0)
sz = img1.shape
cube = np.zeros((sz[0],sz[1],nf)) # cube to hold data

log = ''
#header = '    source        target        Pscale      A   xoff   yoff  errx(x) err(y) FWHM'
#header2 = '                                                                                         "/pix           (pix)  (pix) (pix)   (pix)  (")'
header = '    source        target        Pscale      A   xoff   yoff'
print(header)
#print(header2)
#log = log+header+header2
log = log+header

fig = plt.figure(figsize=(6,6))
c = 0
for i in range(0,nf):   #start,end+1):
    
    plt.clf()

    file1 = filenames[0]  #getname(start,filepath)
    file2 = filenames[i]  #getname(i,filepath)

    #file1 = filepath+file1
    #file2 = filepath+file2
    
    # read images
    img1,hdr1 = fits_read(file1,0)
    img2,hdr2 = fits_read(file2,0)

    if flat_exist == True:
        # check flat field is correct shape
        sz = img1.shape
        #print(sz[1],sz[0],szf[1],szf[0])
        if (sz[1]!=szf[1]) or (sz[0]!=szf[0]):
            print('flat field and data do not have same dimensions. aborting.')
            sys.exit(1)

        # divide by flatfields
        img1 = img1 / flat
        img2 = img2 / flat

    # get background and subtract from images
    bg_med1 = np.median(img1)
    bg_med2 = np.median(img2)
    img1 = img1 - bg_med1
    img2 = img2 - bg_med2

    # correlate target and source files
    source = img1  # master image
    target = img2
    #transf, (source_list, target_list) = aa.find_transform(source, target)  ### old from stackX
    this_xoff,this_yoff = measure_shift(target,source)
    expected = wcs_shift(file1,hdr1,file2,hdr2,target.shape)
    #xoff,yoff,ex,ey = image_registration.chi2_shift(im1,im2)

    # get pixel scale
    # stackX2 passed hdr1 here. When the first frame had no astrometry but this
    # frame did, the pixel scale came out wrong and getPSF crashed.
    spix = getscale(file2,hdr2,tel)

    # find stars and measure PSF
    mean, median, std = sigma_clipped_stats(target, sigma=3.0)
    daofind = DAOStarFinder(fwhm=3.0, threshold=10.*std)
    #print(daofind)
    #sys.exit()
    #sys.exit()
    sources = daofind(target)
    #print(sources)
    if sources is None:
        print('error: no sources found')
        # stackX2 left this frame with seeing 0, so it was counted as a good frame
        PSF[c] = PSF_FAILED
        skipped.append(os.path.basename(file2)+' no stars found')
    if sources is not None:
        print('stars found')

        xc = sources['xcentroid']
        yc = sources['ycentroid']
        #print('there are ',len(xc),' stars detected')
        # get seeing in target image. If the PSF cannot be measured, leave the
        # frame out instead of crashing (stackX2 crashed here with IndexError).
        try:
            seeing_asec = getPSF(img2,spix,xc,yc)
        except Exception as err:
            print('       ',file2,'PSF could not be measured ('+type(err).__name__+'), frame left out')
            PSF[c] = PSF_FAILED
            skipped.append(os.path.basename(file2)+' PSF not measured')
            c = c+1
            continue

        print('      ',file2,int(np.round(this_xoff)),int(np.round(this_yoff)),seeing_asec)
        if expected is not None:
            print('         WCS predicts offset %.1f %.1f' % expected)
            miss = ((this_xoff-expected[0])**2+(this_yoff-expected[1])**2)**0.5
            if miss > 3:
                print('         WARNING: measured offset differs from WCS by %.1f pixels' % miss)
                n_wcs_warn = n_wcs_warn+1
        if seeing_asec > PSFlim:
            skipped.append(os.path.basename(file2)+' seeing %.2f" above limit' % seeing_asec)

        # store output
        cube[:,:,c] = target
        xoff[c] = this_xoff
        yoff[c] = this_yoff
        #sig_xoff[c] = std_xoff
        #sig_yoff[c] = std_yoff
        bg[c] = bg_med2
        #matched[c] = 1
        PSF[c] = seeing_asec

    c = c+1

# keep copy of arrays
xoff_copy = xoff.copy().astype(float)
yoff_copy = yoff.copy().astype(float)
#sig_xoff_copy = sig_xoff.copy()
#sig_yoff_copy = sig_yoff.copy()

# convert offsets to integer
xoff = np.round(xoff)
xoff = xoff.astype(int)
yoff = np.round(yoff)
yoff = yoff.astype(int)

# find maximum offset in x/y
maxx = np.max(xoff)-np.min(xoff)
maxy = np.max(yoff)-np.min(yoff)
#print(maxx,maxy)

xoff = xoff - np.min(xoff)
yoff = yoff - np.min(yoff)

# create new cube to store images with offsets applied.  also create mosaic array
sz = img1.shape
mosaic_cube = np.zeros((sz[0]+maxy,sz[1]+maxx,c))
mosaic = np.zeros((sz[0],sz[1]))

# apply offsets to each slice of cube
ng = 0
for k in range(0,c):
    if PSF[k] <= PSFlim: # and matched[k] == 1:
        mosaic_cube[0+yoff[k]:sz[0]+yoff[k],0+xoff[k]:sz[1]+xoff[k],k] = cube[:,:,k]
        ng = ng+1

if ng == 0:
    print('not enough good frames with seeing <'+str(PSFlim)+'"')
    print('aborting')
    sys.exit(1)

print('there are '+str(ng)+' images with seeing <'+str(PSFlim)+'" to mosaic')

#gd = np.where(matched == 1)
#PSF = PSF[gd]
#frame_num = frame_num[gd]
#xoff_copy = xoff_copy[gd]
#yoff_copy = yoff_copy[gd]
##sig_xoff_copy = sig_xoff_copy[gd]
##sig_yoff_copy = sig_yoff_copy[gd]
#bg = bg[gd]

# set any zeros to NaN
bad = np.where(mosaic_cube == 0)
if len(bad[0])>=1:
    mosaic_cube[bad]=np.nan

# create sigma clipped cube
print('creating mosaic...')
##mosaic = sigma_clip(mosaic_cube,axis=2)
# average remaining values
#mosaic = np.nanmedian(mosaic_cube,axis=2)
mosaic = np.nanmedian(mosaic_cube,axis=2)
# extract data
##mosaic = mosaic.data
print('done')

# add median background back on to image (to approximately preserve sky statistics)
med_bg = np.median(bg)
mosaic = mosaic + med_bg

# (attempt to) preserve astrometry.  would be better to re-derive
# after mosaic constructed, but this should maintain the solution to
# within 1 pixel
if 'crpix1' in hdr1:
    crpix1 = hdr1['CRPIX1'] + xoff[0]
    crpix2 = hdr1['CRPIX2'] + yoff[0]
    hdr1['CRPIX1'] = crpix1
    hdr1['CRPIX2'] = crpix2

# record how the mosaic was made
hdr1['STACKPRG'] = ('stackX3.py','program that made this mosaic')
hdr1['ALIGNMTH'] = ('xcorr of 3x3 median-filtered copies','how offsets were measured')
if flat_exist == True:
    hdr1['FLATFILE'] = flatfile
else:
    hdr1['FLATFILE'] = 'none'
hdr1['FLATMODE'] = (flat_mode,'how the flat was chosen')
hdr1['FLATAGE'] = (flat_age,'days between flat and data, -1 if unknown')
hdr1['FLATOLD'] = (bool(flat_old),'flat older than '+str(MAX_FLAT_AGE_DAYS)+' days')
hdr1['NFRAMES'] = (ng,'frames used in the mosaic')
hdr1['NSKIPPED'] = (len(skipped),'frames left out, see HISTORY')
hdr1['NWCSWARN'] = (n_wcs_warn,'frames whose offset disagreed with WCS by >3 pix')
for reason in skipped:
    hdr1['HISTORY'] = 'stackX3 left out '+reason

# stackX2 also wrote copies to ~/tmp, which made jobs running at the same
# time overwrite each other. Everything now stays in the current directory.
tmpdir = './'
writefits('mosaic.fits',mosaic,hdr1)

print('mosaic.fits written to disk as '+os.getcwd()+'/mosaic.fits')

# The diagnostic plots sometimes crash (getrange can return limits the wrong
# way round). mosaic.fits is already written, so carry on to astrometry
# instead of stopping, as stackX2 did.
plots_ok = True
try:
    fig = plt.figure(figsize=(6,6))
    # show mosaic
    plt.subplot(2,2,3)
    #vmax = getstats(mosaic)
    crange = getrange(mosaic,0.99)
    #print(crange)
    #img = plt.imshow(mosaic,vmin=np.median(mosaic),vmax=vmax,cmap='gray_r',origin='lower')
    img = plt.imshow(mosaic,vmin=crange[0],vmax=crange[1],cmap='gray_r',origin='lower')
    sz = mosaic.shape
    plt.title('mosaic',color='red',size=10)

    #print('000')

    # plot PSF distribution and show PSF limit used to reject images
    plt.subplot(2,2,4)
    h,bins = np.histogram(PSF,bins=15,range=(0,15))
    #print(h)
    #print(bins)
    plt.plot(bins[1:len(bins-1)],h,drawstyle='steps',color='red')
    plt.plot([PSFlim,PSFlim],[-0.5,max(h)+1],linestyle='--',color='black')
    plt.ylim(-0.5,max(h)+1)
    plt.xlim(0,15)
    plt.xlabel('Seeing(")')

    #print('111')
    #plt.show(block=False)
    #print('aaa')
    #plt.savefig('/tmp/img_mosaic.png')
    plt.savefig(tmpdir+'img_mosaic.png')
    plt.clf()
    plt.close('all')
    #print('bbb')
    #plt.pause(0.5)
    #print('222')

    bad = np.where(PSF >= PSFlim)
    # figure to show x/y offsets
    plt.figure(figsize=(3,6))
    plt.subplot(2,1,1)
    plt.plot(spix*xoff_copy,spix*yoff_copy,color='red')
    #print('333')
    plt.scatter(spix*xoff_copy,spix*yoff_copy,s=10,color='red',label='Good PSF')
    #plt.errorbar(spix*xoff_copy,spix*yoff_copy,spix*sig_yoff_copy,spix*sig_xoff_copy,color='red',ls='none')
    plt.xlim(np.min([spix*xoff_copy,spix*yoff_copy])-1,np.max([spix*xoff_copy,spix*yoff_copy])+1)
    plt.ylim(np.min([spix*xoff_copy,spix*yoff_copy])-1,np.max([spix*xoff_copy,spix*yoff_copy])+1)
    plt.xlabel('x offset (")')
    plt.ylabel('y offset (")')
    #print('444')
    if len(bad[0])>=1:
        plt.scatter(spix*xoff_copy[bad],spix*yoff_copy[bad],s=10,color='blue',label='PSF limit exceeded')
    #    #plt.errorbar(spix*xoff_copy[bad],spix*yoff_copy[bad],spix*sig_yoff_copy[bad],spix*sig_xoff_copy[bad],color='blue',ls='none')
    plt.legend()
    #print('444')

    # plot background level for each frame and show median background added back to mosaic
    plt.subplot(2,1,2)
    plt.plot(frame_num,bg,color='red')
    #print('555')
    plt.scatter(frame_num,bg,s=10,color='red')
    plt.plot([0,10000],[med_bg,med_bg],color='blue',linestyle='--')
    plt.xlim(np.min(frame_num),np.max(frame_num))
    plt.ylim(0,1.1*np.max(bg))
    plt.xlabel('frame number')
    plt.ylabel('sky background [ADU]')
    print('666')
    if len(bad[0])>=1:
        plt.scatter(frame_num[bad],bg[bad],s=10,color='blue')


    #print('777')
    plt.tight_layout()
    #plt.savefig('/tmp/img_mosaic_inprops.png')
    plt.savefig(tmpdir+'img_mosaic_inprops.png')
    plt.clf()
    plt.close('all')
except Exception as err:
    plots_ok = False
    plt.close('all')
    print('WARNING: diagnostic plots failed ('+str(err)+'). Continuing without them.')

#print('888')
subprocess.call('touch '+tmpdir+'mosaic_done',shell=True)

if plots_ok:
    print('   diagnostic plots written to:')
    print('            '+tmpdir+'img_mosaic_inprops.png')
    print('   and')
    print('           '+tmpdir+'img_mosaic.png')


#plt.show(block=False)
#plt.clf()
#plt.close('all')

subprocess.call([sys.executable,AREFCAT,'mosaic.fits'])

# arefcat does not always report failure in its exit status, so check that it
# wrote a new amosaic.fits. An older amosaic.fits from an earlier run does not count.
if not os.path.exists('amosaic.fits') or os.path.getmtime('amosaic.fits') < os.path.getmtime('mosaic.fits'):
    print('Error. astrometry failed: no new amosaic.fits was written')
    sys.exit(1)
print('astrometry done: amosaic.fits written')
