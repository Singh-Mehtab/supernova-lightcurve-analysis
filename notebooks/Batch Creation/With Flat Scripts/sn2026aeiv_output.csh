mkdir 26_10_09
cd 26_10_09

mkdir east_16_B
cd east_16_B

cp "/mnt/share/flatfields/flats_Eph2026/east-16_26_02_24_B_master_flat.fits" master_flats.fits
python /mnt/64bin/stackX2.py east_16 26_10_09 0114 0121 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_09-east_16-B-mosaic.fits
    cp sn2026aeiv-26_10_09-east_16-B-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_V
cd east_16_V

cp "/mnt/share/flatfields/flats_Eph2026/east-16_26_02_24_V_master_flat.fits" master_flats.fits
python /mnt/64bin/stackX2.py east_16 26_10_09 0098 0105 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_09-east_16-V-mosaic.fits
    cp sn2026aeiv-26_10_09-east_16-V-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_r
cd east_16_r

cp "/mnt/share/flatfields/flats_Eph2026/east-16_26_02_24_R_master_flat.fits" master_flats.fits
python /mnt/64bin/stackX2.py east_16 26_10_09 0106 0113 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_09-east_16-r-mosaic.fits
    cp sn2026aeiv-26_10_09-east_16-r-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_B
cd pt5m_B

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Bflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_09 0883418 0883422 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_09-pt5m-B-mosaic.fits
    cp sn2026aeiv-26_10_09-pt5m-B-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Iflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_09 0883402 0883407 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_09-pt5m-I-mosaic.fits
    cp sn2026aeiv-26_10_09-pt5m-I-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Rflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_09 0883408 0883412 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_09-pt5m-R-mosaic.fits
    cp sn2026aeiv-26_10_09-pt5m-R-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Vflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_09 0883413 0883417 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_09-pt5m-V-mosaic.fits
    cp sn2026aeiv-26_10_09-pt5m-V-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_10
cd 26_10_10

mkdir draco2_B
cd draco2_B

cp "/mnt/share/flatfields/flats_Eph2026/draco2_26_02_24_B_master_flat.fits" master_flats.fits
python /mnt/64bin/stackX2.py draco2 26_10_10 0061 0068 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_10-draco2-B-mosaic.fits
    cp sn2026aeiv-26_10_10-draco2-B-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir draco2_V
cd draco2_V

cp "/mnt/share/flatfields/flats_Eph2026/draco2_26_02_24_V_master_flat.fits" master_flats.fits
python /mnt/64bin/stackX2.py draco2 26_10_10 0045 0052 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_10-draco2-V-mosaic.fits
    cp sn2026aeiv-26_10_10-draco2-V-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir draco2_r
cd draco2_r

cp "/mnt/share/flatfields/flats_Eph2026/draco2_26_02_24_R_master_flat.fits" master_flats.fits
python /mnt/64bin/stackX2.py draco2 26_10_10 0053 0060 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_10-draco2-r-mosaic.fits
    cp sn2026aeiv-26_10_10-draco2-r-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_B
cd pt5m_B

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Bflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_10 0883605 0883609 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_10-pt5m-B-mosaic.fits
    cp sn2026aeiv-26_10_10-pt5m-B-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Iflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_10 0883589 0883594 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_10-pt5m-I-mosaic.fits
    cp sn2026aeiv-26_10_10-pt5m-I-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Rflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_10 0883595 0883599 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_10-pt5m-R-mosaic.fits
    cp sn2026aeiv-26_10_10-pt5m-R-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Vflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_10 0883600 0883604 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_10-pt5m-V-mosaic.fits
    cp sn2026aeiv-26_10_10-pt5m-V-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_11
cd 26_10_11

mkdir pt5m_B
cd pt5m_B

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Bflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_11 0883904 0883908 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_11-pt5m-B-mosaic.fits
    cp sn2026aeiv-26_10_11-pt5m-B-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Iflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_11 0883888 0883893 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_11-pt5m-I-mosaic.fits
    cp sn2026aeiv-26_10_11-pt5m-I-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Rflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_11 0883894 0883898 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_11-pt5m-R-mosaic.fits
    cp sn2026aeiv-26_10_11-pt5m-R-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Vflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_11 0883899 0883903 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_11-pt5m-V-mosaic.fits
    cp sn2026aeiv-26_10_11-pt5m-V-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_12
cd 26_10_12

mkdir pt5m_B
cd pt5m_B

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Bflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_12 0884224 0884228 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_12-pt5m-B-mosaic.fits
    cp sn2026aeiv-26_10_12-pt5m-B-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Iflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_12 0884208 0884213 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_12-pt5m-I-mosaic.fits
    cp sn2026aeiv-26_10_12-pt5m-I-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Rflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_12 0884214 0884218 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_12-pt5m-R-mosaic.fits
    cp sn2026aeiv-26_10_12-pt5m-R-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

cp "/mnt/archive/pt5m/2026/26_10_03/calibs/Vflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_12 0884219 0884223 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_12-pt5m-V-mosaic.fits
    cp sn2026aeiv-26_10_12-pt5m-V-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_13
cd 26_10_13

mkdir east_16_V
cd east_16_V

cp "/mnt/share/flatfields/flats_Eph2026/east-16_26_02_24_V_master_flat.fits" master_flats.fits
python /mnt/64bin/stackX2.py east_16 26_10_13 0138 0141 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_13-east_16-V-mosaic.fits
    cp sn2026aeiv-26_10_13-east_16-V-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_r
cd east_16_r

cp "/mnt/share/flatfields/flats_Eph2026/east-16_26_02_24_R_master_flat.fits" master_flats.fits
python /mnt/64bin/stackX2.py east_16 26_10_13 0142 0145 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_13-east_16-r-mosaic.fits
    cp sn2026aeiv-26_10_13-east_16-r-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_B
cd pt5m_B

cp "/mnt/archive/pt5m/2026/26_10_13/calibs/Bflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_13 0884546 0884550 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_13-pt5m-B-mosaic.fits
    cp sn2026aeiv-26_10_13-pt5m-B-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

cp "/mnt/archive/pt5m/2026/26_10_13/calibs/Iflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_13 0884530 0884535 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_13-pt5m-I-mosaic.fits
    cp sn2026aeiv-26_10_13-pt5m-I-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

cp "/mnt/archive/pt5m/2026/26_10_13/calibs/Rflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_13 0884536 0884540 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_13-pt5m-R-mosaic.fits
    cp sn2026aeiv-26_10_13-pt5m-R-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

cp "/mnt/archive/pt5m/2026/26_10_13/calibs/Vflatnorm2x2.fits" master_flats.fits
python /mnt/64bin/stackX2.py pt5m 26_10_13 0884541 0884545 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_13-pt5m-V-mosaic.fits
    cp sn2026aeiv-26_10_13-pt5m-V-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
mkdir 26_10_16
cd 26_10_16

mkdir east_16_B
cd east_16_B

cp "/mnt/share/flatfields/flats_Eph2026/east-16_26_02_24_B_master_flat.fits" master_flats.fits
python /mnt/64bin/stackX2.py east_16 26_10_16 0171 0174 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_16-east_16-B-mosaic.fits
    cp sn2026aeiv-26_10_16-east_16-B-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_V
cd east_16_V

cp "/mnt/share/flatfields/flats_Eph2026/east-16_26_02_24_V_master_flat.fits" master_flats.fits
python /mnt/64bin/stackX2.py east_16 26_10_16 0134 0137 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_16-east_16-V-mosaic.fits
    cp sn2026aeiv-26_10_16-east_16-V-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_r
cd east_16_r

cp "/mnt/share/flatfields/flats_Eph2026/east-16_26_02_24_R_master_flat.fits" master_flats.fits
python /mnt/64bin/stackX2.py east_16 26_10_16 0138 0143 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_16-east_16-r-mosaic.fits
    cp sn2026aeiv-26_10_16-east_16-r-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir east_16_r-2
cd east_16_r-2

cp "/mnt/share/flatfields/flats_Eph2026/east-16_26_02_24_R_master_flat.fits" master_flats.fits
python /mnt/64bin/stackX2.py east_16 26_10_16 0167 0170 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits sn2026aeiv-26_10_16-east_16-r-2-mosaic.fits
    cp sn2026aeiv-26_10_16-east_16-r-2-mosaic.fits ../../../../output_mosaics_flats/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
