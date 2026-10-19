foreach file (*-mosaic.fits)
    echo "Processing $file"
    rm -f zpts.log

    if ( $status != 0 ) then
        echo "Could not remove the previous zpts.log; stopping."
        exit 1
    endif

    python /mnt/64bin/find_zeropoint.py3 "$file"

    python ../store_zeropoint.py "$file" results.csv

    if ( $status != 0 ) then
        echo "Could not store the result for $file; stopping."
        exit 1
    endif

end