mkdir 26_09_24
cd 26_09_24

mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_09_24 0881382 0881387 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_09_24-pt5m-I-mosaic.fits
    cp sn2026acna-26_09_24-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_09_24 0881388 0881392 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_09_24-pt5m-R-mosaic.fits
    cp sn2026acna-26_09_24-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_09_24 0881393 0881393 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_09_24-pt5m-V-mosaic.fits
    cp sn2026acna-26_09_24-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_09_29
cd 26_09_29

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_09_29 0881673 0881677 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_09_29-pt5m-B-mosaic.fits
    cp sn2026acna-26_09_29-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_09_29 0881657 0881662 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_09_29-pt5m-I-mosaic.fits
    cp sn2026acna-26_09_29-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_09_29 0881663 0881667 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_09_29-pt5m-R-mosaic.fits
    cp sn2026acna-26_09_29-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_09_29 0881668 0881672 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_09_29-pt5m-V-mosaic.fits
    cp sn2026acna-26_09_29-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_01
cd 26_10_01

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_01 0881910 0881914 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_01-pt5m-B-mosaic.fits
    cp sn2026acna-26_10_01-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_01 0881894 0881899 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_01-pt5m-I-mosaic.fits
    cp sn2026acna-26_10_01-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_01 0881900 0881904 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_01-pt5m-R-mosaic.fits
    cp sn2026acna-26_10_01-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_01 0881905 0881909 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_01-pt5m-V-mosaic.fits
    cp sn2026acna-26_10_01-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_02
cd 26_10_02

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_02 0882225 0882229 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_02-pt5m-B-mosaic.fits
    cp sn2026acna-26_10_02-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_02 0882209 0882214 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_02-pt5m-I-mosaic.fits
    cp sn2026acna-26_10_02-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_02 0882215 0882219 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_02-pt5m-R-mosaic.fits
    cp sn2026acna-26_10_02-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_02 0882220 0882224 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_02-pt5m-V-mosaic.fits
    cp sn2026acna-26_10_02-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_03
cd 26_10_03

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_03 0882499 0882503 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_03-pt5m-B-mosaic.fits
    cp sn2026acna-26_10_03-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_03 0882483 0882488 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_03-pt5m-I-mosaic.fits
    cp sn2026acna-26_10_03-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_03 0882489 0882493 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_03-pt5m-R-mosaic.fits
    cp sn2026acna-26_10_03-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_03 0882494 0882498 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_03-pt5m-V-mosaic.fits
    cp sn2026acna-26_10_03-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_05
cd 26_10_05

mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_05 0882690 0882694 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_05-pt5m-I-mosaic.fits
    cp sn2026acna-26_10_05-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_06
cd 26_10_06

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_06 0882943 0882947 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_06-pt5m-B-mosaic.fits
    cp sn2026acna-26_10_06-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_06 0882927 0882932 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_06-pt5m-I-mosaic.fits
    cp sn2026acna-26_10_06-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_06 0882933 0882937 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_06-pt5m-R-mosaic.fits
    cp sn2026acna-26_10_06-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_06 0882938 0882942 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_06-pt5m-V-mosaic.fits
    cp sn2026acna-26_10_06-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_07
cd 26_10_07

mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_07 0883228 0883233 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_07-pt5m-I-mosaic.fits
    cp sn2026acna-26_10_07-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_07 0883234 0883234 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_07-pt5m-R-mosaic.fits
    cp sn2026acna-26_10_07-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir west_14_R
cd west_14_R

python /mnt/64bin/stackX2.py west_14 26_10_07 0081 0088 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_07-west_14-R-mosaic.fits
    cp sn2026acna-26_10_07-west_14-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir west_14_V
cd west_14_V

python /mnt/64bin/stackX2.py west_14 26_10_07 0073 0080 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_07-west_14-V-mosaic.fits
    cp sn2026acna-26_10_07-west_14-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_09
cd 26_10_09

mkdir east_16_B
cd east_16_B

python /mnt/64bin/stackX2.py east_16 26_10_09 0130 0133 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_09-east_16-B-mosaic.fits
    cp sn2026acna-26_10_09-east_16-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_V
cd east_16_V

python /mnt/64bin/stackX2.py east_16 26_10_09 0122 0125 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_09-east_16-V-mosaic.fits
    cp sn2026acna-26_10_09-east_16-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_r
cd east_16_r

python /mnt/64bin/stackX2.py east_16 26_10_09 0126 0129 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_09-east_16-r-mosaic.fits
    cp sn2026acna-26_10_09-east_16-r-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_09 0883358 0883362 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_09-pt5m-B-mosaic.fits
    cp sn2026acna-26_10_09-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_09 0883342 0883347 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_09-pt5m-I-mosaic.fits
    cp sn2026acna-26_10_09-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_09 0883348 0883352 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_09-pt5m-R-mosaic.fits
    cp sn2026acna-26_10_09-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_09 0883353 0883357 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_09-pt5m-V-mosaic.fits
    cp sn2026acna-26_10_09-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_10
cd 26_10_10

mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_10 0883534 0883539 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_10-pt5m-I-mosaic.fits
    cp sn2026acna-26_10_10-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_11
cd 26_10_11

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_11 0883849 0883853 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_11-pt5m-B-mosaic.fits
    cp sn2026acna-26_10_11-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_11 0883833 0883838 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_11-pt5m-I-mosaic.fits
    cp sn2026acna-26_10_11-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_11 0883839 0883843 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_11-pt5m-R-mosaic.fits
    cp sn2026acna-26_10_11-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_11 0883844 0883848 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_11-pt5m-V-mosaic.fits
    cp sn2026acna-26_10_11-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_12
cd 26_10_12

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_12 0884170 0884174 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_12-pt5m-B-mosaic.fits
    cp sn2026acna-26_10_12-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_12 0884154 0884159 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_12-pt5m-I-mosaic.fits
    cp sn2026acna-26_10_12-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_12 0884160 0884164 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_12-pt5m-R-mosaic.fits
    cp sn2026acna-26_10_12-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_12 0884165 0884169 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_12-pt5m-V-mosaic.fits
    cp sn2026acna-26_10_12-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_13
cd 26_10_13

mkdir east_16_V
cd east_16_V

python /mnt/64bin/stackX2.py east_16 26_10_13 0147 0150 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_13-east_16-V-mosaic.fits
    cp sn2026acna-26_10_13-east_16-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_13 0884492 0884496 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_13-pt5m-B-mosaic.fits
    cp sn2026acna-26_10_13-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_13 0884476 0884481 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_13-pt5m-I-mosaic.fits
    cp sn2026acna-26_10_13-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_13 0884482 0884486 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_13-pt5m-R-mosaic.fits
    cp sn2026acna-26_10_13-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_13 0884487 0884491 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_13-pt5m-V-mosaic.fits
    cp sn2026acna-26_10_13-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_16
cd 26_10_16

mkdir east_16_V
cd east_16_V

python /mnt/64bin/stackX2.py east_16 26_10_16 0175 0178 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_16-east_16-V-mosaic.fits
    cp sn2026acna-26_10_16-east_16-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_r
cd east_16_r

python /mnt/64bin/stackX2.py east_16 26_10_16 0179 0182 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_16-east_16-r-mosaic.fits
    cp sn2026acna-26_10_16-east_16-r-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_17
cd 26_10_17

mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_17 0884806 0884806 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026acna-26_10_17-pt5m-I-mosaic.fits
    cp sn2026acna-26_10_17-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
