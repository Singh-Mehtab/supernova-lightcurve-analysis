#!/bin/csh -f
set batch_dir = "$cwd"
mkdir -p working logs
if ( $status != 0 ) exit 1

   echo "Processing group 8"

   if ( -d "$batch_dir/working/g8" ) then
       echo "Work folder already exists; skipping group 8"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_10_22-draco2-B-flat-g8-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_10_22-draco2-B-flat-g8-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g8"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g8"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_10_22-draco2-B-flat-g8-mosaic.fits" >&! "$batch_dir/logs/g8.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_10_22-draco2-B-flat-g8-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 9"

   if ( -d "$batch_dir/working/g9" ) then
       echo "Work folder already exists; skipping group 9"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_10_22-draco2-r-flat-g9-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_10_22-draco2-r-flat-g9-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g9"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g9"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_10_22-draco2-r-flat-g9-mosaic.fits" >&! "$batch_dir/logs/g9.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_10_22-draco2-r-flat-g9-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 34"

   if ( -d "$batch_dir/working/g34" ) then
       echo "Work folder already exists; skipping group 34"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_10_10-draco2-B-flat-g34-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_10_10-draco2-B-flat-g34-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g34"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g34"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_10_10-draco2-B-flat-g34-mosaic.fits" >&! "$batch_dir/logs/g34.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_10_10-draco2-B-flat-g34-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 35"

   if ( -d "$batch_dir/working/g35" ) then
       echo "Work folder already exists; skipping group 35"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_10_10-draco2-r-flat-g35-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_10_10-draco2-r-flat-g35-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g35"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g35"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_10_10-draco2-r-flat-g35-mosaic.fits" >&! "$batch_dir/logs/g35.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_10_10-draco2-r-flat-g35-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 52"

   if ( -d "$batch_dir/working/g52" ) then
       echo "Work folder already exists; skipping group 52"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_10_07-west-14-B-flat-g52-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_10_07-west-14-B-flat-g52-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g52"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g52"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_10_07-west-14-B-flat-g52-mosaic.fits" >&! "$batch_dir/logs/g52.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_10_07-west-14-B-flat-g52-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 155"

   if ( -d "$batch_dir/working/g155" ) then
       echo "Work folder already exists; skipping group 155"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aeiv-26_10_22-draco2-r-flat-g155-mosaic.fits" ) then
           echo "Missing input: sn2026aeiv-26_10_22-draco2-r-flat-g155-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g155"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g155"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aeiv-26_10_22-draco2-r-flat-g155-mosaic.fits" >&! "$batch_dir/logs/g155.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aeiv-26_10_22-draco2-r-flat-g155-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 175"

   if ( -d "$batch_dir/working/g175" ) then
       echo "Work folder already exists; skipping group 175"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aeiv-26_10_10-draco2-r-flat-g175-mosaic.fits" ) then
           echo "Missing input: sn2026aeiv-26_10_10-draco2-r-flat-g175-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g175"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g175"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aeiv-26_10_10-draco2-r-flat-g175-mosaic.fits" >&! "$batch_dir/logs/g175.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aeiv-26_10_10-draco2-r-flat-g175-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 176"

   if ( -d "$batch_dir/working/g176" ) then
       echo "Work folder already exists; skipping group 176"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aeiv-26_10_10-draco2-B-flat-g176-mosaic.fits" ) then
           echo "Missing input: sn2026aeiv-26_10_10-draco2-B-flat-g176-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g176"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g176"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aeiv-26_10_10-draco2-B-flat-g176-mosaic.fits" >&! "$batch_dir/logs/g176.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aeiv-26_10_10-draco2-B-flat-g176-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 603"

   if ( -d "$batch_dir/working/g603" ) then
       echo "Work folder already exists; skipping group 603"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_11_03-east-16-V-flat-g603-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_11_03-east-16-V-flat-g603-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g603"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g603"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_11_03-east-16-V-flat-g603-mosaic.fits" >&! "$batch_dir/logs/g603.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_11_03-east-16-V-flat-g603-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 604"

   if ( -d "$batch_dir/working/g604" ) then
       echo "Work folder already exists; skipping group 604"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_11_03-east-16-B-flat-g604-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_11_03-east-16-B-flat-g604-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g604"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g604"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_11_03-east-16-B-flat-g604-mosaic.fits" >&! "$batch_dir/logs/g604.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_11_03-east-16-B-flat-g604-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 605"

   if ( -d "$batch_dir/working/g605" ) then
       echo "Work folder already exists; skipping group 605"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_11_03-east-16-r-flat-g605-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_11_03-east-16-r-flat-g605-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g605"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g605"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_11_03-east-16-r-flat-g605-mosaic.fits" >&! "$batch_dir/logs/g605.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_11_03-east-16-r-flat-g605-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 606"

   if ( -d "$batch_dir/working/g606" ) then
       echo "Work folder already exists; skipping group 606"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_10_31-east-16-V-flat-g606-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_10_31-east-16-V-flat-g606-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g606"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g606"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_10_31-east-16-V-flat-g606-mosaic.fits" >&! "$batch_dir/logs/g606.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_10_31-east-16-V-flat-g606-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 607"

   if ( -d "$batch_dir/working/g607" ) then
       echo "Work folder already exists; skipping group 607"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_10_31-east-16-B-flat-g607-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_10_31-east-16-B-flat-g607-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g607"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g607"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_10_31-east-16-B-flat-g607-mosaic.fits" >&! "$batch_dir/logs/g607.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_10_31-east-16-B-flat-g607-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 608"

   if ( -d "$batch_dir/working/g608" ) then
       echo "Work folder already exists; skipping group 608"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026acna-26_11_04-pt5m-I-flat-g608-mosaic.fits" ) then
           echo "Missing input: sn2026acna-26_11_04-pt5m-I-flat-g608-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g608"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g608"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026acna-26_11_04-pt5m-I-flat-g608-mosaic.fits" >&! "$batch_dir/logs/g608.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026acna-26_11_04-pt5m-I-flat-g608-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 609"

   if ( -d "$batch_dir/working/g609" ) then
       echo "Work folder already exists; skipping group 609"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026acna-26_10_30-pt5m-I-flat-g609-mosaic.fits" ) then
           echo "Missing input: sn2026acna-26_10_30-pt5m-I-flat-g609-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g609"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g609"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026acna-26_10_30-pt5m-I-flat-g609-mosaic.fits" >&! "$batch_dir/logs/g609.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026acna-26_10_30-pt5m-I-flat-g609-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2388"

   if ( -d "$batch_dir/working/g2388" ) then
       echo "Work folder already exists; skipping group 2388"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_10_01-east-16-B-flat-g2388-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_10_01-east-16-B-flat-g2388-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2388"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2388"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_10_01-east-16-B-flat-g2388-mosaic.fits" >&! "$batch_dir/logs/g2388.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_10_01-east-16-B-flat-g2388-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2389"

   if ( -d "$batch_dir/working/g2389" ) then
       echo "Work folder already exists; skipping group 2389"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_10_01-east-16-V-flat-g2389-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_10_01-east-16-V-flat-g2389-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2389"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2389"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_10_01-east-16-V-flat-g2389-mosaic.fits" >&! "$batch_dir/logs/g2389.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_10_01-east-16-V-flat-g2389-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2390"

   if ( -d "$batch_dir/working/g2390" ) then
       echo "Work folder already exists; skipping group 2390"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_10_01-east-16-r-flat-g2390-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_10_01-east-16-r-flat-g2390-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2390"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2390"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_10_01-east-16-r-flat-g2390-mosaic.fits" >&! "$batch_dir/logs/g2390.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_10_01-east-16-r-flat-g2390-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2391"

   if ( -d "$batch_dir/working/g2391" ) then
       echo "Work folder already exists; skipping group 2391"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026acna-26_10_01-east-16-B-flat-g2391-mosaic.fits" ) then
           echo "Missing input: sn2026acna-26_10_01-east-16-B-flat-g2391-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2391"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2391"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026acna-26_10_01-east-16-B-flat-g2391-mosaic.fits" >&! "$batch_dir/logs/g2391.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026acna-26_10_01-east-16-B-flat-g2391-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2392"

   if ( -d "$batch_dir/working/g2392" ) then
       echo "Work folder already exists; skipping group 2392"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026acna-26_10_01-east-16-V-flat-g2392-mosaic.fits" ) then
           echo "Missing input: sn2026acna-26_10_01-east-16-V-flat-g2392-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2392"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2392"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026acna-26_10_01-east-16-V-flat-g2392-mosaic.fits" >&! "$batch_dir/logs/g2392.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026acna-26_10_01-east-16-V-flat-g2392-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2393"

   if ( -d "$batch_dir/working/g2393" ) then
       echo "Work folder already exists; skipping group 2393"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026acna-26_10_01-east-16-V-flat-g2393-mosaic.fits" ) then
           echo "Missing input: sn2026acna-26_10_01-east-16-V-flat-g2393-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2393"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2393"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026acna-26_10_01-east-16-V-flat-g2393-mosaic.fits" >&! "$batch_dir/logs/g2393.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026acna-26_10_01-east-16-V-flat-g2393-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2394"

   if ( -d "$batch_dir/working/g2394" ) then
       echo "Work folder already exists; skipping group 2394"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026acna-26_10_01-east-16-r-flat-g2394-mosaic.fits" ) then
           echo "Missing input: sn2026acna-26_10_01-east-16-r-flat-g2394-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2394"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2394"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026acna-26_10_01-east-16-r-flat-g2394-mosaic.fits" >&! "$batch_dir/logs/g2394.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026acna-26_10_01-east-16-r-flat-g2394-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2395"

   if ( -d "$batch_dir/working/g2395" ) then
       echo "Work folder already exists; skipping group 2395"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026acna-26_10_30-pt5m-V-flat-g2395-mosaic.fits" ) then
           echo "Missing input: sn2026acna-26_10_30-pt5m-V-flat-g2395-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2395"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2395"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026acna-26_10_30-pt5m-V-flat-g2395-mosaic.fits" >&! "$batch_dir/logs/g2395.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026acna-26_10_30-pt5m-V-flat-g2395-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2396"

   if ( -d "$batch_dir/working/g2396" ) then
       echo "Work folder already exists; skipping group 2396"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026acna-26_11_04-pt5m-V-flat-g2396-mosaic.fits" ) then
           echo "Missing input: sn2026acna-26_11_04-pt5m-V-flat-g2396-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2396"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2396"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026acna-26_11_04-pt5m-V-flat-g2396-mosaic.fits" >&! "$batch_dir/logs/g2396.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026acna-26_11_04-pt5m-V-flat-g2396-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2645"

   if ( -d "$batch_dir/working/g2645" ) then
       echo "Work folder already exists; skipping group 2645"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_11_14-east-16-V-flat-g2645-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_11_14-east-16-V-flat-g2645-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2645"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2645"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_11_14-east-16-V-flat-g2645-mosaic.fits" >&! "$batch_dir/logs/g2645.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_11_14-east-16-V-flat-g2645-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2646"

   if ( -d "$batch_dir/working/g2646" ) then
       echo "Work folder already exists; skipping group 2646"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_11_14-east-16-B-flat-g2646-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_11_14-east-16-B-flat-g2646-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2646"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2646"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_11_14-east-16-B-flat-g2646-mosaic.fits" >&! "$batch_dir/logs/g2646.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_11_14-east-16-B-flat-g2646-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2647"

   if ( -d "$batch_dir/working/g2647" ) then
       echo "Work folder already exists; skipping group 2647"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_11_14-east-16-r-flat-g2647-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_11_14-east-16-r-flat-g2647-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2647"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2647"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_11_14-east-16-r-flat-g2647-mosaic.fits" >&! "$batch_dir/logs/g2647.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_11_14-east-16-r-flat-g2647-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2648"

   if ( -d "$batch_dir/working/g2648" ) then
       echo "Work folder already exists; skipping group 2648"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_11_13-east-16-V-flat-g2648-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_11_13-east-16-V-flat-g2648-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2648"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2648"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_11_13-east-16-V-flat-g2648-mosaic.fits" >&! "$batch_dir/logs/g2648.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_11_13-east-16-V-flat-g2648-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2649"

   if ( -d "$batch_dir/working/g2649" ) then
       echo "Work folder already exists; skipping group 2649"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_11_13-east-16-B-flat-g2649-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_11_13-east-16-B-flat-g2649-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2649"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2649"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_11_13-east-16-B-flat-g2649-mosaic.fits" >&! "$batch_dir/logs/g2649.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_11_13-east-16-B-flat-g2649-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2650"

   if ( -d "$batch_dir/working/g2650" ) then
       echo "Work folder already exists; skipping group 2650"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_11_13-east-16-r-flat-g2650-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_11_13-east-16-r-flat-g2650-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2650"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2650"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_11_13-east-16-r-flat-g2650-mosaic.fits" >&! "$batch_dir/logs/g2650.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_11_13-east-16-r-flat-g2650-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2651"

   if ( -d "$batch_dir/working/g2651" ) then
       echo "Work folder already exists; skipping group 2651"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_11_09-draco2-B-flat-g2651-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_11_09-draco2-B-flat-g2651-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2651"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2651"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_11_09-draco2-B-flat-g2651-mosaic.fits" >&! "$batch_dir/logs/g2651.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_11_09-draco2-B-flat-g2651-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2652"

   if ( -d "$batch_dir/working/g2652" ) then
       echo "Work folder already exists; skipping group 2652"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_11_09-draco2-V-flat-g2652-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_11_09-draco2-V-flat-g2652-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2652"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2652"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_11_09-draco2-V-flat-g2652-mosaic.fits" >&! "$batch_dir/logs/g2652.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_11_09-draco2-V-flat-g2652-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2653"

   if ( -d "$batch_dir/working/g2653" ) then
       echo "Work folder already exists; skipping group 2653"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aaiv-26_11_09-draco2-r-flat-g2653-mosaic.fits" ) then
           echo "Missing input: sn2026aaiv-26_11_09-draco2-r-flat-g2653-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2653"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2653"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aaiv-26_11_09-draco2-r-flat-g2653-mosaic.fits" >&! "$batch_dir/logs/g2653.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aaiv-26_11_09-draco2-r-flat-g2653-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2654"

   if ( -d "$batch_dir/working/g2654" ) then
       echo "Work folder already exists; skipping group 2654"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026acna-26_11_09-draco2-V-flat-g2654-mosaic.fits" ) then
           echo "Missing input: sn2026acna-26_11_09-draco2-V-flat-g2654-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2654"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2654"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026acna-26_11_09-draco2-V-flat-g2654-mosaic.fits" >&! "$batch_dir/logs/g2654.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026acna-26_11_09-draco2-V-flat-g2654-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2655"

   if ( -d "$batch_dir/working/g2655" ) then
       echo "Work folder already exists; skipping group 2655"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026aeiv-26_11_09-draco2-V-flat-g2655-mosaic.fits" ) then
           echo "Missing input: sn2026aeiv-26_11_09-draco2-V-flat-g2655-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2655"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2655"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026aeiv-26_11_09-draco2-V-flat-g2655-mosaic.fits" >&! "$batch_dir/logs/g2655.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026aeiv-26_11_09-draco2-V-flat-g2655-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   
