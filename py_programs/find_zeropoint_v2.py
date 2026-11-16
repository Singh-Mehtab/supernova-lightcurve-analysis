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
from zeropoint_v2 import zeropoint
import matplotlib.pyplot as plt
import subprocess

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

Zpt_mean,Zpt_median,Zpt_mean_weighted,Zpt_std,Zpt_zpt_err,Zpt,mag_cat,cts_src,mag_all,cts_all = zeropoint(img,hdr)

zpts = open('zpts.log','a')
out_word = file+' '+str("{:.3f}".format(Zpt_mean))+'  '+str("{:.3f}".format(Zpt_median))+'   '+\
    str("{:.3f}".format(Zpt_mean_weighted))+\
    '         '+str("{:.3f}".format(Zpt_std))+'  '+str("{:.3f}".format(Zpt_zpt_err))+'\n'
zpts.write(out_word)
zpts.close()

homedir = os.path.expanduser('~')
tmpdir = homedir+'/tmp/'
command = 'mkdir '+tmpdir
if not os.path.exists(tmpdir):
    subprocess.run(command,shell=True)

a = open(tmpdir+'zpts.log','w')
a.write(str("{:.3f}".format(Zpt_mean))+'\n')
a.write(str("{:.3f}".format(Zpt_median))+'\n')
a.write(str("{:.3f}".format(Zpt_mean_weighted))+'\n')
a.write(str("{:.3f}".format(Zpt_std))+'\n')
a.write(str("{:.3f}".format(Zpt_zpt_err))+'\n')
a.close()


#####################################
#--- Plotting zero-point distribution
#####################################
fig = plt.figure(figsize=(10, 5))
grd = plt.GridSpec(1, 2, wspace=0.1)

hax = fig.add_subplot(grd[:, 0]) #histogram axis
cax = fig.add_subplot(grd[:, 1]) #Catalogue axis

#Plotting histogram
nbins = int(np.ceil(len(Zpt)/3))
hax.hist(Zpt, bins=nbins, color='orange')

hax.axvline(Zpt_mean, ls='-.', color='blue', label='zpt_mean')
hax.axvline(Zpt_mean_weighted, ls='-.', color='green', label='zpt_mean_weighted')

hax.set_xlabel('Zero-Point mag')
hax.set_ylabel('Num sources')

#Plotting derives source magnitude VS catalogue
#mag_src = Zpt_mean - 2.5*np.log10(cts_src)
mag_src_weighted = Zpt_mean_weighted - 2.5*np.log10(cts_src)
#cax.scatter(mag_cat, mag_src, s=5, color='blue')
cax.scatter(mag_cat, mag_src_weighted, color='green', s=7,label='Good stars')
#cax.plot([0, 1], [0, 1], transform=cax.transAxes, color='k', lw=1, ls='-.')
cax.plot([9,18],[9,18],color='k',ls='-.',lw=1)
cax.yaxis.tick_right()
cax.yaxis.set_label_position('right')
cax.set_xlabel('Catalogue magnitude')
cax.set_ylabel('Derived magnitude')

            
gd=np.where(cts_all>0)
mag_src_all = Zpt_mean_weighted - 2.5*np.log10(cts_all[gd])
cax.scatter(mag_all[gd],mag_src_all,color='green',s=7,facecolors='none', edgecolors='g',label='Outside Mag or S/N bounds')

plt.legend()

#cax.xlim = (8,17)#(np.min(mag_src_weighted)-1,[np.min(mag_src_weighted)+1])
#cax.ylim = (8,17)#cax.xlim

hax.legend(frameon=False)

plt.savefig(tmpdir+'zpt_dist.png', format='png')
plt.savefig('zpt_dist.png', format='png')
#plt.show(block=False)
#plt.pause(1)
