#!/bin/csh -f
set batch_dir = "$cwd"
mkdir -p working logs
if ( $status != 0 ) exit 1

   echo "Processing group 1412"

   if ( -d "$batch_dir/working/g1412" ) then
       echo "Work folder already exists; skipping group 1412"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_06-pt5m-B-flat-g1412-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_06-pt5m-B-flat-g1412-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1412"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1412"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_06-pt5m-B-flat-g1412-mosaic.fits" >&! "$batch_dir/logs/g1412.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_06-pt5m-B-flat-g1412-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1413"

   if ( -d "$batch_dir/working/g1413" ) then
       echo "Work folder already exists; skipping group 1413"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_06-pt5m-V-flat-g1413-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_06-pt5m-V-flat-g1413-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1413"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1413"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_06-pt5m-V-flat-g1413-mosaic.fits" >&! "$batch_dir/logs/g1413.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_06-pt5m-V-flat-g1413-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1416"

   if ( -d "$batch_dir/working/g1416" ) then
       echo "Work folder already exists; skipping group 1416"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_08-pt5m-B-flat-g1416-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_08-pt5m-B-flat-g1416-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1416"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1416"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_08-pt5m-B-flat-g1416-mosaic.fits" >&! "$batch_dir/logs/g1416.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_08-pt5m-B-flat-g1416-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1417"

   if ( -d "$batch_dir/working/g1417" ) then
       echo "Work folder already exists; skipping group 1417"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_08-pt5m-V-flat-g1417-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_08-pt5m-V-flat-g1417-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1417"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1417"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_08-pt5m-V-flat-g1417-mosaic.fits" >&! "$batch_dir/logs/g1417.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_08-pt5m-V-flat-g1417-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1419"

   if ( -d "$batch_dir/working/g1419" ) then
       echo "Work folder already exists; skipping group 1419"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_12-pt5m-B-flat-g1419-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_12-pt5m-B-flat-g1419-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1419"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1419"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_12-pt5m-B-flat-g1419-mosaic.fits" >&! "$batch_dir/logs/g1419.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_12-pt5m-B-flat-g1419-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1420"

   if ( -d "$batch_dir/working/g1420" ) then
       echo "Work folder already exists; skipping group 1420"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_12-pt5m-V-flat-g1420-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_12-pt5m-V-flat-g1420-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1420"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1420"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_12-pt5m-V-flat-g1420-mosaic.fits" >&! "$batch_dir/logs/g1420.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_12-pt5m-V-flat-g1420-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1428"

   if ( -d "$batch_dir/working/g1428" ) then
       echo "Work folder already exists; skipping group 1428"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_17-pt5m-V-flat-g1428-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_17-pt5m-V-flat-g1428-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1428"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1428"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_17-pt5m-V-flat-g1428-mosaic.fits" >&! "$batch_dir/logs/g1428.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_17-pt5m-V-flat-g1428-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1431"

   if ( -d "$batch_dir/working/g1431" ) then
       echo "Work folder already exists; skipping group 1431"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_18-pt5m-B-flat-g1431-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_18-pt5m-B-flat-g1431-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1431"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1431"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_18-pt5m-B-flat-g1431-mosaic.fits" >&! "$batch_dir/logs/g1431.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_18-pt5m-B-flat-g1431-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1432"

   if ( -d "$batch_dir/working/g1432" ) then
       echo "Work folder already exists; skipping group 1432"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_18-pt5m-V-flat-g1432-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_18-pt5m-V-flat-g1432-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1432"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1432"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_18-pt5m-V-flat-g1432-mosaic.fits" >&! "$batch_dir/logs/g1432.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_18-pt5m-V-flat-g1432-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1437"

   if ( -d "$batch_dir/working/g1437" ) then
       echo "Work folder already exists; skipping group 1437"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_22-pt5m-B-flat-g1437-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_22-pt5m-B-flat-g1437-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1437"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1437"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_22-pt5m-B-flat-g1437-mosaic.fits" >&! "$batch_dir/logs/g1437.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_22-pt5m-B-flat-g1437-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1438"

   if ( -d "$batch_dir/working/g1438" ) then
       echo "Work folder already exists; skipping group 1438"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_22-pt5m-V-flat-g1438-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_22-pt5m-V-flat-g1438-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1438"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1438"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_22-pt5m-V-flat-g1438-mosaic.fits" >&! "$batch_dir/logs/g1438.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_22-pt5m-V-flat-g1438-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1439"

   if ( -d "$batch_dir/working/g1439" ) then
       echo "Work folder already exists; skipping group 1439"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_24-pt5m-B-flat-g1439-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_24-pt5m-B-flat-g1439-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1439"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1439"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_24-pt5m-B-flat-g1439-mosaic.fits" >&! "$batch_dir/logs/g1439.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_24-pt5m-B-flat-g1439-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1440"

   if ( -d "$batch_dir/working/g1440" ) then
       echo "Work folder already exists; skipping group 1440"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_24-pt5m-V-flat-g1440-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_24-pt5m-V-flat-g1440-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1440"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1440"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_24-pt5m-V-flat-g1440-mosaic.fits" >&! "$batch_dir/logs/g1440.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_24-pt5m-V-flat-g1440-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1441"

   if ( -d "$batch_dir/working/g1441" ) then
       echo "Work folder already exists; skipping group 1441"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_25-pt5m-V-flat-g1441-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_25-pt5m-V-flat-g1441-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1441"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1441"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_25-pt5m-V-flat-g1441-mosaic.fits" >&! "$batch_dir/logs/g1441.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_25-pt5m-V-flat-g1441-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1442"

   if ( -d "$batch_dir/working/g1442" ) then
       echo "Work folder already exists; skipping group 1442"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_26-pt5m-B-flat-g1442-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_26-pt5m-B-flat-g1442-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1442"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1442"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_26-pt5m-B-flat-g1442-mosaic.fits" >&! "$batch_dir/logs/g1442.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_26-pt5m-B-flat-g1442-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1443"

   if ( -d "$batch_dir/working/g1443" ) then
       echo "Work folder already exists; skipping group 1443"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_26-pt5m-V-flat-g1443-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_26-pt5m-V-flat-g1443-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1443"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1443"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_26-pt5m-V-flat-g1443-mosaic.fits" >&! "$batch_dir/logs/g1443.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_26-pt5m-V-flat-g1443-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1444"

   if ( -d "$batch_dir/working/g1444" ) then
       echo "Work folder already exists; skipping group 1444"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_27-pt5m-B-flat-g1444-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_27-pt5m-B-flat-g1444-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1444"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1444"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_27-pt5m-B-flat-g1444-mosaic.fits" >&! "$batch_dir/logs/g1444.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_27-pt5m-B-flat-g1444-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1445"

   if ( -d "$batch_dir/working/g1445" ) then
       echo "Work folder already exists; skipping group 1445"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_27-pt5m-V-flat-g1445-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_27-pt5m-V-flat-g1445-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1445"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1445"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_27-pt5m-V-flat-g1445-mosaic.fits" >&! "$batch_dir/logs/g1445.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_27-pt5m-V-flat-g1445-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1449"

   if ( -d "$batch_dir/working/g1449" ) then
       echo "Work folder already exists; skipping group 1449"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_29-pt5m-B-flat-g1449-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_29-pt5m-B-flat-g1449-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1449"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1449"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_29-pt5m-B-flat-g1449-mosaic.fits" >&! "$batch_dir/logs/g1449.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_29-pt5m-B-flat-g1449-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1450"

   if ( -d "$batch_dir/working/g1450" ) then
       echo "Work folder already exists; skipping group 1450"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_11_29-pt5m-V-flat-g1450-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_11_29-pt5m-V-flat-g1450-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1450"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1450"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_11_29-pt5m-V-flat-g1450-mosaic.fits" >&! "$batch_dir/logs/g1450.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_11_29-pt5m-V-flat-g1450-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1457"

   if ( -d "$batch_dir/working/g1457" ) then
       echo "Work folder already exists; skipping group 1457"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019tgm-19_12_03-pt5m-V-flat-g1457-mosaic.fits" ) then
           echo "Missing input: sn2019tgm-19_12_03-pt5m-V-flat-g1457-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1457"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1457"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019tgm-19_12_03-pt5m-V-flat-g1457-mosaic.fits" >&! "$batch_dir/logs/g1457.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019tgm-19_12_03-pt5m-V-flat-g1457-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1464"

   if ( -d "$batch_dir/working/g1464" ) then
       echo "Work folder already exists; skipping group 1464"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_20-pt5m-B-flat-g1464-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_20-pt5m-B-flat-g1464-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1464"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1464"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_20-pt5m-B-flat-g1464-mosaic.fits" >&! "$batch_dir/logs/g1464.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_20-pt5m-B-flat-g1464-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1466"

   if ( -d "$batch_dir/working/g1466" ) then
       echo "Work folder already exists; skipping group 1466"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_20-pt5m-R-flat-g1466-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_20-pt5m-R-flat-g1466-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1466"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1466"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_20-pt5m-R-flat-g1466-mosaic.fits" >&! "$batch_dir/logs/g1466.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_20-pt5m-R-flat-g1466-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1467"

   if ( -d "$batch_dir/working/g1467" ) then
       echo "Work folder already exists; skipping group 1467"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_20-pt5m-V-flat-g1467-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_20-pt5m-V-flat-g1467-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1467"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1467"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_20-pt5m-V-flat-g1467-mosaic.fits" >&! "$batch_dir/logs/g1467.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_20-pt5m-V-flat-g1467-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1475"

   if ( -d "$batch_dir/working/g1475" ) then
       echo "Work folder already exists; skipping group 1475"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_25-pt5m-B-flat-g1475-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_25-pt5m-B-flat-g1475-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1475"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1475"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_25-pt5m-B-flat-g1475-mosaic.fits" >&! "$batch_dir/logs/g1475.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_25-pt5m-B-flat-g1475-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1476"

   if ( -d "$batch_dir/working/g1476" ) then
       echo "Work folder already exists; skipping group 1476"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_25-pt5m-I-flat-g1476-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_25-pt5m-I-flat-g1476-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1476"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1476"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_25-pt5m-I-flat-g1476-mosaic.fits" >&! "$batch_dir/logs/g1476.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_25-pt5m-I-flat-g1476-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1477"

   if ( -d "$batch_dir/working/g1477" ) then
       echo "Work folder already exists; skipping group 1477"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_25-pt5m-R-flat-g1477-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_25-pt5m-R-flat-g1477-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1477"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1477"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_25-pt5m-R-flat-g1477-mosaic.fits" >&! "$batch_dir/logs/g1477.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_25-pt5m-R-flat-g1477-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1482"

   if ( -d "$batch_dir/working/g1482" ) then
       echo "Work folder already exists; skipping group 1482"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_26-pt5m-B-flat-g1482-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_26-pt5m-B-flat-g1482-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1482"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1482"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_26-pt5m-B-flat-g1482-mosaic.fits" >&! "$batch_dir/logs/g1482.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_26-pt5m-B-flat-g1482-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1484"

   if ( -d "$batch_dir/working/g1484" ) then
       echo "Work folder already exists; skipping group 1484"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_26-pt5m-R-flat-g1484-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_26-pt5m-R-flat-g1484-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1484"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1484"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_26-pt5m-R-flat-g1484-mosaic.fits" >&! "$batch_dir/logs/g1484.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_26-pt5m-R-flat-g1484-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1485"

   if ( -d "$batch_dir/working/g1485" ) then
       echo "Work folder already exists; skipping group 1485"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_26-pt5m-V-flat-g1485-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_26-pt5m-V-flat-g1485-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1485"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1485"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_26-pt5m-V-flat-g1485-mosaic.fits" >&! "$batch_dir/logs/g1485.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_26-pt5m-V-flat-g1485-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1486"

   if ( -d "$batch_dir/working/g1486" ) then
       echo "Work folder already exists; skipping group 1486"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_27-pt5m-B-flat-g1486-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_27-pt5m-B-flat-g1486-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1486"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1486"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_27-pt5m-B-flat-g1486-mosaic.fits" >&! "$batch_dir/logs/g1486.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_27-pt5m-B-flat-g1486-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1488"

   if ( -d "$batch_dir/working/g1488" ) then
       echo "Work folder already exists; skipping group 1488"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_27-pt5m-R-flat-g1488-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_27-pt5m-R-flat-g1488-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1488"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1488"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_27-pt5m-R-flat-g1488-mosaic.fits" >&! "$batch_dir/logs/g1488.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_27-pt5m-R-flat-g1488-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1489"

   if ( -d "$batch_dir/working/g1489" ) then
       echo "Work folder already exists; skipping group 1489"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_27-pt5m-V-flat-g1489-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_27-pt5m-V-flat-g1489-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1489"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1489"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_27-pt5m-V-flat-g1489-mosaic.fits" >&! "$batch_dir/logs/g1489.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_27-pt5m-V-flat-g1489-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1493"

   if ( -d "$batch_dir/working/g1493" ) then
       echo "Work folder already exists; skipping group 1493"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_28-pt5m-B-flat-g1493-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_28-pt5m-B-flat-g1493-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1493"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1493"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_28-pt5m-B-flat-g1493-mosaic.fits" >&! "$batch_dir/logs/g1493.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_28-pt5m-B-flat-g1493-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1494"

   if ( -d "$batch_dir/working/g1494" ) then
       echo "Work folder already exists; skipping group 1494"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_28-pt5m-I-flat-g1494-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_28-pt5m-I-flat-g1494-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1494"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1494"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_28-pt5m-I-flat-g1494-mosaic.fits" >&! "$batch_dir/logs/g1494.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_28-pt5m-I-flat-g1494-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1495"

   if ( -d "$batch_dir/working/g1495" ) then
       echo "Work folder already exists; skipping group 1495"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_28-pt5m-R-flat-g1495-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_28-pt5m-R-flat-g1495-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1495"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1495"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_28-pt5m-R-flat-g1495-mosaic.fits" >&! "$batch_dir/logs/g1495.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_28-pt5m-R-flat-g1495-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1496"

   if ( -d "$batch_dir/working/g1496" ) then
       echo "Work folder already exists; skipping group 1496"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_28-pt5m-V-flat-g1496-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_28-pt5m-V-flat-g1496-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1496"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1496"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_28-pt5m-V-flat-g1496-mosaic.fits" >&! "$batch_dir/logs/g1496.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_28-pt5m-V-flat-g1496-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1497"

   if ( -d "$batch_dir/working/g1497" ) then
       echo "Work folder already exists; skipping group 1497"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_29-pt5m-B-flat-g1497-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_29-pt5m-B-flat-g1497-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1497"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1497"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_29-pt5m-B-flat-g1497-mosaic.fits" >&! "$batch_dir/logs/g1497.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_29-pt5m-B-flat-g1497-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1498"

   if ( -d "$batch_dir/working/g1498" ) then
       echo "Work folder already exists; skipping group 1498"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_29-pt5m-I-flat-g1498-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_29-pt5m-I-flat-g1498-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1498"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1498"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_29-pt5m-I-flat-g1498-mosaic.fits" >&! "$batch_dir/logs/g1498.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_29-pt5m-I-flat-g1498-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1499"

   if ( -d "$batch_dir/working/g1499" ) then
       echo "Work folder already exists; skipping group 1499"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_29-pt5m-R-flat-g1499-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_29-pt5m-R-flat-g1499-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1499"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1499"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_29-pt5m-R-flat-g1499-mosaic.fits" >&! "$batch_dir/logs/g1499.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_29-pt5m-R-flat-g1499-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1500"

   if ( -d "$batch_dir/working/g1500" ) then
       echo "Work folder already exists; skipping group 1500"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_29-pt5m-V-flat-g1500-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_29-pt5m-V-flat-g1500-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1500"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1500"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_29-pt5m-V-flat-g1500-mosaic.fits" >&! "$batch_dir/logs/g1500.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_29-pt5m-V-flat-g1500-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1501"

   if ( -d "$batch_dir/working/g1501" ) then
       echo "Work folder already exists; skipping group 1501"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_30-pt5m-B-flat-g1501-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_30-pt5m-B-flat-g1501-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1501"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1501"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_30-pt5m-B-flat-g1501-mosaic.fits" >&! "$batch_dir/logs/g1501.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_30-pt5m-B-flat-g1501-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1502"

   if ( -d "$batch_dir/working/g1502" ) then
       echo "Work folder already exists; skipping group 1502"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_30-pt5m-I-flat-g1502-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_30-pt5m-I-flat-g1502-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1502"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1502"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_30-pt5m-I-flat-g1502-mosaic.fits" >&! "$batch_dir/logs/g1502.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_30-pt5m-I-flat-g1502-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1503"

   if ( -d "$batch_dir/working/g1503" ) then
       echo "Work folder already exists; skipping group 1503"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_30-pt5m-R-flat-g1503-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_30-pt5m-R-flat-g1503-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1503"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1503"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_30-pt5m-R-flat-g1503-mosaic.fits" >&! "$batch_dir/logs/g1503.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_30-pt5m-R-flat-g1503-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1504"

   if ( -d "$batch_dir/working/g1504" ) then
       echo "Work folder already exists; skipping group 1504"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_01_30-pt5m-V-flat-g1504-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_01_30-pt5m-V-flat-g1504-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1504"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1504"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_01_30-pt5m-V-flat-g1504-mosaic.fits" >&! "$batch_dir/logs/g1504.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_01_30-pt5m-V-flat-g1504-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1508"

   if ( -d "$batch_dir/working/g1508" ) then
       echo "Work folder already exists; skipping group 1508"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_07-pt5m-B-flat-g1508-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_07-pt5m-B-flat-g1508-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1508"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1508"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_07-pt5m-B-flat-g1508-mosaic.fits" >&! "$batch_dir/logs/g1508.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_07-pt5m-B-flat-g1508-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1509"

   if ( -d "$batch_dir/working/g1509" ) then
       echo "Work folder already exists; skipping group 1509"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_07-pt5m-I-flat-g1509-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_07-pt5m-I-flat-g1509-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1509"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1509"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_07-pt5m-I-flat-g1509-mosaic.fits" >&! "$batch_dir/logs/g1509.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_07-pt5m-I-flat-g1509-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1510"

   if ( -d "$batch_dir/working/g1510" ) then
       echo "Work folder already exists; skipping group 1510"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_07-pt5m-R-flat-g1510-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_07-pt5m-R-flat-g1510-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1510"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1510"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_07-pt5m-R-flat-g1510-mosaic.fits" >&! "$batch_dir/logs/g1510.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_07-pt5m-R-flat-g1510-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1511"

   if ( -d "$batch_dir/working/g1511" ) then
       echo "Work folder already exists; skipping group 1511"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_07-pt5m-V-flat-g1511-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_07-pt5m-V-flat-g1511-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1511"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1511"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_07-pt5m-V-flat-g1511-mosaic.fits" >&! "$batch_dir/logs/g1511.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_07-pt5m-V-flat-g1511-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1512"

   if ( -d "$batch_dir/working/g1512" ) then
       echo "Work folder already exists; skipping group 1512"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_11-pt5m-B-flat-g1512-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_11-pt5m-B-flat-g1512-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1512"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1512"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_11-pt5m-B-flat-g1512-mosaic.fits" >&! "$batch_dir/logs/g1512.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_11-pt5m-B-flat-g1512-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1513"

   if ( -d "$batch_dir/working/g1513" ) then
       echo "Work folder already exists; skipping group 1513"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_11-pt5m-I-flat-g1513-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_11-pt5m-I-flat-g1513-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1513"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1513"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_11-pt5m-I-flat-g1513-mosaic.fits" >&! "$batch_dir/logs/g1513.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_11-pt5m-I-flat-g1513-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1514"

   if ( -d "$batch_dir/working/g1514" ) then
       echo "Work folder already exists; skipping group 1514"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_11-pt5m-R-flat-g1514-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_11-pt5m-R-flat-g1514-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1514"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1514"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_11-pt5m-R-flat-g1514-mosaic.fits" >&! "$batch_dir/logs/g1514.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_11-pt5m-R-flat-g1514-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1515"

   if ( -d "$batch_dir/working/g1515" ) then
       echo "Work folder already exists; skipping group 1515"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_11-pt5m-V-flat-g1515-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_11-pt5m-V-flat-g1515-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1515"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1515"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_11-pt5m-V-flat-g1515-mosaic.fits" >&! "$batch_dir/logs/g1515.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_11-pt5m-V-flat-g1515-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1516"

   if ( -d "$batch_dir/working/g1516" ) then
       echo "Work folder already exists; skipping group 1516"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_16-pt5m-B-flat-g1516-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_16-pt5m-B-flat-g1516-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1516"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1516"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_16-pt5m-B-flat-g1516-mosaic.fits" >&! "$batch_dir/logs/g1516.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_16-pt5m-B-flat-g1516-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1517"

   if ( -d "$batch_dir/working/g1517" ) then
       echo "Work folder already exists; skipping group 1517"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_16-pt5m-I-flat-g1517-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_16-pt5m-I-flat-g1517-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1517"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1517"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_16-pt5m-I-flat-g1517-mosaic.fits" >&! "$batch_dir/logs/g1517.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_16-pt5m-I-flat-g1517-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1518"

   if ( -d "$batch_dir/working/g1518" ) then
       echo "Work folder already exists; skipping group 1518"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_16-pt5m-R-flat-g1518-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_16-pt5m-R-flat-g1518-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1518"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1518"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_16-pt5m-R-flat-g1518-mosaic.fits" >&! "$batch_dir/logs/g1518.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_16-pt5m-R-flat-g1518-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1519"

   if ( -d "$batch_dir/working/g1519" ) then
       echo "Work folder already exists; skipping group 1519"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_16-pt5m-V-flat-g1519-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_16-pt5m-V-flat-g1519-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1519"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1519"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_16-pt5m-V-flat-g1519-mosaic.fits" >&! "$batch_dir/logs/g1519.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_16-pt5m-V-flat-g1519-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1521"

   if ( -d "$batch_dir/working/g1521" ) then
       echo "Work folder already exists; skipping group 1521"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_17-pt5m-I-flat-g1521-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_17-pt5m-I-flat-g1521-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1521"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1521"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_17-pt5m-I-flat-g1521-mosaic.fits" >&! "$batch_dir/logs/g1521.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_17-pt5m-I-flat-g1521-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1522"

   if ( -d "$batch_dir/working/g1522" ) then
       echo "Work folder already exists; skipping group 1522"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_02_17-pt5m-R-flat-g1522-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_02_17-pt5m-R-flat-g1522-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1522"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1522"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_02_17-pt5m-R-flat-g1522-mosaic.fits" >&! "$batch_dir/logs/g1522.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_02_17-pt5m-R-flat-g1522-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1524"

   if ( -d "$batch_dir/working/g1524" ) then
       echo "Work folder already exists; skipping group 1524"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_03_03-pt5m-I-flat-g1524-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_03_03-pt5m-I-flat-g1524-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1524"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1524"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_03_03-pt5m-I-flat-g1524-mosaic.fits" >&! "$batch_dir/logs/g1524.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_03_03-pt5m-I-flat-g1524-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 1525"

   if ( -d "$batch_dir/working/g1525" ) then
       echo "Work folder already exists; skipping group 1525"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2020se-20_03_03-pt5m-R-flat-g1525-mosaic.fits" ) then
           echo "Missing input: sn2020se-20_03_03-pt5m-R-flat-g1525-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g1525"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g1525"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2020se-20_03_03-pt5m-R-flat-g1525-mosaic.fits" >&! "$batch_dir/logs/g1525.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2020se-20_03_03-pt5m-R-flat-g1525-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2398"

   if ( -d "$batch_dir/working/g2398" ) then
       echo "Work folder already exists; skipping group 2398"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_01_30-pt5m-I-flat-g2398-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_01_30-pt5m-I-flat-g2398-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2398"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2398"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_01_30-pt5m-I-flat-g2398-mosaic.fits" >&! "$batch_dir/logs/g2398.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_01_30-pt5m-I-flat-g2398-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2399"

   if ( -d "$batch_dir/working/g2399" ) then
       echo "Work folder already exists; skipping group 2399"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_01_30-pt5m-R-flat-g2399-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_01_30-pt5m-R-flat-g2399-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2399"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2399"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_01_30-pt5m-R-flat-g2399-mosaic.fits" >&! "$batch_dir/logs/g2399.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_01_30-pt5m-R-flat-g2399-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2400"

   if ( -d "$batch_dir/working/g2400" ) then
       echo "Work folder already exists; skipping group 2400"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_01_30-pt5m-V-flat-g2400-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_01_30-pt5m-V-flat-g2400-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2400"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2400"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_01_30-pt5m-V-flat-g2400-mosaic.fits" >&! "$batch_dir/logs/g2400.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_01_30-pt5m-V-flat-g2400-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2402"

   if ( -d "$batch_dir/working/g2402" ) then
       echo "Work folder already exists; skipping group 2402"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_01_31-pt5m-I-flat-g2402-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_01_31-pt5m-I-flat-g2402-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2402"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2402"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_01_31-pt5m-I-flat-g2402-mosaic.fits" >&! "$batch_dir/logs/g2402.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_01_31-pt5m-I-flat-g2402-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2403"

   if ( -d "$batch_dir/working/g2403" ) then
       echo "Work folder already exists; skipping group 2403"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_01_31-pt5m-R-flat-g2403-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_01_31-pt5m-R-flat-g2403-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2403"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2403"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_01_31-pt5m-R-flat-g2403-mosaic.fits" >&! "$batch_dir/logs/g2403.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_01_31-pt5m-R-flat-g2403-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2404"

   if ( -d "$batch_dir/working/g2404" ) then
       echo "Work folder already exists; skipping group 2404"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_01_31-pt5m-V-flat-g2404-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_01_31-pt5m-V-flat-g2404-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2404"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2404"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_01_31-pt5m-V-flat-g2404-mosaic.fits" >&! "$batch_dir/logs/g2404.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_01_31-pt5m-V-flat-g2404-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2406"

   if ( -d "$batch_dir/working/g2406" ) then
       echo "Work folder already exists; skipping group 2406"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_06-pt5m-I-flat-g2406-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_06-pt5m-I-flat-g2406-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2406"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2406"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_06-pt5m-I-flat-g2406-mosaic.fits" >&! "$batch_dir/logs/g2406.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_06-pt5m-I-flat-g2406-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2407"

   if ( -d "$batch_dir/working/g2407" ) then
       echo "Work folder already exists; skipping group 2407"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_06-pt5m-R-flat-g2407-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_06-pt5m-R-flat-g2407-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2407"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2407"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_06-pt5m-R-flat-g2407-mosaic.fits" >&! "$batch_dir/logs/g2407.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_06-pt5m-R-flat-g2407-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2408"

   if ( -d "$batch_dir/working/g2408" ) then
       echo "Work folder already exists; skipping group 2408"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_06-pt5m-V-flat-g2408-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_06-pt5m-V-flat-g2408-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2408"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2408"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_06-pt5m-V-flat-g2408-mosaic.fits" >&! "$batch_dir/logs/g2408.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_06-pt5m-V-flat-g2408-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2410"

   if ( -d "$batch_dir/working/g2410" ) then
       echo "Work folder already exists; skipping group 2410"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_09-pt5m-I-flat-g2410-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_09-pt5m-I-flat-g2410-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2410"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2410"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_09-pt5m-I-flat-g2410-mosaic.fits" >&! "$batch_dir/logs/g2410.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_09-pt5m-I-flat-g2410-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2411"

   if ( -d "$batch_dir/working/g2411" ) then
       echo "Work folder already exists; skipping group 2411"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_09-pt5m-R-flat-g2411-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_09-pt5m-R-flat-g2411-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2411"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2411"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_09-pt5m-R-flat-g2411-mosaic.fits" >&! "$batch_dir/logs/g2411.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_09-pt5m-R-flat-g2411-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2412"

   if ( -d "$batch_dir/working/g2412" ) then
       echo "Work folder already exists; skipping group 2412"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_09-pt5m-V-flat-g2412-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_09-pt5m-V-flat-g2412-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2412"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2412"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_09-pt5m-V-flat-g2412-mosaic.fits" >&! "$batch_dir/logs/g2412.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_09-pt5m-V-flat-g2412-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2414"

   if ( -d "$batch_dir/working/g2414" ) then
       echo "Work folder already exists; skipping group 2414"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_17-pt5m-I-flat-g2414-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_17-pt5m-I-flat-g2414-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2414"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2414"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_17-pt5m-I-flat-g2414-mosaic.fits" >&! "$batch_dir/logs/g2414.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_17-pt5m-I-flat-g2414-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2415"

   if ( -d "$batch_dir/working/g2415" ) then
       echo "Work folder already exists; skipping group 2415"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_17-pt5m-R-flat-g2415-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_17-pt5m-R-flat-g2415-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2415"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2415"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_17-pt5m-R-flat-g2415-mosaic.fits" >&! "$batch_dir/logs/g2415.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_17-pt5m-R-flat-g2415-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2416"

   if ( -d "$batch_dir/working/g2416" ) then
       echo "Work folder already exists; skipping group 2416"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_17-pt5m-V-flat-g2416-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_17-pt5m-V-flat-g2416-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2416"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2416"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_17-pt5m-V-flat-g2416-mosaic.fits" >&! "$batch_dir/logs/g2416.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_17-pt5m-V-flat-g2416-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2418"

   if ( -d "$batch_dir/working/g2418" ) then
       echo "Work folder already exists; skipping group 2418"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_20-pt5m-I-flat-g2418-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_20-pt5m-I-flat-g2418-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2418"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2418"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_20-pt5m-I-flat-g2418-mosaic.fits" >&! "$batch_dir/logs/g2418.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_20-pt5m-I-flat-g2418-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2419"

   if ( -d "$batch_dir/working/g2419" ) then
       echo "Work folder already exists; skipping group 2419"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_20-pt5m-R-flat-g2419-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_20-pt5m-R-flat-g2419-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2419"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2419"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_20-pt5m-R-flat-g2419-mosaic.fits" >&! "$batch_dir/logs/g2419.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_20-pt5m-R-flat-g2419-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2420"

   if ( -d "$batch_dir/working/g2420" ) then
       echo "Work folder already exists; skipping group 2420"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_20-pt5m-V-flat-g2420-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_20-pt5m-V-flat-g2420-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2420"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2420"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_20-pt5m-V-flat-g2420-mosaic.fits" >&! "$batch_dir/logs/g2420.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_20-pt5m-V-flat-g2420-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2421"

   if ( -d "$batch_dir/working/g2421" ) then
       echo "Work folder already exists; skipping group 2421"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_22-east-16-B-flat-g2421-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_22-east-16-B-flat-g2421-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2421"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2421"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_22-east-16-B-flat-g2421-mosaic.fits" >&! "$batch_dir/logs/g2421.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_22-east-16-B-flat-g2421-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2422"

   if ( -d "$batch_dir/working/g2422" ) then
       echo "Work folder already exists; skipping group 2422"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_22-east-16-B-flat-g2422-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_22-east-16-B-flat-g2422-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2422"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2422"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_22-east-16-B-flat-g2422-mosaic.fits" >&! "$batch_dir/logs/g2422.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_22-east-16-B-flat-g2422-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2423"

   if ( -d "$batch_dir/working/g2423" ) then
       echo "Work folder already exists; skipping group 2423"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_22-east-16-V-flat-g2423-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_22-east-16-V-flat-g2423-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2423"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2423"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_22-east-16-V-flat-g2423-mosaic.fits" >&! "$batch_dir/logs/g2423.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_22-east-16-V-flat-g2423-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2424"

   if ( -d "$batch_dir/working/g2424" ) then
       echo "Work folder already exists; skipping group 2424"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_22-east-16-r-flat-g2424-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_22-east-16-r-flat-g2424-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2424"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2424"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_22-east-16-r-flat-g2424-mosaic.fits" >&! "$batch_dir/logs/g2424.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_22-east-16-r-flat-g2424-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2426"

   if ( -d "$batch_dir/working/g2426" ) then
       echo "Work folder already exists; skipping group 2426"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_22-pt5m-I-flat-g2426-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_22-pt5m-I-flat-g2426-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2426"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2426"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_22-pt5m-I-flat-g2426-mosaic.fits" >&! "$batch_dir/logs/g2426.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_22-pt5m-I-flat-g2426-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2427"

   if ( -d "$batch_dir/working/g2427" ) then
       echo "Work folder already exists; skipping group 2427"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_22-pt5m-R-flat-g2427-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_22-pt5m-R-flat-g2427-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2427"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2427"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_22-pt5m-R-flat-g2427-mosaic.fits" >&! "$batch_dir/logs/g2427.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_22-pt5m-R-flat-g2427-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2428"

   if ( -d "$batch_dir/working/g2428" ) then
       echo "Work folder already exists; skipping group 2428"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_22-pt5m-V-flat-g2428-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_22-pt5m-V-flat-g2428-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2428"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2428"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_22-pt5m-V-flat-g2428-mosaic.fits" >&! "$batch_dir/logs/g2428.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_22-pt5m-V-flat-g2428-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2430"

   if ( -d "$batch_dir/working/g2430" ) then
       echo "Work folder already exists; skipping group 2430"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_23-pt5m-I-flat-g2430-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_23-pt5m-I-flat-g2430-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2430"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2430"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_23-pt5m-I-flat-g2430-mosaic.fits" >&! "$batch_dir/logs/g2430.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_23-pt5m-I-flat-g2430-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2431"

   if ( -d "$batch_dir/working/g2431" ) then
       echo "Work folder already exists; skipping group 2431"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_23-pt5m-R-flat-g2431-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_23-pt5m-R-flat-g2431-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2431"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2431"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_23-pt5m-R-flat-g2431-mosaic.fits" >&! "$batch_dir/logs/g2431.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_23-pt5m-R-flat-g2431-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2432"

   if ( -d "$batch_dir/working/g2432" ) then
       echo "Work folder already exists; skipping group 2432"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_02_23-pt5m-V-flat-g2432-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_02_23-pt5m-V-flat-g2432-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2432"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2432"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_02_23-pt5m-V-flat-g2432-mosaic.fits" >&! "$batch_dir/logs/g2432.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_02_23-pt5m-V-flat-g2432-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2434"

   if ( -d "$batch_dir/working/g2434" ) then
       echo "Work folder already exists; skipping group 2434"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_03-east-16-V-flat-g2434-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_03-east-16-V-flat-g2434-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2434"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2434"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_03-east-16-V-flat-g2434-mosaic.fits" >&! "$batch_dir/logs/g2434.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_03-east-16-V-flat-g2434-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2435"

   if ( -d "$batch_dir/working/g2435" ) then
       echo "Work folder already exists; skipping group 2435"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_03-east-16-r-flat-g2435-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_03-east-16-r-flat-g2435-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2435"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2435"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_03-east-16-r-flat-g2435-mosaic.fits" >&! "$batch_dir/logs/g2435.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_03-east-16-r-flat-g2435-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2437"

   if ( -d "$batch_dir/working/g2437" ) then
       echo "Work folder already exists; skipping group 2437"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_06-pt5m-I-flat-g2437-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_06-pt5m-I-flat-g2437-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2437"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2437"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_06-pt5m-I-flat-g2437-mosaic.fits" >&! "$batch_dir/logs/g2437.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_06-pt5m-I-flat-g2437-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2438"

   if ( -d "$batch_dir/working/g2438" ) then
       echo "Work folder already exists; skipping group 2438"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_06-pt5m-R-flat-g2438-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_06-pt5m-R-flat-g2438-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2438"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2438"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_06-pt5m-R-flat-g2438-mosaic.fits" >&! "$batch_dir/logs/g2438.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_06-pt5m-R-flat-g2438-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2439"

   if ( -d "$batch_dir/working/g2439" ) then
       echo "Work folder already exists; skipping group 2439"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_06-pt5m-V-flat-g2439-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_06-pt5m-V-flat-g2439-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2439"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2439"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_06-pt5m-V-flat-g2439-mosaic.fits" >&! "$batch_dir/logs/g2439.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_06-pt5m-V-flat-g2439-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2441"

   if ( -d "$batch_dir/working/g2441" ) then
       echo "Work folder already exists; skipping group 2441"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_07-pt5m-I-flat-g2441-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_07-pt5m-I-flat-g2441-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2441"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2441"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_07-pt5m-I-flat-g2441-mosaic.fits" >&! "$batch_dir/logs/g2441.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_07-pt5m-I-flat-g2441-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2442"

   if ( -d "$batch_dir/working/g2442" ) then
       echo "Work folder already exists; skipping group 2442"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_07-pt5m-R-flat-g2442-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_07-pt5m-R-flat-g2442-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2442"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2442"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_07-pt5m-R-flat-g2442-mosaic.fits" >&! "$batch_dir/logs/g2442.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_07-pt5m-R-flat-g2442-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2443"

   if ( -d "$batch_dir/working/g2443" ) then
       echo "Work folder already exists; skipping group 2443"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_07-pt5m-V-flat-g2443-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_07-pt5m-V-flat-g2443-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2443"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2443"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_07-pt5m-V-flat-g2443-mosaic.fits" >&! "$batch_dir/logs/g2443.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_07-pt5m-V-flat-g2443-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2445"

   if ( -d "$batch_dir/working/g2445" ) then
       echo "Work folder already exists; skipping group 2445"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_08-pt5m-I-flat-g2445-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_08-pt5m-I-flat-g2445-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2445"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2445"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_08-pt5m-I-flat-g2445-mosaic.fits" >&! "$batch_dir/logs/g2445.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_08-pt5m-I-flat-g2445-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2446"

   if ( -d "$batch_dir/working/g2446" ) then
       echo "Work folder already exists; skipping group 2446"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_08-pt5m-R-flat-g2446-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_08-pt5m-R-flat-g2446-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2446"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2446"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_08-pt5m-R-flat-g2446-mosaic.fits" >&! "$batch_dir/logs/g2446.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_08-pt5m-R-flat-g2446-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2449"

   if ( -d "$batch_dir/working/g2449" ) then
       echo "Work folder already exists; skipping group 2449"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_10-pt5m-I-flat-g2449-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_10-pt5m-I-flat-g2449-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2449"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2449"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_10-pt5m-I-flat-g2449-mosaic.fits" >&! "$batch_dir/logs/g2449.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_10-pt5m-I-flat-g2449-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2450"

   if ( -d "$batch_dir/working/g2450" ) then
       echo "Work folder already exists; skipping group 2450"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_10-pt5m-R-flat-g2450-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_10-pt5m-R-flat-g2450-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2450"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2450"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_10-pt5m-R-flat-g2450-mosaic.fits" >&! "$batch_dir/logs/g2450.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_10-pt5m-R-flat-g2450-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2453"

   if ( -d "$batch_dir/working/g2453" ) then
       echo "Work folder already exists; skipping group 2453"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_12-pt5m-I-flat-g2453-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_12-pt5m-I-flat-g2453-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2453"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2453"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_12-pt5m-I-flat-g2453-mosaic.fits" >&! "$batch_dir/logs/g2453.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_12-pt5m-I-flat-g2453-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2454"

   if ( -d "$batch_dir/working/g2454" ) then
       echo "Work folder already exists; skipping group 2454"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_12-pt5m-R-flat-g2454-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_12-pt5m-R-flat-g2454-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2454"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2454"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_12-pt5m-R-flat-g2454-mosaic.fits" >&! "$batch_dir/logs/g2454.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_12-pt5m-R-flat-g2454-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2455"

   if ( -d "$batch_dir/working/g2455" ) then
       echo "Work folder already exists; skipping group 2455"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_12-pt5m-V-flat-g2455-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_12-pt5m-V-flat-g2455-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2455"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2455"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_12-pt5m-V-flat-g2455-mosaic.fits" >&! "$batch_dir/logs/g2455.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_12-pt5m-V-flat-g2455-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2457"

   if ( -d "$batch_dir/working/g2457" ) then
       echo "Work folder already exists; skipping group 2457"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_15-pt5m-I-flat-g2457-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_15-pt5m-I-flat-g2457-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2457"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2457"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_15-pt5m-I-flat-g2457-mosaic.fits" >&! "$batch_dir/logs/g2457.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_15-pt5m-I-flat-g2457-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2458"

   if ( -d "$batch_dir/working/g2458" ) then
       echo "Work folder already exists; skipping group 2458"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_15-pt5m-R-flat-g2458-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_15-pt5m-R-flat-g2458-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2458"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2458"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_15-pt5m-R-flat-g2458-mosaic.fits" >&! "$batch_dir/logs/g2458.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_15-pt5m-R-flat-g2458-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 2459"

   if ( -d "$batch_dir/working/g2459" ) then
       echo "Work folder already exists; skipping group 2459"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2026atb-26_03_15-pt5m-V-flat-g2459-mosaic.fits" ) then
           echo "Missing input: sn2026atb-26_03_15-pt5m-V-flat-g2459-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g2459"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g2459"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2026atb-26_03_15-pt5m-V-flat-g2459-mosaic.fits" >&! "$batch_dir/logs/g2459.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2026atb-26_03_15-pt5m-V-flat-g2459-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   
