#!/usr/bin/env python3
#
# finds an astrometric solution with Johnb Tonry's REFCAT to 17 mag only
# https://iopscience.iop.org/article/10.3847/1538-4357/aae386/meta
#
# input:
#        fits image, e.g. "d0010.fits"
#        rough (ra,dec) center of image
#
# output:
#        fits image with an astrometric solution, e.g. "ad0010.fits"
#
# method:
#
#    1 find objects in image with sextractor
#
#    2 find usnoa2 objects at the (ra,dec) with wcstools scat command
#
#    3 get default pixel scale from telescope or the file: automag_driver
#
#    4 match two object lists with Andrew Pickles' ascfit's starfit
#
#    5 use Starlink's astrom to tune-up the astrometry solution
#
#    6 copy derived fits header solution to a new file, called
#           ad{input_filename}.fits
#
import os
import sys
import socket
import time
import math
import shutil
import subprocess
import numpy as np
import astropy.io.fits as pyfits

import astropy.units as u
from astropy.coordinates import SkyCoord
from astropy.coordinates import search_around_sky

# Now uses astropy for the coordinate matching
# from esutil import htm  # use https://github.com/esheldon/esutil

# from tel_utils import *
# from tel_utils import dmsStrFromDeg
# from jrl_utils import *


def jmedian(arr):
    tarr = arr[:]
    tarr.sort()
    n = len(tarr)
    if n == 0:
        return 0.0
    if n == 1:
        return tarr[0]

    mid = int(n / 2)
    if (n % 2) == 0:
        med = (tarr[mid] + tarr[mid - 1]) / 2
    else:
        med = tarr[mid]
    return med


def robust_stddev(arr):
    n = len(arr)
    if n < 1:
        return 0.0
    tarr = arr[:]
    tarr.sort()
    q_16 = int(float(n - 1) * 0.16 + 0.5)
    q_84 = int(float(n - 1) * 0.84 + 0.5)
    return (tarr[q_84] - tarr[q_16]) / 2.0


def dmsStrFromDeg(decDeg, nFields=3, precision=1, omitExtraFields=False):
    #
    # from Russell Owen's wonderful RO Python Package
    # http://www.astro.washington.edu/owen/ROPython.html
    #
    """Convert a number to a sexagesimal string with 1-3 fields.

    Inputs:
	- decDeg: value in decimal degrees or hours
	- nFields: number of fields; <=1 for dddd.ddd,
                                       2 for dddd:mm.mmm,
                                     >=3 for dddd:mm:ss.sss
	- precision: number of digits after the decimal point in thelast field;
		if 0, no decimal point is printed; must be >= 0
	- omitExtraFields: omit fields that are zero, starting from the right

    Error conditions:
	- Raises ValueError if precision < 0
    """
    if nFields <= 1:
        return "%.*f" % (precision, decDeg)
    nFields = min(3, nFields)
    # to allow more than 3 fields, omit this statement

    if decDeg < 0:
        signStr = "-"
        decDeg = abs(decDeg)
    else:
        signStr = ""

    # compute a list of output fields; all but the last one are integer
    remVal = decDeg
    fieldList = []
    for fieldNum in range(nFields - 1):
        (intVal, remVal) = divmod(abs(remVal), 1.0)
        intVal = int(intVal)
        fieldList.append(intVal)
        remVal *= 60.0

    # compute last field as a string, but don't add to the field list
    # until we've handled fields >= 60
    if precision > 0:
        minFloatWidth = precision + 3
    elif precision == 0:
        minFloatWidth = 2
    else:
        raise ValueError("precision=%r; must be >= 0" % (precision,))
    lastFieldStr = "%0*.*f" % (minFloatWidth, precision, remVal)

    # make sure no field is >= 60 (except the first field)
    # and then convert all fields to strings
    if lastFieldStr[0] == "6":
        lastFieldStr = "0" + lastFieldStr[1:]
        incrNextField = True
    else:
        incrNextField = False
    for fieldInd in range(nFields - 2, -1, -1):
        if incrNextField:
            fieldList[fieldInd] += 1
        if fieldInd == 0:
            fieldList[fieldInd] = "%s%d" % (signStr, fieldList[fieldInd])
        else:
            if fieldList[fieldInd] >= 60:
                fieldList[fieldInd] -= 60
                incrNextField = True
            else:
                incrNextField = False
            fieldList[fieldInd] = "%02d" % fieldList[fieldInd]
    fieldList.append(lastFieldStr)

    if omitExtraFields:
        while fieldList and float(fieldList[-1]) == 0.0:
            fieldList.pop(-1)

    return ":".join(fieldList)


def sepdeg(a1, b1, a2, b2):
    const = math.pi / 180.0
    ra1 = a1 * const
    rb1 = b1 * const
    ra2 = a2 * const
    rb2 = b2 * const

    v1_1 = math.cos(ra1) * math.cos(rb1)
    v1_2 = math.sin(ra1) * math.cos(rb1)
    v1_3 = math.sin(rb1)

    v2_1 = math.cos(ra2) * math.cos(rb2)
    v2_2 = math.sin(ra2) * math.cos(rb2)
    v2_3 = math.sin(rb2)

    w = ((v1_1 - v2_1) ** 2 + (v1_2 - v2_2) ** 2 + (v1_3 - v2_3) ** 2) / 4.0

    x = math.sqrt(w)
    y = math.sqrt(max(0.0, 1.0 - w))
    angle = 2.0 * math.atan2(x, y) / const
    return angle


def get_refcat(image_epoch, ra_string, dec_string, ra_ignore, dec_ignore):
    #
    print("Looking for REFCAT stars at", ra_string, dec_string, " ", image_epoch)
    #
    global fix_me
    global scat
    global REFCAT
    
    ra_deg = []
    ra_pm = []
    dec_deg = []
    dec_pm = []
    umag = []
    if os.path.exists("refcat_stars"):
        os.unlink("refcat_stars")
    print(
        REFCAT + " "
        + ra_string
        + " "
        + dec_string
        + " -rad 0.5 -all"
    )
    in_str = (
        REFCAT + " "
        + ra_string
        + " "
        + dec_string
        + " -rad 0.5 -all > refcat_stars"
    )
    #   print scat_str
    ret_str = subprocess.getoutput(in_str)
    #   print ret_str
    #   sys.exit()

    output_cat = open("refcat_stars", "r")
    while True:
        line = output_cat.readline()
        if line[0:1] == "#":
            continue
        if line == "":
            break
        word = line.split()
        if (
            sepdeg(float(word[0]), float(word[1]), float(ra_string), float(dec_string))
            > 0.2
        ):
            continue
        #        print word
        #        if word[0] == "506.059855": print word
        jmag = float(word[38])
        #        if jmag > 16.0 and jmag < 90.0: continue
        #
        # don't use stars with a pm of over 0.1 arcsec per year
        #        if abs(float(word[4])) > 100.: continue
        #
        # don't use stars with a pm of over 0.1 arcsec per year
        #        if abs(float(word[6])) > 100.: continue

        # don't use if object is with 7" of target
        ##
        if sepdeg(float(word[0]), float(word[1]), ra_ignore, dec_ignore) < 0.002:
            continue
        if fix_me == "yes":
            factor = 15.0 * math.cos((float(word[1])) * math.pi / 180.0)
            xra_pm = (
                float(word[4]) / 1000.0 / factor / 3600.0
            )  # VizieR catalog proper motions in 1.0 mas/yr
            delta_xra = xra_pm * (image_epoch - 2015.5)  # refcat is epoch 2015.5
            xra = float(word[0]) + delta_xra
            ra_deg.append(xra)
            #           if abs(float(word[13])) > 40.:
            #              tmp1 = dmsStrFromDeg(float(word[1])/15.,precision=4)
            #              tmp2 = dmsStrFromDeg(xra/15, precision=4)
            #              print  word[1], word[2], word[13], word[14], "%7.4f" % (delta_xra*3600./15.), "   ", tmp1, "  ", tmp2
            xdec_pm = (
                float(word[6]) / 1000.0 / 3600.0
            )  # VizieR catalog proper motions in 1.0 mas/yr
            xdec = float(word[1]) + xdec_pm * (image_epoch - 2015.5)
            dec_deg.append(xdec)
            ra_pm.append(0.000)
            dec_pm.append(0.000)
        #           print xra, delta_xra, word[4], xdec, xdec_pm*(image_epoch - 2000.0), word[6]
        else:
            ra_deg.append(float(word[0]))
            dec_deg.append(float(word[1]))
            ra_pm.append(float(word[4]))
            dec_pm.append(float(word[6]))
        umag.append(float(word[25]))  # r-band mag
    output_cat.close()
    print("found", len(ra_deg), "stars")
    if os.path.exists("refcat_stars"):
        os.unlink("refcat_stars")
    #    sys.exit()
    return (ra_deg, dec_deg, ra_pm, dec_pm, umag)


end_kill = "yes"

global fix_me
fix_me = "yes"

fits_name = sys.argv[1]

pid = str(os.getpid())
if os.path.exists("/tmp/junk_" + pid):
    shutil.rmtree("/tmp/junk_" + pid)
os.mkdir("/tmp/junk_" + pid)

ff = open("/tmp/junk_" + pid + "/fits_name", "w")
ff.write(fits_name + "\n")
ff.close()

os.environ["ADAM_USER"] = "/tmp/junk_" + pid
print("ADAM_USER: ", os.getenv("ADAM_USER"))

in_len = len(sys.argv)
if not (in_len == 2 or in_len == 5):
    print("Need 1 or 4 command line parameters")
    print("i.e.")
    print("     python3 /mnt/64bin/auto_astrom/arefcat.py fits_image")
    print(" or")
    print(
        "     python3 /mnt/64bin/auto_astrom/arefcat.py fits_image ra_cen_deg dec_cen_deg pixel_scale"
    )
    shutil.rmtree("/tmp/junk_" + pid)
    sys.exit()


print(" ")
hostname = socket.gethostname()
print(hostname)
global scat
global REFCAT

WCS_BIN = '/usr/bin/'    # Needs "wcstools" installed, i.e. dnf install wcstools
scat = WCS_BIN+"scat"
xy2sky = WCS_BIN+"xy2sky"

find_pixel_scale = "python /mnt/64bin/find_pixel_scale.py3"
raw_sex = "/star/bin/extractor/sex -c /mnt/64bin/auto_astrom/ascfit.sex"
os.environ["UA2_PATH"] = "/mnt/cats/usnoa/"
starfit = "/mnt/64bin/auto_astrom/starfit"
mid_time = subprocess.getoutput("python /mnt/64bin/get_mid_time.py3 " + fits_name)
cull_astrom_dat = "python /mnt/64bin/auto_astrom/cull_astrom.py3 > culled_astrom.dat"
REFCAT = "/mnt/64bin/auto_astrom/refcat"

if hostname in ['draco2', 'east-14', 'east-16', 'west-14', 'far-east-20']:
    print("Using LOCAL programmes/scripts -----------------------------")
    os.environ["UA2_PATH"] = "/data/usnoa/"
    raw_sex = "/star/bin/extractor/sex -c /home/aa/telescope/progs/ascfit.sex"
    find_pixel_scale = 'python /home/aa/telescope/progs/find_pixel_scale.py3'
    starfit = '/home/aa/telescope/progs/starfit'
    mid_time = subprocess.getoutput('python3 /home/aa/telescope/progs/get_mid_time.py3 '+ fits_name)
    cull_astrom_dat = 'python /home/aa/telescope/progs/cull_astrom.py3 > culled_astrom.dat'
    REFCAT = "/home/aa/telescope/progs/refcat"
    
ra_ignore = 0.0
dec_ignore = 0.0
if os.path.exists("object_to_ignore"):
    f = open("object_to_ignore")
    line = f.readline()
    f.close()
    word = line.split()
    ra_ignore = float(word[0])
    dec_ignore = float(word[1])

print("Ignoring object at ", ra_ignore, dec_ignore)

scale = "999"

print("Using image file: ", fits_name)
if in_len == 2:
    print("Looking for (RA, Dec) position in header")
    h = pyfits.open(fits_name)
    head = h[0].header
    orig_head = head
    #   print head
    nx = str(head["NAXIS1"])
    half_nx = int(nx) / 2
    ny = str(head["NAXIS2"])
    half_ny = int(ny) / 2
    date_obs = head["DATE-OBS"]
    print(date_obs)
    try:
        exptime = head["EXPTIME"]
    except:
        exptime = 1.0
    if "TELESCOP" in head:
        TELESCOPE = head["TELESCOP"]
        ra = str(head["RA"])
        print(ra)
        dec = str(head["DEC"])
        print(dec)
    else:
        TELESCOPE = "unknown"
        if "TYPE" in head:
            print(head["TYPE"], head["TYPE"].replace(" ", "") == "SCIENCE")
            if head["TYPE"].replace(" ", "") != "SCIENCE":
                print("Not a SCIENCE image, exiting ..")
                shutil.rmtree("/tmp/junk_" + pid)
                sys.exit()

            if head["TYPE"].replace(" ", "") == "SCIENCE":
                TELESCOPE = "pt5m"
                NX = head["NAXIS1"]
                ra_tmp = str(head["RA"])
                word = ra_tmp.split(":")
                print(word)
                if word[0] == "0.0":
                    print("Looking for RA2")
                    ra_tmp = str(head["RA2"])
                    word = ra_tmp.split(":")
                    print(word)
                ra = str(
                    float(word[0]) * 15.0
                    + float(word[1]) / 4.0
                    + float(word[2]) / 240.0
                )
                dec_tmp = str(head["DEC"])
                word = dec_tmp.split(":")
                print(word)
                if word[0] == "0.0":
                    print("Looking for DEC2")
                    dec_tmp = str(head["DEC2"])
                    word = dec_tmp.split(":")
                    print(word)
                if word[0][0:1] == "-":
                    dec = str(
                        -1.0
                        * (
                            abs(float(word[0]))
                            + float(word[1]) / 60.0
                            + float(word[2]) / 3600.0
                        )
                    )
                else:
                    dec = str(
                        float(word[0]) + float(word[1]) / 60.0 + float(word[2]) / 3600.0
                    )
    h.close()

# print date_obs

if in_len == 5:
    print("Using (RA, Dec) position and scale on command line")
    ra = sys.argv[2]
    dec = sys.argv[3]
    scale = sys.argv[4]
    h = pyfits.open(fits_name)
    head = h[0].header
    orig_head = head
    nx = str(head["NAXIS1"])
    half_nx = int(nx) / 2
    ny = str(head["NAXIS2"])
    half_ny = int(ny) / 2
    date_obs = head["DATE-OBS"]
    try:
        exptime = head["EXPTIME"]
    except:
        exptime = 1.0
    h.close()
    TELESCOPE = "AstroLab"


if TELESCOPE == "DRACO 10-inch Meade":
    scale = "1.58"
if TELESCOPE == "14-inch DRACO2 Dome":
    scale = "0.99"
if TELESCOPE == "pt5m":
    try:
        ret_str = subprocess.getoutput(find_pixel_scale + " " + fits_name)
        scale = ret_str.split()[0]
        tmp_var = float(scale)
        if tmp_var > 1.5:
            scale = "0.556"
    except:
        scale = "0.556"

if TELESCOPE == "14-inch East Dome":
    scale = "0.9255"
if TELESCOPE == "16-inch East Dome":
    scale = "0.9255"
if TELESCOPE == "12-inch West Dome":
    scale = "1.01"
if TELESCOPE == "14-inch West Dome":
    scale = "0.99"

if TELESCOPE == "16-inch Far-East Dome":
    scale = "0.83" #"1.05" # for 12"  #"0.83" ## AMS changed 24/10/19 to cope with 12" on FE16

if TELESCOPE == "20-inch Far-East Dome":
    # AMS changed 2023_03_07 to cope with new MI_CMOS
    #scale = "0.645" # for QSI up to 2023_03_01
    scale = "1.066" # for MI_CMOS post 2023_03_01

# botch for 12-inch in FED
# if TELESCOPE == "16-inch Far-East Dome": scale = "1.241"

if TELESCOPE == "14-inch Far-East Dome":
    print(date_obs)
    scale = "1.236"
    if int(date_obs[0:4]) < 2012:
        scale = "1.21"
    if int(date_obs[0:4]) == 2012 and int(date_obs[5:7]) < 4:
        scale = "1.21"
    print(date_obs[0:4], date_obs[5:7], TELESCOPE, scale)
# sys.exit()

print("Using a pixel scale of", scale)

print("Input frame is " + nx + " x ", ny)

print("Using (", ra, dec, ") from FITS header as the initial centre of the CCD image")
size_str = " -xpix " + nx + " -ypix " + ny
year = int(date_obs[0:4])
month = int(date_obs[5:7])
day = int(date_obs[8:10])
obstime = date_obs[11:]
shour = int(obstime[0:2])
smin = int(obstime[3:5])
ssec = int(float(obstime[6:]))
# print year, month, day, shour, smin, ssec
tsec2 = time.mktime((year, month, day, shour, smin, ssec, 0, 0, 0))
tsec1 = time.mktime((year, 1, 1, 0, 0, 0, 0, 0, 0))
epoch_time = "%10.5f" % (year + (tsec2 - tsec1) / 365.256 / 24.0 / 60.0 / 60.0)
print("Epoch of image", epoch_time)

print(
    "Running 'raw sex', i.e. /star/bin/extractor/sex , to get list of objects in (x,y) pixels"
)
print(raw_sex + " " + fits_name)
out = subprocess.getoutput(raw_sex + " " + fits_name)

if not os.path.exists('asc_sextr.cat'):
    shutil.rmtree('/tmp/junk_'+pid)
    sys.exit()
fsex = open('asc_sextr.cat','r')
n_sex = 0
while True:
    line = fsex.readline()
    if line == "": break
    if line[0:1] == "#": continue
    n_sex = n_sex + 1
fsex.close()
print (n_sex, "stars found by Sextractor")
if n_sex < 5:
   print ("Less than 5 stars, exiting")
   shutil.rmtree('/tmp/junk_'+pid)
   sys.exit()

if scale == "999":
    if os.path.exists("automag_driver"):
        driver = open("automag_driver", "r")
        while True:
            line = driver.readline()
            if line == "":
                break
            word = line.split()
            if word[0] == "pixscale":
                scale = word[2]
        driver.close()
    else:
        print("WARNING: no file: automag_driver in the current directory")
        shutil.rmtree("/tmp/junk_" + pid)
        sys.exit()

if os.path.exists("usnoa_ref.cen"):
    os.unlink("usnoa_ref.cen")
cen = open("usnoa_ref.cen", "w")
cen.write("#centre  " + ra + " " + dec + "\n")
cen.close()
print("--------------------------------------------------------------------")
print("First pass to lock onto field")
print("Using centre: ", ra, dec)
if os.path.exists("usnoa_ref.cat"):
    os.unlink("usnoa_ref.cat")
if os.path.exists("refcat_stars"):
    os.unlink("refcat_stars")
# need to extract a larger radius for fields near the poles, then cut down to 10 arcmi
# print('/mnt/64bin/auto_astrom/refcat '+ra+' '+dec+' -rad 0.5 ')
in_str = REFCAT+" " + ra + " " + dec + " -rad 0.5 > refcat_stars"
print(in_str)
ret_str = subprocess.getoutput(in_str)

# starfit fails near RA=0 so exclude the refcat satrs that are the 'other' side
# NEW 2021-Nov-20
RA_NEAR_0 = False
if float(ra) < 2.: RA_NEAR_0 = True
RA_NEAR_24 = False
if float(ra) > 358.: RA_NEAR_24 = True

f = open("refcat_stars", "r")
usnoa_out = open("usnoa_ref.cat", "w")
n_star = 0
while True:
    line = f.readline()
    if line == "":
        break

    word = line.split()
    ra_star = float(word[0])
    
# NEW 2021-Nov-20   
    if RA_NEAR_0  and ra_star > 180.: continue
    if RA_NEAR_24 and ra_star < 180.: continue
    
    sep_deg = sepdeg(float(ra), float(dec), ra_star, float(word[1]))
    #    print(float(ra), float(dec), float(word[0]),  float(word[1]), sep_deg)
    if sep_deg < 0.2:
        n_star = n_star + 1
        usnoa_out.write(
            str(n_star)
            + " "
            + word[0]
            + " "
            + word[1]
            + " "
            + word[2]
            + " "
            + word[3]
            + " "
            + word[4]
            + " "
            + word[5]
            + "\n"
        )
f.close()
usnoa_out.close()
if os.path.exists("refcat_stars"):
    os.unlink("refcat_stars")
# print (n_star)

# if os.path.exists('astrom.dat'): os.unlink('astrom.dat')
print("Running 'starfit' to auto id the stars")
# print "         an initial scale of ", scale," arcsec per pixel."

print(starfit + size_str + " -scale " + scale + " -final -plot")
ret_str = subprocess.getoutput(
    starfit + size_str + " -scale " + scale + " -final -plot"
)
print("starfit returns: ", ret_str)
#print(">"+ret_str+"<", ret_str == " ")
word = ret_str.split()
if len(word) == 0:
    word = []
    word.append("Error,")

if word[0] == "Error,":
    print("ERROR: starfit failed to match the stars, Ugh!")

    for f in [
        "usnoa_ref.cen",
        "asc_sextr.cat",
        "usnoa_ref.cat",
        "asc_ref_cat.dat",
        "asc_img_cat.dat",
        "asc_ref_cat_bright.dat",
        "asc_img_cat_bright.dat",
        "asc_param.dat",
        "asc_match1.dat",
        "asc_param1.dat",
    ]:
        if os.path.exists(f):
            os.unlink(f)
    shutil.rmtree("/tmp/junk_" + pid)
    sys.exit()

nn_mat = 0
fff = open("asc_final_match.dat", "r")
while True:
    line = fff.readline()
    if line == "":
        break
    if line[0:1] == "#":
        continue
    nn_mat = nn_mat + 1
fff.close()
print("starfit matched", nn_mat, " stars")

fm = open("asc_final_match.dat", "r")
mat_ra = []
mat_dec = []
while True:
    line = fm.readline()
    if line == "":
        break
    if line[0:1] == "#":
        continue
    word = line.split()
    mat_ra.append(float(word[6]))
    mat_dec.append(float(word[7]))
fm.close()
ra = str(jmedian(mat_ra))
dec = str(jmedian(mat_dec))
print("New centre: ", ra, dec)
print("--------------------------------------------------------------------")
if os.path.exists("usnoa_ref.cen"):
    os.unlink("usnoa_ref.cen")
cen = open("usnoa_ref.cen", "w")
cen.write("#centre  " + ra + " " + dec + "\n")
cen.close()


# why do we need to do this??
usnoa2_ra = []
usnoa2_dec = []
uf = open("usnoa_ref.cat", "r")
while True:
    line = uf.readline()
    if line == "":
        break
    word = line.split()
    usnoa2_ra.append(float(word[1]))
    usnoa2_dec.append(float(word[2]))
uf.close()


# clean up files produced by starfit
if os.path.exists("asc_ref_cat.dat"):
    os.unlink("asc_ref_cat.dat")
if os.path.exists("asc_ref_cat_bright.dat"):
    os.unlink("asc_ref_cat_bright.dat")
if os.path.exists("asc_param.dat"):
    os.unlink("asc_param.dat")
if os.path.exists("asc_param1.dat"):
    os.unlink("asc_param1.dat")
if os.path.exists("asc_param2.dat"):
    os.unlink("asc_param2.dat")
if os.path.exists("asc_match1.dat"):
    os.unlink("asc_match1.dat")
if os.path.exists("asc_match2.dat"):
    os.unlink("asc_match2.dat")
if os.path.exists("asc_img_cat.dat"):
    os.unlink("asc_img_cat.dat")
if os.path.exists("asc_img_cat_bright.dat"):
    os.unlink("asc_img_cat_bright.dat")
if os.path.exists("usnoa_ref.cen"):
    os.unlink("usnoa_ref.cen")
# if os.path.exists('usnoa_ref.cat'): os.unlink('usnoa_ref.cat')

ra_hours = float(ra) / 15.0
ra_string = dmsStrFromDeg(ra_hours, precision=2)
dec_string = dmsStrFromDeg(float(dec))

print("REFCAT processing ...")

(ura_deg, udec_deg, ura_pm, udec_pm, umag) = get_refcat(
    float(epoch_time), ra, dec, ra_ignore, dec_ignore
)

# print "remote:",len(ura_deg)
# print "local: ",len(local_ura_deg)
# sys.exit()
# for i in range(len(ura_deg)):
#    hit = "no"
#    sep_min = 9999999.
#    for j in range(len(local_ura_deg)):
#        sep = 3600.*sepdeg( ura_deg[i], udec_deg[i], local_ura_deg[j], local_udec_deg[j])
##        print i, j, ura_deg[i], udec_deg[i], local_ura_deg[j], local_udec_deg[j], sep
#        if sep < 1.0:
#           sep_min = sep
#           hit = "yes"
#    ihit = 0
#    if hit == "yes": ihit = 1
#    print i, ura_deg[i], udec_deg[i], ura_pm[i], udec_pm[i], umag[i] , ihit


# sys.exit()
if len(ura_deg) < 4:
    print("too few stars found in REFCAT to continue")
    shutil.rmtree("/tmp/junk_" + pid)
    sys.exit()
else:
    print(len(ura_deg), "REFCAT stars found")
#sys.exit()

if os.path.exists("astrom.dat"):
    os.unlink("astrom.dat")
ast = open("astrom.dat", "w")
ast.write("ASTR\n")
if fix_me == "yes":
    ast.write(
        ra_string.replace(":", " ")
        + "  "
        + dec_string.replace(":", " ")
        + "  J2000.0 2000.0 \n"
    )
else:
    ast.write(
        ra_string.replace(":", " ")
        + "  "
        + dec_string.replace(":", " ")
        + "  J2000.0 "
        + epoch_time
        + "  \n"
    )

mat = open("asc_final_match.dat", "r")
nstars = 0
while True:
    line = mat.readline()
    if line == "":
        break
    if line[0] == "#":
        continue
    word = line.split()
    x_star = word[0]
    y_star = word[1]
    sep_min = 10000.0
    old_ra = float(word[6])
    old_dec = float(word[7])
    ihit = -1
    for i in range(len(ura_deg)):
        sep = 3600.0 * sepdeg(old_ra, old_dec, ura_deg[i], udec_deg[i])
        if sep < sep_min:
            ihit = i
            sep_min = sep
    print(ihit, x_star, y_star, old_ra, old_dec, ura_deg[ihit], udec_deg[ihit], sep_min)
    if sep_min > 3.0:
        continue
    nstars = nstars + 1

    #   print "                            matched"
    new_ra = ura_deg[ihit]
    new_dec = udec_deg[ihit]
    ra_star = dmsStrFromDeg(new_ra / 15.0, precision=4)
    dec_star = dmsStrFromDeg(new_dec, precision=3)
    factor = 15.0 * math.cos(float(udec_deg[ihit]) * math.pi / 180.0)
    #   factor = 15.
    #   print factor
    ra_pm = "%7.5f" % (ura_pm[ihit] / 1000.0 / factor)
    #   ra_pm = '0.0'
    dec_pm = "%7.5f" % (udec_pm[ihit] / 1000.0)
    #   dec_pm = '0.0'
    ast.write(
        ra_star.replace(":", " ")
        + "  "
        + dec_star.replace(":", " ")
        + " "
        + ra_pm
        + " "
        + dec_pm
        + "  2000.0\n"
    )
    #   ast.write(ra_star.replace(':',' ')+'  '+dec_star.replace(':',' ')+' 2000.0  2000.0\n')
    ast.write(x_star + " " + y_star + "\n")
mat.close()
ast.write("END\n")
ast.close()

if os.path.exists("astrom.dat") and nstars > 3:

    print(
        nstars,
        "Excellent, we have  matched",
        nstars,
        "stars in REFCAT, writing 'astrom.dat'",
    )
else:
    print("No match found, aborting ....")
    if os.path.exists("asc_sextr.cat"):
        os.unlink("asc_sextr.cat")
    if os.path.exists("asc_final_match.dat"):
        os.unlink("asc_final_match.dat")
    if os.path.exists("usnoa_ref.cat"):
        os.unlink("usnoa_ref.cat")
    if os.path.exists("refcat_stars"):
        os.unlink("refcat_stars")
    if os.path.exists("astrom.dat"):
        os.unlink("astrom.dat")
    shutil.rmtree("/tmp/junk_" + pid)
    sys.exit()
    
print("Running Starlink's astrom to tune-up the astrometry fit ...")
if os.path.exists("asc01.fits"):
    os.unlink("asc01.fits")
if os.path.exists("asc02.fits"):
    os.unlink("asc02.fits")
if os.path.exists("asc03.fits"):
    os.unlink("asc03.fits")
if os.path.exists("asc04.fits"):
    os.unlink("asc04.fits")
if os.path.exists("asc05.fits"):
    os.unlink("asc05.fits")
if os.path.exists("astrom.lis"):
    os.unlink("astrom.lis")

out = subprocess.getoutput("/star/bin/astrom fits=asc")

if len(out) == 0:
    print("ERROR: Running astrom.")
    shutil.rmtree("/tmp/junk_" + pid)
    sys.exit()

astrom_success = "yes"
olines = out.split("\n")
for ll in olines:
    if ll.find("ill-conditioned") > -1:
        astrom_success = "no"
        print("Ill-conditioned reported by astrom, Ugh!")
        
if astrom_success == "no":
    if os.path.exists(fits_name[:-5]+"_astrom.dat"):
        os.unlink(fits_name[:-5]+"_astrom.dat")
    if os.path.exists('a'+fits_name):
        os.unlink('a'+fits_name)   
    if os.path.exists("asc_sextr.cat"):
        os.unlink("asc_sextr.cat")
    if os.path.exists("asc_final_match.dat"):
        os.unlink("asc_final_match.dat")
    if os.path.exists("usnoa_ref.cat"):
        os.unlink("usnoa_ref.cat")
    if os.path.exists("refcat_stars"):
        os.unlink("refcat_stars")
    if os.path.exists("astrom.dat"):
        os.unlink("astrom.dat")
    if os.path.exists("astrom.lis"):
        os.unlink("astrom.lis")        
    shutil.rmtree("/tmp/junk_" + pid)
    sys.exit()

RMS_X = 9.999
RMS_Y = 9.999
RMS_R = 9.999
for ll in olines:
    if ll.find("RMS") > -1:
        rword = ll.split()
        if len(rword) > 4:
            RMS_X = round(float(rword[2]), 3)
            RMS_Y = round(float(rword[3]), 3)
            RMS_R = round(float(rword[4]), 3)

print(
    "astrom returns rms residuals of  ",
    "%6.3f" % RMS_X,
    "%6.3f" % RMS_Y,
    "%6.3f" % RMS_R,
    "arcsec",
)
print("Copying input file and adding/updating the astrometry solution in fits header")
i = fits_name.find(".")
n1 = fits_name[:i]
if os.path.exists("a" + n1 + ".fits"):
    os.unlink("a" + n1 + ".fits")
orig = pyfits.open(fits_name)
raw = orig[0].data
orig.close()
new = pyfits.PrimaryHDU(raw, orig_head)
hdu2 = pyfits.HDUList([new])
hdu2.writeto("a" + n1 + ".fits")

# shutil.copy2(fits_name,'a'+n1+'.fits')
if os.path.exists(n1 + "_astrom.dat"):
    os.unlink(n1 + "_astrom.dat")
shutil.copy2("astrom.dat", n1 + "_astrom.dat")

print("Copying derived solution to image header")

if os.path.exists("asc02.fits"):
    sol = pyfits.open("asc02.fits")
    print("Using  asc02.fits  solution")
elif os.path.exists("asc01.fits"):
    sol = pyfits.open("asc01.fits")
    print("Using  asc01.fits  solution")
else:
    print("NO asc01.fits or asc02.fits file")
    shutil.rmtree("/tmp/junk_" + pid)
    sys.exit()

hdulist = pyfits.open("a" + n1 + ".fits", mode="update")
head = hdulist[0].header
sol_head = sol[0].header
for key in (
    "CTYPE1",
    "CTYPE2",
    "RADESYS",
    "EQUINOX",
    "LONPOLE",
    "CRVAL1",
    "CRVAL2",
    "CRPIX1",
    "CRPIX2",
    "CUNIT1",
    "CUNIT2",
    "CD1_1",
    "CD2_1",
    "CD1_2",
    "CD2_2",
):
    val = sol_head[key]
    #    print key, val
    head[key] = val
hdulist.flush()
hdulist.close()

out = subprocess.getoutput(
    xy2sky + " a" + n1 + ".fits " + str(half_nx) + " " + str(half_ny)
)
print(out)
oword = out.split()
ra_string = oword[0]
dec_string = oword[1]

out = subprocess.getoutput(
    xy2sky + " -d  a" + n1 + ".fits " + str(half_nx) + " " + str(half_ny)
)
print(out)
oword = out.split()
new_ra_cen = oword[0]
new_dec_cen = oword[1]
print("Updating image centre from (", ra, dec, ") to (", new_ra_cen, new_dec_cen, ")")
hdulist = pyfits.open("a" + n1 + ".fits", mode="update")
head = hdulist[0].header
head["RA"] = float(new_ra_cen)
head["DEC"] = float(new_dec_cen)
hdulist.flush()
hdulist.close()
# sys.exit()

print("Calculating (ra,dec) of objects in asc_sextr.dat")
asc = open("asc_sextr.cat", "r")
asc_cat_ra = []
asc_cat_dec = []
asc_cat_xx = []
asc_cat_yy = []
asc_cat_mag = []
asc_cat_mag_err = []
while True:
    line = asc.readline()
    if line == "":
        break
    if line[0:1] == "#":
        continue
    word = line.split()
    xx = word[1]
    yy = word[2]
    asc_cat_xx.append(float(xx))
    asc_cat_yy.append(float(yy))
    out = subprocess.getoutput(xy2sky + " -d a" + n1 + ".fits " + xx + " " + yy)
    ooword = out.split()
    asc_cat_ra.append(float(ooword[0]))
    asc_cat_dec.append(float(ooword[1]))
    asc_cat_mag.append(float(word[7]))
    iso = float(word[3])
    iso_err = float(word[4])
    err = round(2.5 * math.log10((iso + iso_err) / iso), 3)
    asc_cat_mag_err.append(err)
asc.close()

print("Looking for more stars to include in astrometry fit")

# look for a S/N cut
s2n = []
asc = open("asc_sextr.cat", "r")
while True:
    line = asc.readline()
    if line == "":
        break
    if line[0:1] == "#":
        continue
    word = line.split()
    iso = float(word[3])
    iso_err = float(word[4])
    if iso / iso_err > 10.0:
        s2n.append(iso / iso_err)
asc.close()
n_obs = len(s2n)
# print s2n

s2n_cut = 10.0
if n_obs > 25:
    tarr = s2n[:]
    tarr.sort()
    q_30 = int(float(n_obs - 1) * 0.30 + 0.5)
    s2n_cut = tarr[q_30]
    print("Applying a S/N cut of ", s2n_cut)
else:
    print("S/N cut of ", s2n_cut)
xxx = []
yyy = []
ra_sex = []
dec_sex = []
mag_sex = []
mag_sex_err = []
done = []
asc = open("asc_sextr.cat", "r")
while True:
    line = asc.readline()
    if line == "":
        break
    if line[0:1] == "#":
        continue
    word = line.split()
    xx = word[1]
    yy = word[2]
    tmag = word[7]
    iso = float(word[3])
    iso_err = float(word[4])
    #   print xy2sky+' -d a'+n1+'.fits '+xx+' '+yy
    out = subprocess.getoutput(xy2sky + " -d a" + n1 + ".fits " + xx + " " + yy)
    #   print out
    #   print iso, iso_err, iso/iso_err, s2n_cut, iso/iso_err < s2n_cut
    if iso / iso_err < s2n_cut:
        #         print "excluding"
        continue
    xxx.append(float(xx))
    yyy.append(float(yy))
    ooword = out.split()
    ra_sex.append(ooword[0])
    dec_sex.append(ooword[1])
    mag_sex.append(round(float(tmag), 3))
    err = round(2.5 * math.log10((iso + iso_err) / iso), 3)
    mag_sex_err.append(err)
    done.append(0)
asc.close()
# print mag_sex_err
print(len(ra_sex), "stars in Sextractor catalogue")
print(len(ura_deg), "stars in REFCAT catalogue")

#h = htm.HTM()
#maxrad = 1.0 / 3600.0
#m1 = []
#m2 = []
#radius = []
#(m1, m2, radius) = h.match(ura_deg, udec_deg, ra_sex, dec_sex, maxrad)  # ,verbose=True)
#print(len(m1), m1)
#print(len(m2), m2) #, radius)
#print("")

cat_ra_deg = np.asarray(ura_deg)
cat_dec_deg = np.asarray(udec_deg)
catalog = SkyCoord(ra=cat_ra_deg, dec=cat_dec_deg, unit='deg')

sex_ra_deg =  np.asarray(ra_sex)
sex_dec_deg =  np.asarray(dec_sex)
sex_cat =  SkyCoord(ra=sex_ra_deg, dec=sex_dec_deg, unit='deg')


(m1, m2, d2d, d3d) = sex_cat.search_around_sky(catalog, 1.*u.arcsec)
#print(len(nm1), nm1)
#print(len(nm2), nm2)
print(
    "Matched ", len(m1), " stars in asc_sextr.cat within 1 arcsec of REFCAT positions"
)

#sys.exit()

delta_mag = []
for i in range(len(m1)):
    mag1 = umag[m1[i]]
    mag2 = mag_sex[m2[i]]
    if mag1 > 30.0:
        continue
    #    print i, mag1, mag2
    delta_mag.append(mag1 - mag2)

magzp = jmedian(delta_mag)
print("Mag Zeropoint:", magzp, "     rms:", robust_stddev(delta_mag))

print("Writing new astrom.dat")
if os.path.exists("astrom.dat"):
    os.unlink("astrom.dat")
ast = open("astrom.dat", "w")
ast.write("ASTR\n")
if fix_me == "yes":
    ast.write(
        ra_string.replace(":", " ")
        + "  "
        + dec_string.replace(":", " ")
        + "  J2000.0  2000 \n"
    )
else:
    ast.write(
        ra_string.replace(":", " ")
        + "  "
        + dec_string.replace(":", " ")
        + "  J2000.0 "
        + epoch_time
        + " \n"
    )
start_time = time.time()
nn = 0
for iii in range(len(m1)):
    nn = nn + 1
    i = m1[iii]
    new_ra = ura_deg[i]
    new_dec = udec_deg[i]
    ra_star = dmsStrFromDeg(new_ra / 15.0, precision=4)
    dec_star = dmsStrFromDeg(new_dec, precision=3)
    factor = 15.0 * math.cos(float(udec_deg[ihit]) * math.pi / 180.0)
    #                factor = 15.
    ra_pm = "%7.5f" % (ura_pm[i] / 1000.0 / factor)
    dec_pm = "%7.5f" % (udec_pm[i] / 1000.0)
    #    ra_pm = "0"
    #    dec_pm = "0"
    ast.write(
        ra_star.replace(":", " ")
        + "  "
        + dec_star.replace(":", " ")
        + " "
        + ra_pm
        + " "
        + dec_pm
        + "  J2000.0 \n"
    )
    j = m2[iii]
    ast.write(str(xxx[j]) + " " + str(yyy[j]) + "\n")
    done[j] = 1

print("Using ", nn, " stars")
ast.write(" \n")

cat_ra_deg = np.asarray(usnoa2_ra)
cat_dec_deg = np.asarray(usnoa2_dec)
usnoa2_cat = SkyCoord(ra=cat_ra_deg, dec=cat_dec_deg, unit='deg')

print("Looking for unknown/extra objects to include in 'astrom.dat'")
nn_new = 0
for i in range(len(asc_cat_ra)):
    if asc_cat_xx[i] < 5.0:
        continue
    if float(nx) - asc_cat_xx[i] < 5.0:
        continue
    if asc_cat_yy[i] < 5.0:
        continue
    if float(ny) - asc_cat_yy[i] < 5.0:
        continue

    if False:
        h = htm.HTM()
        maxrad = 5.0 / 3600.0
        m1 = []
        m2 = []
        radius = []
        tmp_ra = [asc_cat_ra[i]]
        tmp_dec = [asc_cat_dec[i]]
        (m1, m2, radius) = h.match(
            usnoa2_ra, usnoa2_dec, tmp_ra, tmp_dec, maxrad
        )  # ,verbose=True)
        print("HTM", i, m1, m2)


    target = SkyCoord(ra=[asc_cat_ra[i]]*u.deg, dec=[asc_cat_dec[i]]*u.deg)
    (m1, m2, d2d, d3d) = target.search_around_sky(usnoa2_cat, 1.*u.arcsec)
#    print("NEW", i, m1, m2)
    
    if len(m1) > 0:
        continue
    nn_new = nn_new + 1
    ast.write(str(asc_cat_xx[i]) + " " + str(asc_cat_yy[i]) + "\n")
ast.write("END\n")
ast.close()
print("Added ", nn_new, " non-matched stars")
#sys.exit()

if os.path.exists("asc01.fits"):
    os.unlink("asc01.fits")
if os.path.exists("asc02.fits"):
    os.unlink("asc02.fits")
if os.path.exists("asc03.fits"):
    os.unlink("asc03.fits")
if os.path.exists("asc04.fits"):
    os.unlink("asc04.fits")
if os.path.exists("asc05.fits"):
    os.unlink("asc05.fits")
if os.path.exists("asc_sextr.cat"):
    shutil.copy2("asc_sextr.cat", n1 + ".ASC")
#    os.unlink('asc_sextr.cat')
print("Running Starlink's astrom to tune-up (2nd pass) the astrometry fit ...")
out = subprocess.getoutput("/star/bin/astrom fits=asc")
print("astrom returns:", out)
print("--------------------------------------------------- finished\n")
olines = out.split("\n")
RMS_X = 0.000
RMS_Y = 0.000
RMS_R = 0.000

for ll in olines:
    if ll.find("RMS") > -1:
        rword = ll.split()
        if len(rword) > 4:
            RMS_X = round(float(rword[2]), 3)
            RMS_Y = round(float(rword[3]), 3)
            RMS_R = round(float(rword[4]), 3)
print(
    "astrom returns rms residuals of  ",
    "%6.3f" % RMS_X,
    "%6.3f" % RMS_Y,
    "%6.3f" % RMS_R,
    "arcsec",
)

print("Running Starlink's astrom to tune-up (3rd pass) the astrometry fit ...")
if os.path.exists("culled_astrom.dat"):
    os.unlink("culled_astrom.dat")
print(cull_astrom_dat)
out = subprocess.getoutput(cull_astrom_dat)
print(out)
if os.path.exists("astrom.dat"):
    os.unlink("astrom.dat")
shutil.move("culled_astrom.dat", "astrom.dat")
if os.path.exists("asc01.fits"):
    os.unlink("asc01.fits")
if os.path.exists("asc02.fits"):
    os.unlink("asc02.fits")
if os.path.exists("asc03.fits"):
    os.unlink("asc03.fits")
if os.path.exists("asc04.fits"):
    os.unlink("asc04.fits")
if os.path.exists("asc05.fits"):
    os.unlink("asc05.fits")

out = subprocess.getoutput("/star/bin/astrom fits=asc")


# print "Running Starlink's astrom to tune-up (4th pass) the astrometry fit ..."
# if os.path.exists('culled_astrom.dat'): os.unlink('culled_astrom.dat')
# print cull_astrom_dat
# out=subprocess.getoutput(cull_astrom_dat)
# print out
# if os.path.exists('astrom.dat'): os.unlink('astrom.dat')
# shutil.move('culled_astrom.dat', 'astrom.dat')
# if os.path.exists('asc01.fits'): os.unlink('asc01.fits')
# if os.path.exists('asc02.fits'): os.unlink('asc02.fits')
# if os.path.exists('asc03.fits'): os.unlink('asc03.fits')
# if os.path.exists('asc04.fits'): os.unlink('asc04.fits')
# if os.path.exists('asc05.fits'): os.unlink('asc05.fits')
#
# if hostname == "capella.astrolab" or hostname == "canopus.astrolab":
#   out=subprocess.getoutput('/star/bin/astrom fits=asc')
# else:
#   out=subprocess.getoutput('/star/bin/astrom fits=asc')

olines = out.split("\n")
RMS_X = 0.000
RMS_Y = 0.000
RMS_R = 0.000

for ll in olines:
    if ll.find("RMS") > -1:
        rword = ll.split()
        if len(rword) > 4:
            RMS_X = round(float(rword[2]), 3)
            RMS_Y = round(float(rword[3]), 3)
            RMS_R = round(float(rword[4]), 3)
print(
    "astrom returns rms residuals of  ",
    "%6.3f" % RMS_X,
    "%6.3f" % RMS_Y,
    "%6.3f" % RMS_R,
    "arcsec",
)
print("Copying input file and adding/updating the astrometry solution in fits header")

if len(out) == 0:
    print("ERROR: Running astrom.")
    shutil.rmtree("/tmp/junk_" + pid)
    sys.exit()

i = fits_name.find(".")
n1 = fits_name[:i]
if os.path.exists("a" + n1 + ".fits"):
    os.unlink("a" + n1 + ".fits")
orig = pyfits.open(fits_name)
raw = orig[0].data
orig.close()
new = pyfits.PrimaryHDU(raw)
hdu2 = pyfits.HDUList([new])
hdu2.writeto("a" + n1 + ".fits")

# shutil.copy2(fits_name,'a'+n1+'.fits')

print("Copying derived solution to image header")

if os.path.exists("asc02.fits"):
    sol = pyfits.open("asc02.fits")
elif os.path.exists("asc01.fits"):
    sol = pyfits.open("asc01.fits")
else:
    print("NO asc01.fits or asc02.fits file")
    shutil.rmtree("/tmp/junk_" + pid)
    sys.exit()

hdulist = pyfits.open("a" + n1 + ".fits", mode="update")
head = hdulist[0].header
# copy header items in from original image
h = pyfits.open(fits_name)

orig_head = h[0].header
#print(orig_head["OBJ_NAME"])

for key in (
    "ORIGIN",
    "TELESCOP",
    "INSTRUME",
    "LONG_OBS",
    "LAT_OBS",
    "DETECTOR",
    "GAIN",
    "RDNOISE",
    "CCD_TEMP",
    "CCD_TSET",
    "HEATSINK",
    "QSIPOWER",
    "EXPTIME",
    "FILTER",
    "DATE-OBS",
    "OBJ_NAME",
    "OBSERVER",
    "RA",
    "DEC",
    "AZIMUTH",
    "ALTITUDE",
    "HA",
    "AIRMASS",
    "TCFPOS",
    "TCFTEMP",
    "MJD-OBS",
    "PSF_FWHM",
    "PSF_EL",
    "PSF_PA",
):
    if key in orig_head:
        head[key] = orig_head[key]
        head.comments[key] = orig_head.comments[key]
    else:
        print(key, "not in HEADER")

#sys.exit()
        
if TELESCOPE == "pt5m":
    head.set("TELESCOP", "pt5m")
    if "OBJECT" in orig_head:
        head.set("OBJ_NAME", orig_head["OBJECT"])

# now the astrometric solution

sol_head = sol[0].header
head["RADECSYS"] = "FK5"  # sextractor needs this key word
for key in (
    "CTYPE1",
    "CTYPE2",
    "EQUINOX",
    "LONPOLE",
    "CRVAL1",
    "CRVAL2",
    "CRPIX1",
    "CRPIX2",
    "CUNIT1",
    "CUNIT2",
    "CD1_1",
    "CD2_1",
    "CD1_2",
    "CD2_2",
):
    val = sol_head[key]
    #   print key, val
    head[key] = val
head["AST_CAL"] = "Refcat2"
head["N_ASTARS"] = nn
head["RMS_X"] = RMS_X
head["RMS_Y"] = RMS_Y
head["RMS_R"] = RMS_R
hdulist.flush()
hdulist.close()

out = subprocess.getoutput(
    xy2sky + " -d  a" + n1 + ".fits " + str(half_nx) + " " + str(half_ny)
)
oword = out.split()
new_ra_cen = oword[0]
new_dec_cen = oword[1]
print("Updating image centre from (", ra, dec, ") to (", new_ra_cen, new_dec_cen, ")")
hdulist = pyfits.open("a" + n1 + ".fits", mode="update")
head = hdulist[0].header
head["RA"] = float(new_ra_cen)
head["DEC"] = float(new_dec_cen)
hdulist.flush()
hdulist.close()


# if os.path.exists('asc01.fits'): os.unlink('asc01.fits')
# if os.path.exists('asc02.fits'): os.unlink('asc02.fits')
# if os.path.exists('asc03.fits'): os.unlink('asc03.fits')
# if os.path.exists('asc04.fits'): os.unlink('asc04.fits')
# if os.path.exists('asc05.fits'): os.unlink('asc05.fits')

print("a" + n1 + ".fits written")

# print asc_cat_xx
new = open(n1 + "_astrom_new", "w")
f = open("astrom.lis")
while True:
    line = f.readline()
    if line == "":
        break
    if line.find("Unknown") > -1:
        line = f.readline()
        line = f.readline()
        line = f.readline()
        line = f.readline()
        while True:
            line = f.readline()
            #          print line[:-1]
            if line == "":
                break
            #          print "-->",line[:-1]
            part = line.split(":")
            #          print part
            # changed 2016-july-18 to get around the "+2000.00+2000.00"
            word = part[2].split("->")
            #          print "_------------------>", word
            wword = word[0].split("+")
            #          print wword
            xx = float(wword[1])
            yy = float(wword[2])
            #          sys.exit()
            wword = word[1].split()
            #            print(wword)
            #          sys.exit()
            ra_ucac4 = (
                15.0 * float(wword[0]) + float(wword[1]) / 4.0 + float(wword[2]) / 240.0
            )
            dec_sign = "+"
            if wword[3][0:1] == "-":
                dec_sign = "-"
            if dec_sign == "+":
                dec_ucac4 = (
                    float(wword[3]) + float(wword[4]) / 60.0 + float(wword[5]) / 3600.0
                )
            else:
                dec_ucac4 = -1.0 * (
                    abs(float(wword[3]))
                    + float(wword[4]) / 60.0
                    + float(wword[5]) / 3600.0
                )
            # very crude look for match
            ihit = -9999
            for i in range(len(asc_cat_xx)):
                if abs(asc_cat_xx[i] - xx) < 0.1 and abs(asc_cat_yy[i] - yy) < 0.1:
                    ihit = i
            if ihit < 0:
                continue
            #            print(xx, yy, ihit)
            tmag = round(asc_cat_mag[ihit] + magzp, 3)
            terr = asc_cat_mag_err[ihit]
            print(
                mid_time + " " + ("%8.3f" % xx) + " " + ("%8.3f" % yy),
                "  ",
                wword[0],
                wword[1],
                wword[2],
                wword[3],
                wword[4],
                wword[5],
                ("%8.3f" % tmag),
                ("%7.3f" % terr),
            )

            new.write(
                fits_name
                + "  "
                + mid_time
                + "  "
                + ("%8.3f" % xx)
                + " "
                + ("%8.3f" % yy)
                + " "
                + ("%10.6f" % ra_ucac4)
                + " "
                + ("%10.6f" % dec_ucac4)
                + " "
                + ("%8.3f" % tmag)
                + " "
                + ("%7.3f" % terr)
                + "\n"
            )
new.close()
f.close()
print("File:", n1 + "_astrom_new lists unknown objects in image")

if end_kill == "yes":
    shutil.rmtree("/tmp/junk_" + pid)

# sys.exit()

# clean up files
if end_kill == "yes":
    i1 = fits_name.find(".fit")
    ASC_file = fits_name[:i1] + ".ASC"
    a_file = fits_name[:i1] + "_astrom.dat"
    for fname in [
        ASC_file,
        "usnoa_ref.cat",
        "asc_sextr.cat",
        "asc_final_match.dat",
        "asc01.fits",
        "asc02.fits",
        "astrom.dat",
    ]:
        if os.path.exists(fname):
            os.unlink(fname)
