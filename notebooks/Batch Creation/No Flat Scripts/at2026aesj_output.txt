mkdir 26_10_13
cd 26_10_13

mkdir pt5m_B
cd pt5m_B

python /mnt/64bin/stackX2.py pt5m 26_10_13 0884578 0884585 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits at2026aesj-26_10_13-pt5m-B-mosaic.fits
    cp at2026aesj-26_10_13-pt5m-B-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_I
cd pt5m_I

python /mnt/64bin/stackX2.py pt5m 26_10_13 0884602 0884609 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits at2026aesj-26_10_13-pt5m-I-mosaic.fits
    cp at2026aesj-26_10_13-pt5m-I-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_R
cd pt5m_R

python /mnt/64bin/stackX2.py pt5m 26_10_13 0884594 0884601 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits at2026aesj-26_10_13-pt5m-R-mosaic.fits
    cp at2026aesj-26_10_13-pt5m-R-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
mkdir pt5m_V
cd pt5m_V

python /mnt/64bin/stackX2.py pt5m 26_10_13 0884586 0884593 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits at2026aesj-26_10_13-pt5m-V-mosaic.fits
    cp at2026aesj-26_10_13-pt5m-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
