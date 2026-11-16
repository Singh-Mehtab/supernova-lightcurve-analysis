#!/bin/csh -f
set batch_dir = "$cwd"
mkdir -p working logs
if ( $status != 0 ) exit 1

   echo "Processing group 211"

   if ( -d "$batch_dir/working/g211" ) then
       echo "Work folder already exists; skipping group 211"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_06_18-pt5m-V-flat-g211-mosaic.fits" ) then
           echo "Missing input: at2019np-19_06_18-pt5m-V-flat-g211-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g211"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g211"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_06_18-pt5m-V-flat-g211-mosaic.fits" >&! "$batch_dir/logs/g211.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_06_18-pt5m-V-flat-g211-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 212"

   if ( -d "$batch_dir/working/g212" ) then
       echo "Work folder already exists; skipping group 212"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_06_18-pt5m-R-flat-g212-mosaic.fits" ) then
           echo "Missing input: at2019np-19_06_18-pt5m-R-flat-g212-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g212"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g212"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_06_18-pt5m-R-flat-g212-mosaic.fits" >&! "$batch_dir/logs/g212.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_06_18-pt5m-R-flat-g212-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 213"

   if ( -d "$batch_dir/working/g213" ) then
       echo "Work folder already exists; skipping group 213"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_06_18-pt5m-I-flat-g213-mosaic.fits" ) then
           echo "Missing input: at2019np-19_06_18-pt5m-I-flat-g213-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g213"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g213"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_06_18-pt5m-I-flat-g213-mosaic.fits" >&! "$batch_dir/logs/g213.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_06_18-pt5m-I-flat-g213-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 215"

   if ( -d "$batch_dir/working/g215" ) then
       echo "Work folder already exists; skipping group 215"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_06_04-pt5m-V-flat-g215-mosaic.fits" ) then
           echo "Missing input: at2019np-19_06_04-pt5m-V-flat-g215-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g215"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g215"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_06_04-pt5m-V-flat-g215-mosaic.fits" >&! "$batch_dir/logs/g215.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_06_04-pt5m-V-flat-g215-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 216"

   if ( -d "$batch_dir/working/g216" ) then
       echo "Work folder already exists; skipping group 216"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_06_04-pt5m-R-flat-g216-mosaic.fits" ) then
           echo "Missing input: at2019np-19_06_04-pt5m-R-flat-g216-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g216"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g216"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_06_04-pt5m-R-flat-g216-mosaic.fits" >&! "$batch_dir/logs/g216.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_06_04-pt5m-R-flat-g216-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 217"

   if ( -d "$batch_dir/working/g217" ) then
       echo "Work folder already exists; skipping group 217"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_06_04-pt5m-I-flat-g217-mosaic.fits" ) then
           echo "Missing input: at2019np-19_06_04-pt5m-I-flat-g217-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g217"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g217"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_06_04-pt5m-I-flat-g217-mosaic.fits" >&! "$batch_dir/logs/g217.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_06_04-pt5m-I-flat-g217-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 219"

   if ( -d "$batch_dir/working/g219" ) then
       echo "Work folder already exists; skipping group 219"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_06_01-pt5m-V-flat-g219-mosaic.fits" ) then
           echo "Missing input: at2019np-19_06_01-pt5m-V-flat-g219-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g219"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g219"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_06_01-pt5m-V-flat-g219-mosaic.fits" >&! "$batch_dir/logs/g219.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_06_01-pt5m-V-flat-g219-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 221"

   if ( -d "$batch_dir/working/g221" ) then
       echo "Work folder already exists; skipping group 221"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_29-pt5m-V-flat-g221-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_29-pt5m-V-flat-g221-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g221"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g221"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_29-pt5m-V-flat-g221-mosaic.fits" >&! "$batch_dir/logs/g221.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_29-pt5m-V-flat-g221-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 222"

   if ( -d "$batch_dir/working/g222" ) then
       echo "Work folder already exists; skipping group 222"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_29-pt5m-R-flat-g222-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_29-pt5m-R-flat-g222-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g222"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g222"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_29-pt5m-R-flat-g222-mosaic.fits" >&! "$batch_dir/logs/g222.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_29-pt5m-R-flat-g222-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 223"

   if ( -d "$batch_dir/working/g223" ) then
       echo "Work folder already exists; skipping group 223"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_29-pt5m-I-flat-g223-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_29-pt5m-I-flat-g223-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g223"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g223"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_29-pt5m-I-flat-g223-mosaic.fits" >&! "$batch_dir/logs/g223.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_29-pt5m-I-flat-g223-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 225"

   if ( -d "$batch_dir/working/g225" ) then
       echo "Work folder already exists; skipping group 225"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_16-pt5m-V-flat-g225-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_16-pt5m-V-flat-g225-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g225"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g225"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_16-pt5m-V-flat-g225-mosaic.fits" >&! "$batch_dir/logs/g225.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_16-pt5m-V-flat-g225-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 226"

   if ( -d "$batch_dir/working/g226" ) then
       echo "Work folder already exists; skipping group 226"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_16-pt5m-R-flat-g226-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_16-pt5m-R-flat-g226-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g226"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g226"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_16-pt5m-R-flat-g226-mosaic.fits" >&! "$batch_dir/logs/g226.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_16-pt5m-R-flat-g226-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 227"

   if ( -d "$batch_dir/working/g227" ) then
       echo "Work folder already exists; skipping group 227"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_16-pt5m-I-flat-g227-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_16-pt5m-I-flat-g227-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g227"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g227"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_16-pt5m-I-flat-g227-mosaic.fits" >&! "$batch_dir/logs/g227.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_16-pt5m-I-flat-g227-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 233"

   if ( -d "$batch_dir/working/g233" ) then
       echo "Work folder already exists; skipping group 233"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_14-pt5m-V-flat-g233-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_14-pt5m-V-flat-g233-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g233"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g233"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_14-pt5m-V-flat-g233-mosaic.fits" >&! "$batch_dir/logs/g233.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_14-pt5m-V-flat-g233-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 234"

   if ( -d "$batch_dir/working/g234" ) then
       echo "Work folder already exists; skipping group 234"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_14-pt5m-R-flat-g234-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_14-pt5m-R-flat-g234-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g234"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g234"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_14-pt5m-R-flat-g234-mosaic.fits" >&! "$batch_dir/logs/g234.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_14-pt5m-R-flat-g234-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 235"

   if ( -d "$batch_dir/working/g235" ) then
       echo "Work folder already exists; skipping group 235"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_14-pt5m-I-flat-g235-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_14-pt5m-I-flat-g235-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g235"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g235"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_14-pt5m-I-flat-g235-mosaic.fits" >&! "$batch_dir/logs/g235.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_14-pt5m-I-flat-g235-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 237"

   if ( -d "$batch_dir/working/g237" ) then
       echo "Work folder already exists; skipping group 237"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_09-pt5m-V-flat-g237-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_09-pt5m-V-flat-g237-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g237"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g237"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_09-pt5m-V-flat-g237-mosaic.fits" >&! "$batch_dir/logs/g237.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_09-pt5m-V-flat-g237-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 238"

   if ( -d "$batch_dir/working/g238" ) then
       echo "Work folder already exists; skipping group 238"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_09-pt5m-R-flat-g238-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_09-pt5m-R-flat-g238-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g238"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g238"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_09-pt5m-R-flat-g238-mosaic.fits" >&! "$batch_dir/logs/g238.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_09-pt5m-R-flat-g238-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 239"

   if ( -d "$batch_dir/working/g239" ) then
       echo "Work folder already exists; skipping group 239"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_09-pt5m-I-flat-g239-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_09-pt5m-I-flat-g239-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g239"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g239"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_09-pt5m-I-flat-g239-mosaic.fits" >&! "$batch_dir/logs/g239.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_09-pt5m-I-flat-g239-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 241"

   if ( -d "$batch_dir/working/g241" ) then
       echo "Work folder already exists; skipping group 241"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_08-pt5m-V-flat-g241-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_08-pt5m-V-flat-g241-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g241"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g241"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_08-pt5m-V-flat-g241-mosaic.fits" >&! "$batch_dir/logs/g241.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_08-pt5m-V-flat-g241-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 242"

   if ( -d "$batch_dir/working/g242" ) then
       echo "Work folder already exists; skipping group 242"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_08-pt5m-R-flat-g242-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_08-pt5m-R-flat-g242-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g242"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g242"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_08-pt5m-R-flat-g242-mosaic.fits" >&! "$batch_dir/logs/g242.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_08-pt5m-R-flat-g242-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 243"

   if ( -d "$batch_dir/working/g243" ) then
       echo "Work folder already exists; skipping group 243"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_08-pt5m-I-flat-g243-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_08-pt5m-I-flat-g243-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g243"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g243"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_08-pt5m-I-flat-g243-mosaic.fits" >&! "$batch_dir/logs/g243.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_08-pt5m-I-flat-g243-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 245"

   if ( -d "$batch_dir/working/g245" ) then
       echo "Work folder already exists; skipping group 245"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_07-pt5m-V-flat-g245-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_07-pt5m-V-flat-g245-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g245"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g245"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_07-pt5m-V-flat-g245-mosaic.fits" >&! "$batch_dir/logs/g245.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_07-pt5m-V-flat-g245-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 246"

   if ( -d "$batch_dir/working/g246" ) then
       echo "Work folder already exists; skipping group 246"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_07-pt5m-R-flat-g246-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_07-pt5m-R-flat-g246-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g246"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g246"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_07-pt5m-R-flat-g246-mosaic.fits" >&! "$batch_dir/logs/g246.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_07-pt5m-R-flat-g246-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 247"

   if ( -d "$batch_dir/working/g247" ) then
       echo "Work folder already exists; skipping group 247"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_07-pt5m-I-flat-g247-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_07-pt5m-I-flat-g247-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g247"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g247"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_07-pt5m-I-flat-g247-mosaic.fits" >&! "$batch_dir/logs/g247.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_07-pt5m-I-flat-g247-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 249"

   if ( -d "$batch_dir/working/g249" ) then
       echo "Work folder already exists; skipping group 249"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_05-pt5m-V-flat-g249-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_05-pt5m-V-flat-g249-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g249"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g249"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_05-pt5m-V-flat-g249-mosaic.fits" >&! "$batch_dir/logs/g249.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_05-pt5m-V-flat-g249-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 250"

   if ( -d "$batch_dir/working/g250" ) then
       echo "Work folder already exists; skipping group 250"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_05-pt5m-R-flat-g250-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_05-pt5m-R-flat-g250-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g250"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g250"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_05-pt5m-R-flat-g250-mosaic.fits" >&! "$batch_dir/logs/g250.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_05-pt5m-R-flat-g250-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 251"

   if ( -d "$batch_dir/working/g251" ) then
       echo "Work folder already exists; skipping group 251"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_05-pt5m-I-flat-g251-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_05-pt5m-I-flat-g251-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g251"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g251"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_05-pt5m-I-flat-g251-mosaic.fits" >&! "$batch_dir/logs/g251.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_05-pt5m-I-flat-g251-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 253"

   if ( -d "$batch_dir/working/g253" ) then
       echo "Work folder already exists; skipping group 253"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_04-pt5m-V-flat-g253-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_04-pt5m-V-flat-g253-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g253"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g253"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_04-pt5m-V-flat-g253-mosaic.fits" >&! "$batch_dir/logs/g253.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_04-pt5m-V-flat-g253-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 254"

   if ( -d "$batch_dir/working/g254" ) then
       echo "Work folder already exists; skipping group 254"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_04-pt5m-R-flat-g254-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_04-pt5m-R-flat-g254-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g254"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g254"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_04-pt5m-R-flat-g254-mosaic.fits" >&! "$batch_dir/logs/g254.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_04-pt5m-R-flat-g254-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 255"

   if ( -d "$batch_dir/working/g255" ) then
       echo "Work folder already exists; skipping group 255"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_04-pt5m-I-flat-g255-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_04-pt5m-I-flat-g255-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g255"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g255"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_04-pt5m-I-flat-g255-mosaic.fits" >&! "$batch_dir/logs/g255.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_04-pt5m-I-flat-g255-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 256"

   if ( -d "$batch_dir/working/g256" ) then
       echo "Work folder already exists; skipping group 256"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_03-pt5m-B-flat-g256-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_03-pt5m-B-flat-g256-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g256"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g256"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_03-pt5m-B-flat-g256-mosaic.fits" >&! "$batch_dir/logs/g256.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_03-pt5m-B-flat-g256-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 257"

   if ( -d "$batch_dir/working/g257" ) then
       echo "Work folder already exists; skipping group 257"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_03-pt5m-V-flat-g257-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_03-pt5m-V-flat-g257-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g257"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g257"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_03-pt5m-V-flat-g257-mosaic.fits" >&! "$batch_dir/logs/g257.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_03-pt5m-V-flat-g257-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 258"

   if ( -d "$batch_dir/working/g258" ) then
       echo "Work folder already exists; skipping group 258"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_03-pt5m-R-flat-g258-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_03-pt5m-R-flat-g258-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g258"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g258"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_03-pt5m-R-flat-g258-mosaic.fits" >&! "$batch_dir/logs/g258.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_03-pt5m-R-flat-g258-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 259"

   if ( -d "$batch_dir/working/g259" ) then
       echo "Work folder already exists; skipping group 259"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_03-pt5m-I-flat-g259-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_03-pt5m-I-flat-g259-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g259"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g259"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_03-pt5m-I-flat-g259-mosaic.fits" >&! "$batch_dir/logs/g259.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_03-pt5m-I-flat-g259-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 261"

   if ( -d "$batch_dir/working/g261" ) then
       echo "Work folder already exists; skipping group 261"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_02-pt5m-V-flat-g261-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_02-pt5m-V-flat-g261-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g261"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g261"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_02-pt5m-V-flat-g261-mosaic.fits" >&! "$batch_dir/logs/g261.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_02-pt5m-V-flat-g261-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 262"

   if ( -d "$batch_dir/working/g262" ) then
       echo "Work folder already exists; skipping group 262"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_02-pt5m-R-flat-g262-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_02-pt5m-R-flat-g262-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g262"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g262"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_02-pt5m-R-flat-g262-mosaic.fits" >&! "$batch_dir/logs/g262.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_02-pt5m-R-flat-g262-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 263"

   if ( -d "$batch_dir/working/g263" ) then
       echo "Work folder already exists; skipping group 263"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_02-pt5m-I-flat-g263-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_02-pt5m-I-flat-g263-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g263"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g263"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_02-pt5m-I-flat-g263-mosaic.fits" >&! "$batch_dir/logs/g263.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_02-pt5m-I-flat-g263-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 265"

   if ( -d "$batch_dir/working/g265" ) then
       echo "Work folder already exists; skipping group 265"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_01-pt5m-V-flat-g265-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_01-pt5m-V-flat-g265-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g265"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g265"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_01-pt5m-V-flat-g265-mosaic.fits" >&! "$batch_dir/logs/g265.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_01-pt5m-V-flat-g265-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 266"

   if ( -d "$batch_dir/working/g266" ) then
       echo "Work folder already exists; skipping group 266"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_01-pt5m-R-flat-g266-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_01-pt5m-R-flat-g266-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g266"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g266"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_01-pt5m-R-flat-g266-mosaic.fits" >&! "$batch_dir/logs/g266.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_01-pt5m-R-flat-g266-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 267"

   if ( -d "$batch_dir/working/g267" ) then
       echo "Work folder already exists; skipping group 267"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_05_01-pt5m-I-flat-g267-mosaic.fits" ) then
           echo "Missing input: at2019np-19_05_01-pt5m-I-flat-g267-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g267"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g267"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_05_01-pt5m-I-flat-g267-mosaic.fits" >&! "$batch_dir/logs/g267.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_05_01-pt5m-I-flat-g267-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 269"

   if ( -d "$batch_dir/working/g269" ) then
       echo "Work folder already exists; skipping group 269"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_30-pt5m-V-flat-g269-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_30-pt5m-V-flat-g269-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g269"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g269"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_30-pt5m-V-flat-g269-mosaic.fits" >&! "$batch_dir/logs/g269.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_30-pt5m-V-flat-g269-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 270"

   if ( -d "$batch_dir/working/g270" ) then
       echo "Work folder already exists; skipping group 270"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_30-pt5m-R-flat-g270-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_30-pt5m-R-flat-g270-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g270"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g270"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_30-pt5m-R-flat-g270-mosaic.fits" >&! "$batch_dir/logs/g270.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_30-pt5m-R-flat-g270-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 271"

   if ( -d "$batch_dir/working/g271" ) then
       echo "Work folder already exists; skipping group 271"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_30-pt5m-I-flat-g271-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_30-pt5m-I-flat-g271-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g271"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g271"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_30-pt5m-I-flat-g271-mosaic.fits" >&! "$batch_dir/logs/g271.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_30-pt5m-I-flat-g271-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 273"

   if ( -d "$batch_dir/working/g273" ) then
       echo "Work folder already exists; skipping group 273"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_27-pt5m-V-flat-g273-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_27-pt5m-V-flat-g273-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g273"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g273"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_27-pt5m-V-flat-g273-mosaic.fits" >&! "$batch_dir/logs/g273.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_27-pt5m-V-flat-g273-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 274"

   if ( -d "$batch_dir/working/g274" ) then
       echo "Work folder already exists; skipping group 274"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_27-pt5m-R-flat-g274-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_27-pt5m-R-flat-g274-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g274"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g274"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_27-pt5m-R-flat-g274-mosaic.fits" >&! "$batch_dir/logs/g274.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_27-pt5m-R-flat-g274-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 275"

   if ( -d "$batch_dir/working/g275" ) then
       echo "Work folder already exists; skipping group 275"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_27-pt5m-I-flat-g275-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_27-pt5m-I-flat-g275-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g275"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g275"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_27-pt5m-I-flat-g275-mosaic.fits" >&! "$batch_dir/logs/g275.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_27-pt5m-I-flat-g275-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 277"

   if ( -d "$batch_dir/working/g277" ) then
       echo "Work folder already exists; skipping group 277"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_25-pt5m-V-flat-g277-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_25-pt5m-V-flat-g277-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g277"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g277"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_25-pt5m-V-flat-g277-mosaic.fits" >&! "$batch_dir/logs/g277.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_25-pt5m-V-flat-g277-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 278"

   if ( -d "$batch_dir/working/g278" ) then
       echo "Work folder already exists; skipping group 278"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_25-pt5m-R-flat-g278-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_25-pt5m-R-flat-g278-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g278"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g278"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_25-pt5m-R-flat-g278-mosaic.fits" >&! "$batch_dir/logs/g278.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_25-pt5m-R-flat-g278-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 281"

   if ( -d "$batch_dir/working/g281" ) then
       echo "Work folder already exists; skipping group 281"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_24-pt5m-V-flat-g281-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_24-pt5m-V-flat-g281-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g281"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g281"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_24-pt5m-V-flat-g281-mosaic.fits" >&! "$batch_dir/logs/g281.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_24-pt5m-V-flat-g281-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 282"

   if ( -d "$batch_dir/working/g282" ) then
       echo "Work folder already exists; skipping group 282"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_24-pt5m-R-flat-g282-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_24-pt5m-R-flat-g282-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g282"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g282"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_24-pt5m-R-flat-g282-mosaic.fits" >&! "$batch_dir/logs/g282.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_24-pt5m-R-flat-g282-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 283"

   if ( -d "$batch_dir/working/g283" ) then
       echo "Work folder already exists; skipping group 283"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_24-pt5m-I-flat-g283-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_24-pt5m-I-flat-g283-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g283"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g283"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_24-pt5m-I-flat-g283-mosaic.fits" >&! "$batch_dir/logs/g283.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_24-pt5m-I-flat-g283-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 286"

   if ( -d "$batch_dir/working/g286" ) then
       echo "Work folder already exists; skipping group 286"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_20-pt5m-V-flat-g286-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_20-pt5m-V-flat-g286-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g286"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g286"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_20-pt5m-V-flat-g286-mosaic.fits" >&! "$batch_dir/logs/g286.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_20-pt5m-V-flat-g286-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 287"

   if ( -d "$batch_dir/working/g287" ) then
       echo "Work folder already exists; skipping group 287"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_20-pt5m-R-flat-g287-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_20-pt5m-R-flat-g287-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g287"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g287"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_20-pt5m-R-flat-g287-mosaic.fits" >&! "$batch_dir/logs/g287.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_20-pt5m-R-flat-g287-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 288"

   if ( -d "$batch_dir/working/g288" ) then
       echo "Work folder already exists; skipping group 288"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_20-pt5m-I-flat-g288-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_20-pt5m-I-flat-g288-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g288"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g288"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_20-pt5m-I-flat-g288-mosaic.fits" >&! "$batch_dir/logs/g288.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_20-pt5m-I-flat-g288-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 291"

   if ( -d "$batch_dir/working/g291" ) then
       echo "Work folder already exists; skipping group 291"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_17-pt5m-R-flat-g291-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_17-pt5m-R-flat-g291-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g291"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g291"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_17-pt5m-R-flat-g291-mosaic.fits" >&! "$batch_dir/logs/g291.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_17-pt5m-R-flat-g291-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 292"

   if ( -d "$batch_dir/working/g292" ) then
       echo "Work folder already exists; skipping group 292"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_17-pt5m-I-flat-g292-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_17-pt5m-I-flat-g292-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g292"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g292"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_17-pt5m-I-flat-g292-mosaic.fits" >&! "$batch_dir/logs/g292.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_17-pt5m-I-flat-g292-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 294"

   if ( -d "$batch_dir/working/g294" ) then
       echo "Work folder already exists; skipping group 294"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_10-pt5m-V-flat-g294-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_10-pt5m-V-flat-g294-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g294"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g294"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_10-pt5m-V-flat-g294-mosaic.fits" >&! "$batch_dir/logs/g294.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_10-pt5m-V-flat-g294-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 295"

   if ( -d "$batch_dir/working/g295" ) then
       echo "Work folder already exists; skipping group 295"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_10-pt5m-R-flat-g295-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_10-pt5m-R-flat-g295-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g295"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g295"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_10-pt5m-R-flat-g295-mosaic.fits" >&! "$batch_dir/logs/g295.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_10-pt5m-R-flat-g295-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 296"

   if ( -d "$batch_dir/working/g296" ) then
       echo "Work folder already exists; skipping group 296"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_10-pt5m-I-flat-g296-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_10-pt5m-I-flat-g296-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g296"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g296"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_10-pt5m-I-flat-g296-mosaic.fits" >&! "$batch_dir/logs/g296.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_10-pt5m-I-flat-g296-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 298"

   if ( -d "$batch_dir/working/g298" ) then
       echo "Work folder already exists; skipping group 298"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_09-pt5m-V-flat-g298-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_09-pt5m-V-flat-g298-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g298"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g298"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_09-pt5m-V-flat-g298-mosaic.fits" >&! "$batch_dir/logs/g298.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_09-pt5m-V-flat-g298-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 299"

   if ( -d "$batch_dir/working/g299" ) then
       echo "Work folder already exists; skipping group 299"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_09-pt5m-R-flat-g299-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_09-pt5m-R-flat-g299-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g299"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g299"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_09-pt5m-R-flat-g299-mosaic.fits" >&! "$batch_dir/logs/g299.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_09-pt5m-R-flat-g299-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 300"

   if ( -d "$batch_dir/working/g300" ) then
       echo "Work folder already exists; skipping group 300"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_09-pt5m-I-flat-g300-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_09-pt5m-I-flat-g300-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g300"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g300"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_09-pt5m-I-flat-g300-mosaic.fits" >&! "$batch_dir/logs/g300.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_09-pt5m-I-flat-g300-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 302"

   if ( -d "$batch_dir/working/g302" ) then
       echo "Work folder already exists; skipping group 302"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_08-pt5m-V-flat-g302-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_08-pt5m-V-flat-g302-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g302"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g302"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_08-pt5m-V-flat-g302-mosaic.fits" >&! "$batch_dir/logs/g302.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_08-pt5m-V-flat-g302-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 303"

   if ( -d "$batch_dir/working/g303" ) then
       echo "Work folder already exists; skipping group 303"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_08-pt5m-R-flat-g303-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_08-pt5m-R-flat-g303-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g303"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g303"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_08-pt5m-R-flat-g303-mosaic.fits" >&! "$batch_dir/logs/g303.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_08-pt5m-R-flat-g303-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 304"

   if ( -d "$batch_dir/working/g304" ) then
       echo "Work folder already exists; skipping group 304"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_08-pt5m-I-flat-g304-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_08-pt5m-I-flat-g304-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g304"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g304"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_08-pt5m-I-flat-g304-mosaic.fits" >&! "$batch_dir/logs/g304.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_08-pt5m-I-flat-g304-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 306"

   if ( -d "$batch_dir/working/g306" ) then
       echo "Work folder already exists; skipping group 306"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_07-pt5m-V-flat-g306-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_07-pt5m-V-flat-g306-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g306"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g306"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_07-pt5m-V-flat-g306-mosaic.fits" >&! "$batch_dir/logs/g306.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_07-pt5m-V-flat-g306-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 307"

   if ( -d "$batch_dir/working/g307" ) then
       echo "Work folder already exists; skipping group 307"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_07-pt5m-R-flat-g307-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_07-pt5m-R-flat-g307-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g307"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g307"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_07-pt5m-R-flat-g307-mosaic.fits" >&! "$batch_dir/logs/g307.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_07-pt5m-R-flat-g307-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 308"

   if ( -d "$batch_dir/working/g308" ) then
       echo "Work folder already exists; skipping group 308"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_07-pt5m-I-flat-g308-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_07-pt5m-I-flat-g308-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g308"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g308"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_07-pt5m-I-flat-g308-mosaic.fits" >&! "$batch_dir/logs/g308.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_07-pt5m-I-flat-g308-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 310"

   if ( -d "$batch_dir/working/g310" ) then
       echo "Work folder already exists; skipping group 310"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_04-pt5m-V-flat-g310-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_04-pt5m-V-flat-g310-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g310"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g310"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_04-pt5m-V-flat-g310-mosaic.fits" >&! "$batch_dir/logs/g310.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_04-pt5m-V-flat-g310-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 311"

   if ( -d "$batch_dir/working/g311" ) then
       echo "Work folder already exists; skipping group 311"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_04-pt5m-R-flat-g311-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_04-pt5m-R-flat-g311-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g311"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g311"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_04-pt5m-R-flat-g311-mosaic.fits" >&! "$batch_dir/logs/g311.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_04-pt5m-R-flat-g311-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 312"

   if ( -d "$batch_dir/working/g312" ) then
       echo "Work folder already exists; skipping group 312"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_04_04-pt5m-I-flat-g312-mosaic.fits" ) then
           echo "Missing input: at2019np-19_04_04-pt5m-I-flat-g312-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g312"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g312"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_04_04-pt5m-I-flat-g312-mosaic.fits" >&! "$batch_dir/logs/g312.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_04_04-pt5m-I-flat-g312-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 322"

   if ( -d "$batch_dir/working/g322" ) then
       echo "Work folder already exists; skipping group 322"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_23-pt5m-V-flat-g322-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_23-pt5m-V-flat-g322-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g322"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g322"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_23-pt5m-V-flat-g322-mosaic.fits" >&! "$batch_dir/logs/g322.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_23-pt5m-V-flat-g322-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 323"

   if ( -d "$batch_dir/working/g323" ) then
       echo "Work folder already exists; skipping group 323"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_23-pt5m-R-flat-g323-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_23-pt5m-R-flat-g323-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g323"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g323"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_23-pt5m-R-flat-g323-mosaic.fits" >&! "$batch_dir/logs/g323.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_23-pt5m-R-flat-g323-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 324"

   if ( -d "$batch_dir/working/g324" ) then
       echo "Work folder already exists; skipping group 324"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_23-pt5m-I-flat-g324-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_23-pt5m-I-flat-g324-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g324"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g324"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_23-pt5m-I-flat-g324-mosaic.fits" >&! "$batch_dir/logs/g324.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_23-pt5m-I-flat-g324-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 326"

   if ( -d "$batch_dir/working/g326" ) then
       echo "Work folder already exists; skipping group 326"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_20-pt5m-V-flat-g326-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_20-pt5m-V-flat-g326-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g326"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g326"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_20-pt5m-V-flat-g326-mosaic.fits" >&! "$batch_dir/logs/g326.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_20-pt5m-V-flat-g326-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 328"

   if ( -d "$batch_dir/working/g328" ) then
       echo "Work folder already exists; skipping group 328"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_20-pt5m-I-flat-g328-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_20-pt5m-I-flat-g328-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g328"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g328"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_20-pt5m-I-flat-g328-mosaic.fits" >&! "$batch_dir/logs/g328.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_20-pt5m-I-flat-g328-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 335"

   if ( -d "$batch_dir/working/g335" ) then
       echo "Work folder already exists; skipping group 335"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_15-pt5m-R-flat-g335-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_15-pt5m-R-flat-g335-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g335"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g335"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_15-pt5m-R-flat-g335-mosaic.fits" >&! "$batch_dir/logs/g335.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_15-pt5m-R-flat-g335-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 336"

   if ( -d "$batch_dir/working/g336" ) then
       echo "Work folder already exists; skipping group 336"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_15-pt5m-I-flat-g336-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_15-pt5m-I-flat-g336-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g336"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g336"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_15-pt5m-I-flat-g336-mosaic.fits" >&! "$batch_dir/logs/g336.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_15-pt5m-I-flat-g336-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 339"

   if ( -d "$batch_dir/working/g339" ) then
       echo "Work folder already exists; skipping group 339"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_13-pt5m-R-flat-g339-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_13-pt5m-R-flat-g339-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g339"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g339"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_13-pt5m-R-flat-g339-mosaic.fits" >&! "$batch_dir/logs/g339.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_13-pt5m-R-flat-g339-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 343"

   if ( -d "$batch_dir/working/g343" ) then
       echo "Work folder already exists; skipping group 343"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_12-pt5m-R-flat-g343-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_12-pt5m-R-flat-g343-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g343"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g343"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_12-pt5m-R-flat-g343-mosaic.fits" >&! "$batch_dir/logs/g343.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_12-pt5m-R-flat-g343-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 344"

   if ( -d "$batch_dir/working/g344" ) then
       echo "Work folder already exists; skipping group 344"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_12-pt5m-I-flat-g344-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_12-pt5m-I-flat-g344-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g344"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g344"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_12-pt5m-I-flat-g344-mosaic.fits" >&! "$batch_dir/logs/g344.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_12-pt5m-I-flat-g344-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 346"

   if ( -d "$batch_dir/working/g346" ) then
       echo "Work folder already exists; skipping group 346"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_11-pt5m-V-flat-g346-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_11-pt5m-V-flat-g346-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g346"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g346"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_11-pt5m-V-flat-g346-mosaic.fits" >&! "$batch_dir/logs/g346.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_11-pt5m-V-flat-g346-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 347"

   if ( -d "$batch_dir/working/g347" ) then
       echo "Work folder already exists; skipping group 347"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_11-pt5m-R-flat-g347-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_11-pt5m-R-flat-g347-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g347"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g347"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_11-pt5m-R-flat-g347-mosaic.fits" >&! "$batch_dir/logs/g347.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_11-pt5m-R-flat-g347-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 348"

   if ( -d "$batch_dir/working/g348" ) then
       echo "Work folder already exists; skipping group 348"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_11-pt5m-I-flat-g348-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_11-pt5m-I-flat-g348-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g348"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g348"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_11-pt5m-I-flat-g348-mosaic.fits" >&! "$batch_dir/logs/g348.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_11-pt5m-I-flat-g348-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 350"

   if ( -d "$batch_dir/working/g350" ) then
       echo "Work folder already exists; skipping group 350"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_10-pt5m-V-flat-g350-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_10-pt5m-V-flat-g350-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g350"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g350"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_10-pt5m-V-flat-g350-mosaic.fits" >&! "$batch_dir/logs/g350.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_10-pt5m-V-flat-g350-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 351"

   if ( -d "$batch_dir/working/g351" ) then
       echo "Work folder already exists; skipping group 351"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_10-pt5m-R-flat-g351-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_10-pt5m-R-flat-g351-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g351"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g351"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_10-pt5m-R-flat-g351-mosaic.fits" >&! "$batch_dir/logs/g351.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_10-pt5m-R-flat-g351-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 352"

   if ( -d "$batch_dir/working/g352" ) then
       echo "Work folder already exists; skipping group 352"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_10-pt5m-I-flat-g352-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_10-pt5m-I-flat-g352-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g352"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g352"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_10-pt5m-I-flat-g352-mosaic.fits" >&! "$batch_dir/logs/g352.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_10-pt5m-I-flat-g352-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 356"

   if ( -d "$batch_dir/working/g356" ) then
       echo "Work folder already exists; skipping group 356"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_04-pt5m-R-flat-g356-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_04-pt5m-R-flat-g356-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g356"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g356"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_04-pt5m-R-flat-g356-mosaic.fits" >&! "$batch_dir/logs/g356.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_04-pt5m-R-flat-g356-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 357"

   if ( -d "$batch_dir/working/g357" ) then
       echo "Work folder already exists; skipping group 357"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_04-pt5m-I-flat-g357-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_04-pt5m-I-flat-g357-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g357"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g357"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_04-pt5m-I-flat-g357-mosaic.fits" >&! "$batch_dir/logs/g357.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_04-pt5m-I-flat-g357-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 359"

   if ( -d "$batch_dir/working/g359" ) then
       echo "Work folder already exists; skipping group 359"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_02-pt5m-V-flat-g359-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_02-pt5m-V-flat-g359-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g359"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g359"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_02-pt5m-V-flat-g359-mosaic.fits" >&! "$batch_dir/logs/g359.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_02-pt5m-V-flat-g359-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 360"

   if ( -d "$batch_dir/working/g360" ) then
       echo "Work folder already exists; skipping group 360"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_02-pt5m-R-flat-g360-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_02-pt5m-R-flat-g360-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g360"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g360"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_02-pt5m-R-flat-g360-mosaic.fits" >&! "$batch_dir/logs/g360.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_02-pt5m-R-flat-g360-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 361"

   if ( -d "$batch_dir/working/g361" ) then
       echo "Work folder already exists; skipping group 361"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_02-pt5m-I-flat-g361-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_02-pt5m-I-flat-g361-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g361"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g361"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_02-pt5m-I-flat-g361-mosaic.fits" >&! "$batch_dir/logs/g361.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_02-pt5m-I-flat-g361-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 363"

   if ( -d "$batch_dir/working/g363" ) then
       echo "Work folder already exists; skipping group 363"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_01-pt5m-V-flat-g363-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_01-pt5m-V-flat-g363-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g363"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g363"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_01-pt5m-V-flat-g363-mosaic.fits" >&! "$batch_dir/logs/g363.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_01-pt5m-V-flat-g363-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 364"

   if ( -d "$batch_dir/working/g364" ) then
       echo "Work folder already exists; skipping group 364"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_01-pt5m-R-flat-g364-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_01-pt5m-R-flat-g364-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g364"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g364"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_01-pt5m-R-flat-g364-mosaic.fits" >&! "$batch_dir/logs/g364.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_01-pt5m-R-flat-g364-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 365"

   if ( -d "$batch_dir/working/g365" ) then
       echo "Work folder already exists; skipping group 365"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_03_01-pt5m-I-flat-g365-mosaic.fits" ) then
           echo "Missing input: at2019np-19_03_01-pt5m-I-flat-g365-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g365"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g365"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_03_01-pt5m-I-flat-g365-mosaic.fits" >&! "$batch_dir/logs/g365.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_03_01-pt5m-I-flat-g365-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 368"

   if ( -d "$batch_dir/working/g368" ) then
       echo "Work folder already exists; skipping group 368"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_28-pt5m-R-flat-g368-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_28-pt5m-R-flat-g368-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g368"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g368"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_28-pt5m-R-flat-g368-mosaic.fits" >&! "$batch_dir/logs/g368.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_28-pt5m-R-flat-g368-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 369"

   if ( -d "$batch_dir/working/g369" ) then
       echo "Work folder already exists; skipping group 369"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_28-pt5m-I-flat-g369-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_28-pt5m-I-flat-g369-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g369"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g369"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_28-pt5m-I-flat-g369-mosaic.fits" >&! "$batch_dir/logs/g369.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_28-pt5m-I-flat-g369-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 371"

   if ( -d "$batch_dir/working/g371" ) then
       echo "Work folder already exists; skipping group 371"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_26-pt5m-V-flat-g371-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_26-pt5m-V-flat-g371-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g371"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g371"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_26-pt5m-V-flat-g371-mosaic.fits" >&! "$batch_dir/logs/g371.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_26-pt5m-V-flat-g371-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 372"

   if ( -d "$batch_dir/working/g372" ) then
       echo "Work folder already exists; skipping group 372"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_26-pt5m-R-flat-g372-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_26-pt5m-R-flat-g372-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g372"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g372"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_26-pt5m-R-flat-g372-mosaic.fits" >&! "$batch_dir/logs/g372.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_26-pt5m-R-flat-g372-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 373"

   if ( -d "$batch_dir/working/g373" ) then
       echo "Work folder already exists; skipping group 373"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_26-pt5m-I-flat-g373-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_26-pt5m-I-flat-g373-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g373"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g373"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_26-pt5m-I-flat-g373-mosaic.fits" >&! "$batch_dir/logs/g373.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_26-pt5m-I-flat-g373-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 379"

   if ( -d "$batch_dir/working/g379" ) then
       echo "Work folder already exists; skipping group 379"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_24-pt5m-V-flat-g379-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_24-pt5m-V-flat-g379-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g379"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g379"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_24-pt5m-V-flat-g379-mosaic.fits" >&! "$batch_dir/logs/g379.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_24-pt5m-V-flat-g379-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 381"

   if ( -d "$batch_dir/working/g381" ) then
       echo "Work folder already exists; skipping group 381"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_24-pt5m-I-flat-g381-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_24-pt5m-I-flat-g381-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g381"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g381"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_24-pt5m-I-flat-g381-mosaic.fits" >&! "$batch_dir/logs/g381.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_24-pt5m-I-flat-g381-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 383"

   if ( -d "$batch_dir/working/g383" ) then
       echo "Work folder already exists; skipping group 383"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_23-pt5m-V-flat-g383-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_23-pt5m-V-flat-g383-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g383"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g383"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_23-pt5m-V-flat-g383-mosaic.fits" >&! "$batch_dir/logs/g383.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_23-pt5m-V-flat-g383-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 384"

   if ( -d "$batch_dir/working/g384" ) then
       echo "Work folder already exists; skipping group 384"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_23-pt5m-R-flat-g384-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_23-pt5m-R-flat-g384-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g384"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g384"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_23-pt5m-R-flat-g384-mosaic.fits" >&! "$batch_dir/logs/g384.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_23-pt5m-R-flat-g384-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 385"

   if ( -d "$batch_dir/working/g385" ) then
       echo "Work folder already exists; skipping group 385"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_23-pt5m-I-flat-g385-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_23-pt5m-I-flat-g385-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g385"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g385"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_23-pt5m-I-flat-g385-mosaic.fits" >&! "$batch_dir/logs/g385.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_23-pt5m-I-flat-g385-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 388"

   if ( -d "$batch_dir/working/g388" ) then
       echo "Work folder already exists; skipping group 388"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_22-pt5m-R-flat-g388-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_22-pt5m-R-flat-g388-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g388"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g388"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_22-pt5m-R-flat-g388-mosaic.fits" >&! "$batch_dir/logs/g388.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_22-pt5m-R-flat-g388-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 389"

   if ( -d "$batch_dir/working/g389" ) then
       echo "Work folder already exists; skipping group 389"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_22-pt5m-I-flat-g389-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_22-pt5m-I-flat-g389-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g389"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g389"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_22-pt5m-I-flat-g389-mosaic.fits" >&! "$batch_dir/logs/g389.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_22-pt5m-I-flat-g389-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 403"

   if ( -d "$batch_dir/working/g403" ) then
       echo "Work folder already exists; skipping group 403"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_16-pt5m-R-flat-g403-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_16-pt5m-R-flat-g403-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g403"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g403"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_16-pt5m-R-flat-g403-mosaic.fits" >&! "$batch_dir/logs/g403.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_16-pt5m-R-flat-g403-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 409"

   if ( -d "$batch_dir/working/g409" ) then
       echo "Work folder already exists; skipping group 409"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_12-pt5m-V-flat-g409-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_12-pt5m-V-flat-g409-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g409"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g409"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_12-pt5m-V-flat-g409-mosaic.fits" >&! "$batch_dir/logs/g409.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_12-pt5m-V-flat-g409-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 410"

   if ( -d "$batch_dir/working/g410" ) then
       echo "Work folder already exists; skipping group 410"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_12-pt5m-R-flat-g410-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_12-pt5m-R-flat-g410-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g410"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g410"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_12-pt5m-R-flat-g410-mosaic.fits" >&! "$batch_dir/logs/g410.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_12-pt5m-R-flat-g410-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 411"

   if ( -d "$batch_dir/working/g411" ) then
       echo "Work folder already exists; skipping group 411"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_12-pt5m-I-flat-g411-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_12-pt5m-I-flat-g411-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g411"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g411"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_12-pt5m-I-flat-g411-mosaic.fits" >&! "$batch_dir/logs/g411.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_12-pt5m-I-flat-g411-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 414"

   if ( -d "$batch_dir/working/g414" ) then
       echo "Work folder already exists; skipping group 414"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_11-pt5m-R-flat-g414-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_11-pt5m-R-flat-g414-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g414"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g414"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_11-pt5m-R-flat-g414-mosaic.fits" >&! "$batch_dir/logs/g414.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_11-pt5m-R-flat-g414-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 415"

   if ( -d "$batch_dir/working/g415" ) then
       echo "Work folder already exists; skipping group 415"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_11-pt5m-I-flat-g415-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_11-pt5m-I-flat-g415-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g415"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g415"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_11-pt5m-I-flat-g415-mosaic.fits" >&! "$batch_dir/logs/g415.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_11-pt5m-I-flat-g415-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 417"

   if ( -d "$batch_dir/working/g417" ) then
       echo "Work folder already exists; skipping group 417"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_10-pt5m-V-flat-g417-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_10-pt5m-V-flat-g417-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g417"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g417"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_10-pt5m-V-flat-g417-mosaic.fits" >&! "$batch_dir/logs/g417.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_10-pt5m-V-flat-g417-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 418"

   if ( -d "$batch_dir/working/g418" ) then
       echo "Work folder already exists; skipping group 418"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_10-pt5m-R-flat-g418-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_10-pt5m-R-flat-g418-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g418"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g418"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_10-pt5m-R-flat-g418-mosaic.fits" >&! "$batch_dir/logs/g418.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_10-pt5m-R-flat-g418-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 419"

   if ( -d "$batch_dir/working/g419" ) then
       echo "Work folder already exists; skipping group 419"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_10-pt5m-I-flat-g419-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_10-pt5m-I-flat-g419-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g419"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g419"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_10-pt5m-I-flat-g419-mosaic.fits" >&! "$batch_dir/logs/g419.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_10-pt5m-I-flat-g419-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 421"

   if ( -d "$batch_dir/working/g421" ) then
       echo "Work folder already exists; skipping group 421"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_09-pt5m-V-flat-g421-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_09-pt5m-V-flat-g421-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g421"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g421"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_09-pt5m-V-flat-g421-mosaic.fits" >&! "$batch_dir/logs/g421.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_09-pt5m-V-flat-g421-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 422"

   if ( -d "$batch_dir/working/g422" ) then
       echo "Work folder already exists; skipping group 422"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_09-pt5m-R-flat-g422-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_09-pt5m-R-flat-g422-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g422"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g422"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_09-pt5m-R-flat-g422-mosaic.fits" >&! "$batch_dir/logs/g422.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_09-pt5m-R-flat-g422-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 423"

   if ( -d "$batch_dir/working/g423" ) then
       echo "Work folder already exists; skipping group 423"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_09-pt5m-I-flat-g423-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_09-pt5m-I-flat-g423-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g423"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g423"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_09-pt5m-I-flat-g423-mosaic.fits" >&! "$batch_dir/logs/g423.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_09-pt5m-I-flat-g423-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 425"

   if ( -d "$batch_dir/working/g425" ) then
       echo "Work folder already exists; skipping group 425"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_08-pt5m-V-flat-g425-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_08-pt5m-V-flat-g425-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g425"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g425"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_08-pt5m-V-flat-g425-mosaic.fits" >&! "$batch_dir/logs/g425.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_08-pt5m-V-flat-g425-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 426"

   if ( -d "$batch_dir/working/g426" ) then
       echo "Work folder already exists; skipping group 426"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_08-pt5m-R-flat-g426-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_08-pt5m-R-flat-g426-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g426"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g426"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_08-pt5m-R-flat-g426-mosaic.fits" >&! "$batch_dir/logs/g426.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_08-pt5m-R-flat-g426-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 427"

   if ( -d "$batch_dir/working/g427" ) then
       echo "Work folder already exists; skipping group 427"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_08-pt5m-I-flat-g427-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_08-pt5m-I-flat-g427-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g427"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g427"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_08-pt5m-I-flat-g427-mosaic.fits" >&! "$batch_dir/logs/g427.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_08-pt5m-I-flat-g427-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 431"

   if ( -d "$batch_dir/working/g431" ) then
       echo "Work folder already exists; skipping group 431"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_06-pt5m-V-flat-g431-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_06-pt5m-V-flat-g431-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g431"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g431"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_06-pt5m-V-flat-g431-mosaic.fits" >&! "$batch_dir/logs/g431.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_06-pt5m-V-flat-g431-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 432"

   if ( -d "$batch_dir/working/g432" ) then
       echo "Work folder already exists; skipping group 432"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_06-pt5m-R-flat-g432-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_06-pt5m-R-flat-g432-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g432"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g432"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_06-pt5m-R-flat-g432-mosaic.fits" >&! "$batch_dir/logs/g432.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_06-pt5m-R-flat-g432-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 433"

   if ( -d "$batch_dir/working/g433" ) then
       echo "Work folder already exists; skipping group 433"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_06-pt5m-I-flat-g433-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_06-pt5m-I-flat-g433-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g433"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g433"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_06-pt5m-I-flat-g433-mosaic.fits" >&! "$batch_dir/logs/g433.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_06-pt5m-I-flat-g433-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 435"

   if ( -d "$batch_dir/working/g435" ) then
       echo "Work folder already exists; skipping group 435"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_05-pt5m-V-flat-g435-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_05-pt5m-V-flat-g435-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g435"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g435"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_05-pt5m-V-flat-g435-mosaic.fits" >&! "$batch_dir/logs/g435.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_05-pt5m-V-flat-g435-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 436"

   if ( -d "$batch_dir/working/g436" ) then
       echo "Work folder already exists; skipping group 436"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_05-pt5m-R-flat-g436-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_05-pt5m-R-flat-g436-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g436"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g436"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_05-pt5m-R-flat-g436-mosaic.fits" >&! "$batch_dir/logs/g436.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_05-pt5m-R-flat-g436-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 437"

   if ( -d "$batch_dir/working/g437" ) then
       echo "Work folder already exists; skipping group 437"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_05-pt5m-I-flat-g437-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_05-pt5m-I-flat-g437-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g437"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g437"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_05-pt5m-I-flat-g437-mosaic.fits" >&! "$batch_dir/logs/g437.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_05-pt5m-I-flat-g437-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 440"

   if ( -d "$batch_dir/working/g440" ) then
       echo "Work folder already exists; skipping group 440"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_04-pt5m-R-flat-g440-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_04-pt5m-R-flat-g440-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g440"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g440"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_04-pt5m-R-flat-g440-mosaic.fits" >&! "$batch_dir/logs/g440.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_04-pt5m-R-flat-g440-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 441"

   if ( -d "$batch_dir/working/g441" ) then
       echo "Work folder already exists; skipping group 441"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_04-pt5m-I-flat-g441-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_04-pt5m-I-flat-g441-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g441"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g441"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_04-pt5m-I-flat-g441-mosaic.fits" >&! "$batch_dir/logs/g441.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_04-pt5m-I-flat-g441-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 444"

   if ( -d "$batch_dir/working/g444" ) then
       echo "Work folder already exists; skipping group 444"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_03-pt5m-V-flat-g444-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_03-pt5m-V-flat-g444-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g444"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g444"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_03-pt5m-V-flat-g444-mosaic.fits" >&! "$batch_dir/logs/g444.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_03-pt5m-V-flat-g444-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 445"

   if ( -d "$batch_dir/working/g445" ) then
       echo "Work folder already exists; skipping group 445"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_03-pt5m-R-flat-g445-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_03-pt5m-R-flat-g445-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g445"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g445"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_03-pt5m-R-flat-g445-mosaic.fits" >&! "$batch_dir/logs/g445.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_03-pt5m-R-flat-g445-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 446"

   if ( -d "$batch_dir/working/g446" ) then
       echo "Work folder already exists; skipping group 446"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_03-pt5m-I-flat-g446-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_03-pt5m-I-flat-g446-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g446"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g446"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_03-pt5m-I-flat-g446-mosaic.fits" >&! "$batch_dir/logs/g446.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_03-pt5m-I-flat-g446-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 448"

   if ( -d "$batch_dir/working/g448" ) then
       echo "Work folder already exists; skipping group 448"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_02-pt5m-V-flat-g448-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_02-pt5m-V-flat-g448-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g448"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g448"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_02-pt5m-V-flat-g448-mosaic.fits" >&! "$batch_dir/logs/g448.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_02-pt5m-V-flat-g448-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 453"

   if ( -d "$batch_dir/working/g453" ) then
       echo "Work folder already exists; skipping group 453"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_01-pt5m-V-flat-g453-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_01-pt5m-V-flat-g453-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g453"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g453"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_01-pt5m-V-flat-g453-mosaic.fits" >&! "$batch_dir/logs/g453.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_01-pt5m-V-flat-g453-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 455"

   if ( -d "$batch_dir/working/g455" ) then
       echo "Work folder already exists; skipping group 455"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_31-pt5m-V-flat-g455-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_31-pt5m-V-flat-g455-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g455"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g455"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_31-pt5m-V-flat-g455-mosaic.fits" >&! "$batch_dir/logs/g455.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_31-pt5m-V-flat-g455-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 456"

   if ( -d "$batch_dir/working/g456" ) then
       echo "Work folder already exists; skipping group 456"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_31-pt5m-R-flat-g456-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_31-pt5m-R-flat-g456-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g456"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g456"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_31-pt5m-R-flat-g456-mosaic.fits" >&! "$batch_dir/logs/g456.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_31-pt5m-R-flat-g456-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 457"

   if ( -d "$batch_dir/working/g457" ) then
       echo "Work folder already exists; skipping group 457"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_31-pt5m-I-flat-g457-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_31-pt5m-I-flat-g457-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g457"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g457"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_31-pt5m-I-flat-g457-mosaic.fits" >&! "$batch_dir/logs/g457.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_31-pt5m-I-flat-g457-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 459"

   if ( -d "$batch_dir/working/g459" ) then
       echo "Work folder already exists; skipping group 459"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_30-pt5m-V-flat-g459-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_30-pt5m-V-flat-g459-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g459"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g459"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_30-pt5m-V-flat-g459-mosaic.fits" >&! "$batch_dir/logs/g459.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_30-pt5m-V-flat-g459-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 460"

   if ( -d "$batch_dir/working/g460" ) then
       echo "Work folder already exists; skipping group 460"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_30-pt5m-R-flat-g460-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_30-pt5m-R-flat-g460-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g460"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g460"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_30-pt5m-R-flat-g460-mosaic.fits" >&! "$batch_dir/logs/g460.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_30-pt5m-R-flat-g460-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 461"

   if ( -d "$batch_dir/working/g461" ) then
       echo "Work folder already exists; skipping group 461"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_30-pt5m-I-flat-g461-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_30-pt5m-I-flat-g461-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g461"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g461"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_30-pt5m-I-flat-g461-mosaic.fits" >&! "$batch_dir/logs/g461.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_30-pt5m-I-flat-g461-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 466"

   if ( -d "$batch_dir/working/g466" ) then
       echo "Work folder already exists; skipping group 466"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_29-pt5m-V-flat-g466-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_29-pt5m-V-flat-g466-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g466"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g466"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_29-pt5m-V-flat-g466-mosaic.fits" >&! "$batch_dir/logs/g466.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_29-pt5m-V-flat-g466-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 467"

   if ( -d "$batch_dir/working/g467" ) then
       echo "Work folder already exists; skipping group 467"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_29-pt5m-R-flat-g467-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_29-pt5m-R-flat-g467-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g467"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g467"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_29-pt5m-R-flat-g467-mosaic.fits" >&! "$batch_dir/logs/g467.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_29-pt5m-R-flat-g467-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 468"

   if ( -d "$batch_dir/working/g468" ) then
       echo "Work folder already exists; skipping group 468"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_29-pt5m-I-flat-g468-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_29-pt5m-I-flat-g468-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g468"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g468"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_29-pt5m-I-flat-g468-mosaic.fits" >&! "$batch_dir/logs/g468.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_29-pt5m-I-flat-g468-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 474"

   if ( -d "$batch_dir/working/g474" ) then
       echo "Work folder already exists; skipping group 474"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_28-pt5m-V-flat-g474-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_28-pt5m-V-flat-g474-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g474"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g474"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_28-pt5m-V-flat-g474-mosaic.fits" >&! "$batch_dir/logs/g474.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_28-pt5m-V-flat-g474-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 475"

   if ( -d "$batch_dir/working/g475" ) then
       echo "Work folder already exists; skipping group 475"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_28-pt5m-R-flat-g475-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_28-pt5m-R-flat-g475-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g475"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g475"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_28-pt5m-R-flat-g475-mosaic.fits" >&! "$batch_dir/logs/g475.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_28-pt5m-R-flat-g475-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 476"

   if ( -d "$batch_dir/working/g476" ) then
       echo "Work folder already exists; skipping group 476"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_28-pt5m-I-flat-g476-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_28-pt5m-I-flat-g476-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g476"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g476"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_28-pt5m-I-flat-g476-mosaic.fits" >&! "$batch_dir/logs/g476.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_28-pt5m-I-flat-g476-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 479"

   if ( -d "$batch_dir/working/g479" ) then
       echo "Work folder already exists; skipping group 479"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_27-pt5m-V-flat-g479-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_27-pt5m-V-flat-g479-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g479"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g479"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_27-pt5m-V-flat-g479-mosaic.fits" >&! "$batch_dir/logs/g479.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_27-pt5m-V-flat-g479-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 480"

   if ( -d "$batch_dir/working/g480" ) then
       echo "Work folder already exists; skipping group 480"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_27-pt5m-R-flat-g480-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_27-pt5m-R-flat-g480-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g480"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g480"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_27-pt5m-R-flat-g480-mosaic.fits" >&! "$batch_dir/logs/g480.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_27-pt5m-R-flat-g480-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 481"

   if ( -d "$batch_dir/working/g481" ) then
       echo "Work folder already exists; skipping group 481"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_27-pt5m-I-flat-g481-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_27-pt5m-I-flat-g481-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g481"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g481"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_27-pt5m-I-flat-g481-mosaic.fits" >&! "$batch_dir/logs/g481.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_27-pt5m-I-flat-g481-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 483"

   if ( -d "$batch_dir/working/g483" ) then
       echo "Work folder already exists; skipping group 483"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_26-pt5m-V-flat-g483-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_26-pt5m-V-flat-g483-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g483"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g483"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_26-pt5m-V-flat-g483-mosaic.fits" >&! "$batch_dir/logs/g483.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_26-pt5m-V-flat-g483-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 484"

   if ( -d "$batch_dir/working/g484" ) then
       echo "Work folder already exists; skipping group 484"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_26-pt5m-R-flat-g484-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_26-pt5m-R-flat-g484-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g484"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g484"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_26-pt5m-R-flat-g484-mosaic.fits" >&! "$batch_dir/logs/g484.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_26-pt5m-R-flat-g484-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 485"

   if ( -d "$batch_dir/working/g485" ) then
       echo "Work folder already exists; skipping group 485"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_26-pt5m-I-flat-g485-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_26-pt5m-I-flat-g485-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g485"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g485"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_26-pt5m-I-flat-g485-mosaic.fits" >&! "$batch_dir/logs/g485.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_26-pt5m-I-flat-g485-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 488"

   if ( -d "$batch_dir/working/g488" ) then
       echo "Work folder already exists; skipping group 488"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_24-pt5m-R-flat-g488-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_24-pt5m-R-flat-g488-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g488"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g488"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_24-pt5m-R-flat-g488-mosaic.fits" >&! "$batch_dir/logs/g488.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_24-pt5m-R-flat-g488-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 489"

   if ( -d "$batch_dir/working/g489" ) then
       echo "Work folder already exists; skipping group 489"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_24-pt5m-I-flat-g489-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_24-pt5m-I-flat-g489-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g489"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g489"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_24-pt5m-I-flat-g489-mosaic.fits" >&! "$batch_dir/logs/g489.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_24-pt5m-I-flat-g489-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 501"

   if ( -d "$batch_dir/working/g501" ) then
       echo "Work folder already exists; skipping group 501"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_19-pt5m-R-flat-g501-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_19-pt5m-R-flat-g501-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g501"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g501"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_19-pt5m-R-flat-g501-mosaic.fits" >&! "$batch_dir/logs/g501.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_19-pt5m-R-flat-g501-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 502"

   if ( -d "$batch_dir/working/g502" ) then
       echo "Work folder already exists; skipping group 502"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_19-pt5m-I-flat-g502-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_19-pt5m-I-flat-g502-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g502"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g502"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_19-pt5m-I-flat-g502-mosaic.fits" >&! "$batch_dir/logs/g502.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_19-pt5m-I-flat-g502-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 503"

   if ( -d "$batch_dir/working/g503" ) then
       echo "Work folder already exists; skipping group 503"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_18-pt5m-B-flat-g503-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_18-pt5m-B-flat-g503-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g503"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g503"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_18-pt5m-B-flat-g503-mosaic.fits" >&! "$batch_dir/logs/g503.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_18-pt5m-B-flat-g503-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 506"

   if ( -d "$batch_dir/working/g506" ) then
       echo "Work folder already exists; skipping group 506"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_15-pt5m-R-flat-g506-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_15-pt5m-R-flat-g506-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g506"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g506"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_15-pt5m-R-flat-g506-mosaic.fits" >&! "$batch_dir/logs/g506.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_15-pt5m-R-flat-g506-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 507"

   if ( -d "$batch_dir/working/g507" ) then
       echo "Work folder already exists; skipping group 507"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_15-pt5m-I-flat-g507-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_15-pt5m-I-flat-g507-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g507"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g507"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_15-pt5m-I-flat-g507-mosaic.fits" >&! "$batch_dir/logs/g507.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_15-pt5m-I-flat-g507-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 509"

   if ( -d "$batch_dir/working/g509" ) then
       echo "Work folder already exists; skipping group 509"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_14-pt5m-V-flat-g509-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_14-pt5m-V-flat-g509-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g509"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g509"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_14-pt5m-V-flat-g509-mosaic.fits" >&! "$batch_dir/logs/g509.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_14-pt5m-V-flat-g509-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 510"

   if ( -d "$batch_dir/working/g510" ) then
       echo "Work folder already exists; skipping group 510"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_14-pt5m-R-flat-g510-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_14-pt5m-R-flat-g510-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g510"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g510"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_14-pt5m-R-flat-g510-mosaic.fits" >&! "$batch_dir/logs/g510.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_14-pt5m-R-flat-g510-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 511"

   if ( -d "$batch_dir/working/g511" ) then
       echo "Work folder already exists; skipping group 511"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_14-pt5m-I-flat-g511-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_14-pt5m-I-flat-g511-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g511"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g511"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_14-pt5m-I-flat-g511-mosaic.fits" >&! "$batch_dir/logs/g511.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_14-pt5m-I-flat-g511-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 513"

   if ( -d "$batch_dir/working/g513" ) then
       echo "Work folder already exists; skipping group 513"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_13-pt5m-V-flat-g513-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_13-pt5m-V-flat-g513-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g513"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g513"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_13-pt5m-V-flat-g513-mosaic.fits" >&! "$batch_dir/logs/g513.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_13-pt5m-V-flat-g513-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 514"

   if ( -d "$batch_dir/working/g514" ) then
       echo "Work folder already exists; skipping group 514"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_13-pt5m-R-flat-g514-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_13-pt5m-R-flat-g514-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g514"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g514"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_13-pt5m-R-flat-g514-mosaic.fits" >&! "$batch_dir/logs/g514.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_13-pt5m-R-flat-g514-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 515"

   if ( -d "$batch_dir/working/g515" ) then
       echo "Work folder already exists; skipping group 515"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_13-pt5m-I-flat-g515-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_13-pt5m-I-flat-g515-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g515"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g515"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_13-pt5m-I-flat-g515-mosaic.fits" >&! "$batch_dir/logs/g515.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_13-pt5m-I-flat-g515-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 518"

   if ( -d "$batch_dir/working/g518" ) then
       echo "Work folder already exists; skipping group 518"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_12-pt5m-R-flat-g518-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_12-pt5m-R-flat-g518-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g518"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g518"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_12-pt5m-R-flat-g518-mosaic.fits" >&! "$batch_dir/logs/g518.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_12-pt5m-R-flat-g518-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 519"

   if ( -d "$batch_dir/working/g519" ) then
       echo "Work folder already exists; skipping group 519"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_12-pt5m-I-flat-g519-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_12-pt5m-I-flat-g519-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g519"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g519"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_12-pt5m-I-flat-g519-mosaic.fits" >&! "$batch_dir/logs/g519.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_12-pt5m-I-flat-g519-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 521"

   if ( -d "$batch_dir/working/g521" ) then
       echo "Work folder already exists; skipping group 521"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_11-pt5m-V-flat-g521-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_11-pt5m-V-flat-g521-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g521"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g521"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_11-pt5m-V-flat-g521-mosaic.fits" >&! "$batch_dir/logs/g521.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_11-pt5m-V-flat-g521-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 522"

   if ( -d "$batch_dir/working/g522" ) then
       echo "Work folder already exists; skipping group 522"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_11-pt5m-R-flat-g522-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_11-pt5m-R-flat-g522-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g522"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g522"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_11-pt5m-R-flat-g522-mosaic.fits" >&! "$batch_dir/logs/g522.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_11-pt5m-R-flat-g522-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 523"

   if ( -d "$batch_dir/working/g523" ) then
       echo "Work folder already exists; skipping group 523"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_11-pt5m-I-flat-g523-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_11-pt5m-I-flat-g523-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g523"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g523"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_11-pt5m-I-flat-g523-mosaic.fits" >&! "$batch_dir/logs/g523.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_11-pt5m-I-flat-g523-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 525"

   if ( -d "$batch_dir/working/g525" ) then
       echo "Work folder already exists; skipping group 525"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_27-pt5m-V-flat-g525-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_27-pt5m-V-flat-g525-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g525"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g525"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_27-pt5m-V-flat-g525-mosaic.fits" >&! "$batch_dir/logs/g525.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_27-pt5m-V-flat-g525-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 526"

   if ( -d "$batch_dir/working/g526" ) then
       echo "Work folder already exists; skipping group 526"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_25-pt5m-V-flat-g526-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_25-pt5m-V-flat-g526-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g526"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g526"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_25-pt5m-V-flat-g526-mosaic.fits" >&! "$batch_dir/logs/g526.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_25-pt5m-V-flat-g526-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 528"

   if ( -d "$batch_dir/working/g528" ) then
       echo "Work folder already exists; skipping group 528"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_25-pt5m-R-flat-g528-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_25-pt5m-R-flat-g528-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g528"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g528"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_25-pt5m-R-flat-g528-mosaic.fits" >&! "$batch_dir/logs/g528.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_25-pt5m-R-flat-g528-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 529"

   if ( -d "$batch_dir/working/g529" ) then
       echo "Work folder already exists; skipping group 529"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_25-pt5m-I-flat-g529-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_25-pt5m-I-flat-g529-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g529"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g529"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_25-pt5m-I-flat-g529-mosaic.fits" >&! "$batch_dir/logs/g529.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_25-pt5m-I-flat-g529-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 530"

   if ( -d "$batch_dir/working/g530" ) then
       echo "Work folder already exists; skipping group 530"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_21-pt5m-V-flat-g530-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_21-pt5m-V-flat-g530-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g530"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g530"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_21-pt5m-V-flat-g530-mosaic.fits" >&! "$batch_dir/logs/g530.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_21-pt5m-V-flat-g530-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 532"

   if ( -d "$batch_dir/working/g532" ) then
       echo "Work folder already exists; skipping group 532"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_21-pt5m-R-flat-g532-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_21-pt5m-R-flat-g532-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g532"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g532"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_21-pt5m-R-flat-g532-mosaic.fits" >&! "$batch_dir/logs/g532.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_21-pt5m-R-flat-g532-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 533"

   if ( -d "$batch_dir/working/g533" ) then
       echo "Work folder already exists; skipping group 533"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_21-pt5m-I-flat-g533-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_21-pt5m-I-flat-g533-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g533"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g533"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_21-pt5m-I-flat-g533-mosaic.fits" >&! "$batch_dir/logs/g533.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_21-pt5m-I-flat-g533-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 534"

   if ( -d "$batch_dir/working/g534" ) then
       echo "Work folder already exists; skipping group 534"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_20-pt5m-V-flat-g534-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_20-pt5m-V-flat-g534-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g534"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g534"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_20-pt5m-V-flat-g534-mosaic.fits" >&! "$batch_dir/logs/g534.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_20-pt5m-V-flat-g534-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 536"

   if ( -d "$batch_dir/working/g536" ) then
       echo "Work folder already exists; skipping group 536"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_20-pt5m-R-flat-g536-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_20-pt5m-R-flat-g536-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g536"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g536"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_20-pt5m-R-flat-g536-mosaic.fits" >&! "$batch_dir/logs/g536.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_20-pt5m-R-flat-g536-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 537"

   if ( -d "$batch_dir/working/g537" ) then
       echo "Work folder already exists; skipping group 537"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_20-pt5m-I-flat-g537-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_20-pt5m-I-flat-g537-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g537"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g537"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_20-pt5m-I-flat-g537-mosaic.fits" >&! "$batch_dir/logs/g537.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_20-pt5m-I-flat-g537-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 540"

   if ( -d "$batch_dir/working/g540" ) then
       echo "Work folder already exists; skipping group 540"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_14-pt5m-V-flat-g540-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_14-pt5m-V-flat-g540-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g540"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g540"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_14-pt5m-V-flat-g540-mosaic.fits" >&! "$batch_dir/logs/g540.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_14-pt5m-V-flat-g540-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 542"

   if ( -d "$batch_dir/working/g542" ) then
       echo "Work folder already exists; skipping group 542"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_14-pt5m-R-flat-g542-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_14-pt5m-R-flat-g542-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g542"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g542"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_14-pt5m-R-flat-g542-mosaic.fits" >&! "$batch_dir/logs/g542.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_14-pt5m-R-flat-g542-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 543"

   if ( -d "$batch_dir/working/g543" ) then
       echo "Work folder already exists; skipping group 543"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_14-pt5m-I-flat-g543-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_14-pt5m-I-flat-g543-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g543"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g543"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_14-pt5m-I-flat-g543-mosaic.fits" >&! "$batch_dir/logs/g543.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_14-pt5m-I-flat-g543-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 544"

   if ( -d "$batch_dir/working/g544" ) then
       echo "Work folder already exists; skipping group 544"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_12-pt5m-V-flat-g544-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_12-pt5m-V-flat-g544-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g544"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g544"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_12-pt5m-V-flat-g544-mosaic.fits" >&! "$batch_dir/logs/g544.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_12-pt5m-V-flat-g544-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 546"

   if ( -d "$batch_dir/working/g546" ) then
       echo "Work folder already exists; skipping group 546"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_12-pt5m-R-flat-g546-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_12-pt5m-R-flat-g546-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g546"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g546"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_12-pt5m-R-flat-g546-mosaic.fits" >&! "$batch_dir/logs/g546.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_12-pt5m-R-flat-g546-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 547"

   if ( -d "$batch_dir/working/g547" ) then
       echo "Work folder already exists; skipping group 547"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_06_12-pt5m-I-flat-g547-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_06_12-pt5m-I-flat-g547-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g547"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g547"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_06_12-pt5m-I-flat-g547-mosaic.fits" >&! "$batch_dir/logs/g547.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_06_12-pt5m-I-flat-g547-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   
