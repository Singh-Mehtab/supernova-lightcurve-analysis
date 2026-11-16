#!/usr/bin/env python3

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
                sys.exit()

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
                sys.exit()
    return file

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
from astropy.stats import sigma_clipped_stats
from astropy import wcs
import os

##########################################

if len(sys.argv)==1:
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
    print('    Note: if master_flat.fits is included in current directory, each frame will be flatfielded')
    print('    ')
    print(' ')
    sys.exit()

if len(sys.argv)>=6:
    tel = sys.argv[1]
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

    filepath = '/mnt/archive/'+str(tel)+'/'+str(yr)+'/'+str(date)+'/'
    print('filepath is: ',filepath)

    flatpath = './'
    flatfile = 'master_flat.fits'

    nf = end-start+1
    filenames = ["" for x in range(nf)]
    n = 0
    for i in range(start,end+1):
        filenames[n] = getname(i,filepath,tel)
        n=n+1
    
    print('files to stack:')
    print(filenames)

# a flat field can be specified on the command line [only currently used in Tk call]
if len(sys.argv)==7:
    flatfile = sys.argv[6]

if len(sys.argv) == 2:
    print(' ')
    print('Stacking d*.fits files in current directory')
    PSFlim = float(sys.argv[1])
    flatpath = './'
    flatfile = 'master_flat.fits'
    filepath = './'
    filenames = subprocess.getoutput('\\ls d*.fits')
    filenames = filenames.split('\n')
    nf = len(filenames)
    if nf == 0:
        print('no files found. aborting...')
        sys.exit()
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
flat_exist = os.path.exists(flatfile)
if flat_exist == True:
    print('Flatfield found: '+flatfile)
    flat,fhdr = fits_read(flatfile,0)
    flat = nan2d(flat,1)
    szf = flat.shape
if flat_exist == False:
    print('No flatfield found.  Will not flatfield')

#nint = end-start+1
frame_num = np.arange(nf)
xoff = np.zeros(nf) # to store x offsets
yoff = np.zeros(nf) # to store y offsets
sig_xoff = np.zeros(nf) # to store x offsets
sig_yoff = np.zeros(nf) # to store y offsets
bg = np.zeros(nf) # to store background (median) values for each frame
matched = np.zeros(nf) # boolean 1 or 0 as to whether frame is matched
PSF = np.zeros(nf) # array to store PSF

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
            sys.exit()

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
    this_xoff,this_yoff = image_registration.cross_correlation_shifts(target,source)#,target)
    #xoff,yoff,ex,ey = image_registration.chi2_shift(im1,im2)

    # get pixel scale
    spix = getscale(file2,hdr1,tel)

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
    if sources is not None:
        print('stars found')

        xc = sources['xcentroid']
        yc = sources['ycentroid']
        #print('there are ',len(xc),' stars detected')
        # get seeing in target image
        seeing_asec = getPSF(img2,spix,xc,yc)

        print('      ',file2,int(this_xoff+0.5),int(this_yoff+0.5),seeing_asec)

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
    sys.exit()

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

homedir = os.path.expanduser('~')
tmpdir = homedir+'/tmp/'
command = 'mkdir '+tmpdir
if not os.path.exists(tmpdir):
    print('making directory')
    os.makedirs(tmpdir)
    time.sleep(0.1)
#subprocess.run(command,shell=True)
writefits(tmpdir+'mosaic.fits',mosaic,hdr1)
time.sleep(0.1)
writefits('mosaic.fits',mosaic,hdr1)

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

print('mosaic.fits written to disk as '+tmpdir+'/mosaic.fits')

#print('777')
plt.tight_layout()
#plt.savefig('/tmp/img_mosaic_inprops.png')
plt.savefig(tmpdir+'img_mosaic_inprops.png')
plt.clf()
plt.close('all')

#print('888')
subprocess.call('touch '+tmpdir+'mosaic_done',shell=True)

print('   diagnostic plots written to:')
print('            '+tmpdir+'img_mosaic_inprops.png')
print('   and')
print('           '+tmpdir+'img_mosaic.png')


#plt.show(block=False)
#plt.clf()
#plt.close('all')

subprocess.call('python /mnt/64bin/auto_astrom/arefcat.py mosaic.fits',shell=True)
subprocess.call('\\cp amosaic.fits '+tmpdir+'amosaic.fits',shell=True)
time.sleep(2)
