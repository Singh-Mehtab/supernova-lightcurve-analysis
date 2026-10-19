mkdir 26_10_13
cd 26_10_13

mkdir east_16_V
cd east_16_V

python /mnt/64bin/stackX2.py east_16 26_10_13 0146 0146 5.0
if ( -f amosaic.fits ) then
    mv amosaic.fits at2026aeiz-26_10_13-east_16-V-mosaic.fits
    cp at2026aeiz-26_10_13-east_16-V-mosaic.fits ../../../../output_mosaics/
else
    echo "No amosaic.fits; skipping this group"
endif
cd ..
cd ..
