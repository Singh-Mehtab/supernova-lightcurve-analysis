mkdir 26_09_24
cd 26_09_24

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_09_24 0881333 0881338 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_09_24-pt5m-B-mosaic.fits
    cp sn2026aaiv-26_09_24-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_09_24 0881349 0881353 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_09_24-pt5m-I-mosaic.fits
    cp sn2026aaiv-26_09_24-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_09_24 0881344 0881348 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_09_24-pt5m-R-mosaic.fits
    cp sn2026aaiv-26_09_24-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_09_24 0881339 0881343 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_09_24-pt5m-V-mosaic.fits
    cp sn2026aaiv-26_09_24-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_09_28
cd 26_09_28

mkdir east_16_B
cd east_16_B

python /mnt/64bin/stackX2.py east_16 26_09_28 0033 0040 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_09_28-east_16-B-mosaic.fits
    cp sn2026aaiv-26_09_28-east_16-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_V
cd east_16_V

python /mnt/64bin/stackX2.py east_16 26_09_28 0025 0032 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_09_28-east_16-V-mosaic.fits
    cp sn2026aaiv-26_09_28-east_16-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_r
cd east_16_r

python /mnt/64bin/stackX2.py east_16 26_09_28 0041 0048 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_09_28-east_16-r-mosaic.fits
    cp sn2026aaiv-26_09_28-east_16-r-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_01
cd 26_10_01

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_01 0881844 0881849 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_01-pt5m-B-mosaic.fits
    cp sn2026aaiv-26_10_01-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_01 0881860 0881864 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_01-pt5m-I-mosaic.fits
    cp sn2026aaiv-26_10_01-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_01 0881855 0881859 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_01-pt5m-R-mosaic.fits
    cp sn2026aaiv-26_10_01-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_01 0881850 0881854 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_01-pt5m-V-mosaic.fits
    cp sn2026aaiv-26_10_01-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_02
cd 26_10_02

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_02 0882147 0882152 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_02-pt5m-B-mosaic.fits
    cp sn2026aaiv-26_10_02-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_02 0882163 0882167 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_02-pt5m-I-mosaic.fits
    cp sn2026aaiv-26_10_02-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_02 0882158 0882162 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_02-pt5m-R-mosaic.fits
    cp sn2026aaiv-26_10_02-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_02 0882153 0882157 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_02-pt5m-V-mosaic.fits
    cp sn2026aaiv-26_10_02-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_03
cd 26_10_03

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_03 0882420 0882425 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_03-pt5m-B-mosaic.fits
    cp sn2026aaiv-26_10_03-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_03 0882436 0882439 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_03-pt5m-I-mosaic.fits
    cp sn2026aaiv-26_10_03-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_03 0882431 0882435 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_03-pt5m-R-mosaic.fits
    cp sn2026aaiv-26_10_03-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_03 0882426 0882430 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_03-pt5m-V-mosaic.fits
    cp sn2026aaiv-26_10_03-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_04
cd 26_10_04

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_04 0882588 0882588 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_04-pt5m-B-mosaic.fits
    cp sn2026aaiv-26_10_04-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_05
cd 26_10_05

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_05 0882647 0882652 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_05-pt5m-B-mosaic.fits
    cp sn2026aaiv-26_10_05-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_06
cd 26_10_06

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_06 0882868 0882873 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_06-pt5m-B-mosaic.fits
    cp sn2026aaiv-26_10_06-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_06 0882884 0882888 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_06-pt5m-I-mosaic.fits
    cp sn2026aaiv-26_10_06-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_06 0882879 0882883 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_06-pt5m-R-mosaic.fits
    cp sn2026aaiv-26_10_06-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_06 0882874 0882878 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_06-pt5m-V-mosaic.fits
    cp sn2026aaiv-26_10_06-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_07
cd 26_10_07

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_07 0883190 0883195 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_07-pt5m-B-mosaic.fits
    cp sn2026aaiv-26_10_07-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_07 0883206 0883210 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_07-pt5m-I-mosaic.fits
    cp sn2026aaiv-26_10_07-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_07 0883201 0883205 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_07-pt5m-R-mosaic.fits
    cp sn2026aaiv-26_10_07-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_07 0883196 0883200 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_07-pt5m-V-mosaic.fits
    cp sn2026aaiv-26_10_07-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir west_14_B
cd west_14_B

python /mnt/64bin/stackX2.py west_14 26_10_07 0057 0064 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_07-west_14-B-mosaic.fits
    cp sn2026aaiv-26_10_07-west_14-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir west_14_R
cd west_14_R

python /mnt/64bin/stackX2.py west_14 26_10_07 0065 0072 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_07-west_14-R-mosaic.fits
    cp sn2026aaiv-26_10_07-west_14-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir west_14_V
cd west_14_V

python /mnt/64bin/stackX2.py west_14 26_10_07 0049 0056 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_07-west_14-V-mosaic.fits
    cp sn2026aaiv-26_10_07-west_14-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_09
cd 26_10_09

mkdir east_16_B
cd east_16_B

python /mnt/64bin/stackX2.py east_16 26_10_09 0070 0077 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_09-east_16-B-mosaic.fits
    cp sn2026aaiv-26_10_09-east_16-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_V
cd east_16_V

python /mnt/64bin/stackX2.py east_16 26_10_09 0062 0069 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_09-east_16-V-mosaic.fits
    cp sn2026aaiv-26_10_09-east_16-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_r
cd east_16_r

python /mnt/64bin/stackX2.py east_16 26_10_09 0078 0085 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_09-east_16-r-mosaic.fits
    cp sn2026aaiv-26_10_09-east_16-r-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_09 0883303 0883308 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_09-pt5m-B-mosaic.fits
    cp sn2026aaiv-26_10_09-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_09 0883319 0883323 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_09-pt5m-I-mosaic.fits
    cp sn2026aaiv-26_10_09-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_09 0883314 0883318 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_09-pt5m-R-mosaic.fits
    cp sn2026aaiv-26_10_09-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_09 0883309 0883313 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_09-pt5m-V-mosaic.fits
    cp sn2026aaiv-26_10_09-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_10
cd 26_10_10

mkdir draco2_B
cd draco2_B

python /mnt/64bin/stackX2.py draco2 26_10_10 0029 0036 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_10-draco2-B-mosaic.fits
    cp sn2026aaiv-26_10_10-draco2-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir draco2_C
cd draco2_C

python /mnt/64bin/stackX2.py draco2 26_10_10 0019 0020 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_10-draco2-C-mosaic.fits
    cp sn2026aaiv-26_10_10-draco2-C-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir draco2_V
cd draco2_V

python /mnt/64bin/stackX2.py draco2 26_10_10 0021 0028 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_10-draco2-V-mosaic.fits
    cp sn2026aaiv-26_10_10-draco2-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir draco2_r
cd draco2_r

python /mnt/64bin/stackX2.py draco2 26_10_10 0037 0044 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_10-draco2-r-mosaic.fits
    cp sn2026aaiv-26_10_10-draco2-r-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_10 0883508 0883513 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_10-pt5m-B-mosaic.fits
    cp sn2026aaiv-26_10_10-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_10 0883524 0883528 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_10-pt5m-I-mosaic.fits
    cp sn2026aaiv-26_10_10-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_10 0883519 0883523 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_10-pt5m-R-mosaic.fits
    cp sn2026aaiv-26_10_10-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_10 0883514 0883518 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_10-pt5m-V-mosaic.fits
    cp sn2026aaiv-26_10_10-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_11
cd 26_10_11

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_11 0883782 0883787 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_11-pt5m-B-mosaic.fits
    cp sn2026aaiv-26_10_11-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_11 0883798 0883802 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_11-pt5m-I-mosaic.fits
    cp sn2026aaiv-26_10_11-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_11 0883793 0883797 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_11-pt5m-R-mosaic.fits
    cp sn2026aaiv-26_10_11-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_11 0883788 0883792 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_11-pt5m-V-mosaic.fits
    cp sn2026aaiv-26_10_11-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_12
cd 26_10_12

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_12 0884104 0884109 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_12-pt5m-B-mosaic.fits
    cp sn2026aaiv-26_10_12-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_12 0884120 0884124 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_12-pt5m-I-mosaic.fits
    cp sn2026aaiv-26_10_12-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_12 0884115 0884119 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_12-pt5m-R-mosaic.fits
    cp sn2026aaiv-26_10_12-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_12 0884110 0884114 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_12-pt5m-V-mosaic.fits
    cp sn2026aaiv-26_10_12-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_13
cd 26_10_13

mkdir east_16_B
cd east_16_B

python /mnt/64bin/stackX2.py east_16 26_10_13 0134 0137 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_13-east_16-B-mosaic.fits
    cp sn2026aaiv-26_10_13-east_16-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_V
cd east_16_V

python /mnt/64bin/stackX2.py east_16 26_10_13 0126 0129 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_13-east_16-V-mosaic.fits
    cp sn2026aaiv-26_10_13-east_16-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_r
cd east_16_r

python /mnt/64bin/stackX2.py east_16 26_10_13 0130 0133 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_13-east_16-r-mosaic.fits
    cp sn2026aaiv-26_10_13-east_16-r-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_13 0884427 0884432 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_13-pt5m-B-mosaic.fits
    cp sn2026aaiv-26_10_13-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_13 0884443 0884447 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_13-pt5m-I-mosaic.fits
    cp sn2026aaiv-26_10_13-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_13 0884438 0884442 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_13-pt5m-R-mosaic.fits
    cp sn2026aaiv-26_10_13-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_13 0884433 0884437 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_13-pt5m-V-mosaic.fits
    cp sn2026aaiv-26_10_13-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_16
cd 26_10_16

mkdir east_16_B
cd east_16_B

python /mnt/64bin/stackX2.py east_16 26_10_16 0130 0133 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_16-east_16-B-mosaic.fits
    cp sn2026aaiv-26_10_16-east_16-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_V
cd east_16_V

python /mnt/64bin/stackX2.py east_16 26_10_16 0121 0125 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_16-east_16-V-mosaic.fits
    cp sn2026aaiv-26_10_16-east_16-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_r
cd east_16_r

python /mnt/64bin/stackX2.py east_16 26_10_16 0126 0129 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aaiv-26_10_16-east_16-r-mosaic.fits
    cp sn2026aaiv-26_10_16-east_16-r-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
