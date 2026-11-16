def fits_read(file,i):
    hdu = fits.open(file)
    data = hdu[i].data
    hdr = hdu[i].header
    return data,hdr

# -------------------------------------------------------------------------------------------------------------



def checkfile(file,hdr):

    # check filter of file.  In none of BVgRi, abort
    filter = hdr["FILTER"]
    if not filter in ["B", "V", "g", "R", "I", "r", "i" ]:
        print("Imager:"+str(file))
        print("Filter:"+str(filter))
        print("Currently only supports B, V, R, I, r, i bands.  Aborting.")
        sys.exit()

    print("Filter: "+filter)

    # check for astrometry (search for N_ASTARS header keyword).  If none exist, abort.
    ast = 'N_ASTARS' in hdr
    if ast == False:
        print("No astrometry on image: "+file+"   Aborting")
        sys.exit()
    return

# --------------------------------------------------------------------------------------------------------------

from astropy.io import fits
import numpy as np
import sys,os 
import zeropoint

#######################

file = sys.argv[1]

flatfile = 'master_flat.fits'

# check for flatfield
flat_exist = os.path.isfile(flatfile)
if flat_exist == 1:
    flat,flathdr = fits_read(flatfile,0)

img,hdr = fits_read(file,0)
checkfile(file,hdr)

# check if file is a mosaic.
file_is_mosaic = "mosaic" in file
if file_is_mosaic==False:

    #divide by flat
    if flat_exist == 1:
        img = img/flat
        print('Flatfield found. Diving by flatfield')
    if flat_exist == 0:
        print('No flat found.  Will not flatfield')

if file_is_mosaic==True:
    print("Filename contains 'mosaic'.  Will not flatfield. ")

Zpt_mean,Zpt_median,Zpt_mean_weighted,Zpt_std,Zpt_zpt_err = zeropoint.zeropoint(img,hdr)

zpts = open('zpts.log','a')
out_word = file+' '+str("{:.3f}".format(Zpt_mean))+'  '+str("{:.3f}".format(Zpt_median))+'   '+\
    str("{:.3f}".format(Zpt_mean_weighted))+\
    '         '+str("{:.3f}".format(Zpt_std))+'  '+str("{:.3f}".format(Zpt_zpt_err))+'\n'
zpts.write(out_word)
zpts.close()
