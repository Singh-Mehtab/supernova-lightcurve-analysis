#!/bin/csh -f
set batch_dir = "$cwd"
mkdir -p working logs
if ( $status != 0 ) exit 1

   echo "Processing group 374"

   if ( -d "$batch_dir/working/g374" ) then
       echo "Work folder already exists; skipping group 374"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_25-far-east-16-B-flat-g374-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_25-far-east-16-B-flat-g374-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g374"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g374"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_25-far-east-16-B-flat-g374-mosaic.fits" >&! "$batch_dir/logs/g374.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_25-far-east-16-B-flat-g374-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 375"

   if ( -d "$batch_dir/working/g375" ) then
       echo "Work folder already exists; skipping group 375"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_25-far-east-16-B-flat-g375-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_25-far-east-16-B-flat-g375-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g375"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g375"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_25-far-east-16-B-flat-g375-mosaic.fits" >&! "$batch_dir/logs/g375.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_25-far-east-16-B-flat-g375-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 376"

   if ( -d "$batch_dir/working/g376" ) then
       echo "Work folder already exists; skipping group 376"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_25-far-east-16-V-flat-g376-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_25-far-east-16-V-flat-g376-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g376"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g376"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_25-far-east-16-V-flat-g376-mosaic.fits" >&! "$batch_dir/logs/g376.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_25-far-east-16-V-flat-g376-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 390"

   if ( -d "$batch_dir/working/g390" ) then
       echo "Work folder already exists; skipping group 390"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_21-far-east-16-B-flat-g390-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_21-far-east-16-B-flat-g390-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g390"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g390"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_21-far-east-16-B-flat-g390-mosaic.fits" >&! "$batch_dir/logs/g390.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_21-far-east-16-B-flat-g390-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 391"

   if ( -d "$batch_dir/working/g391" ) then
       echo "Work folder already exists; skipping group 391"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_21-far-east-16-V-flat-g391-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_21-far-east-16-V-flat-g391-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g391"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g391"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_21-far-east-16-V-flat-g391-mosaic.fits" >&! "$batch_dir/logs/g391.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_21-far-east-16-V-flat-g391-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 392"

   if ( -d "$batch_dir/working/g392" ) then
       echo "Work folder already exists; skipping group 392"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_21-far-east-16-r-flat-g392-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_21-far-east-16-r-flat-g392-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g392"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g392"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_21-far-east-16-r-flat-g392-mosaic.fits" >&! "$batch_dir/logs/g392.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_21-far-east-16-r-flat-g392-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 405"

   if ( -d "$batch_dir/working/g405" ) then
       echo "Work folder already exists; skipping group 405"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_14-west-14-B-flat-g405-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_14-west-14-B-flat-g405-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g405"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g405"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_14-west-14-B-flat-g405-mosaic.fits" >&! "$batch_dir/logs/g405.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_14-west-14-B-flat-g405-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 406"

   if ( -d "$batch_dir/working/g406" ) then
       echo "Work folder already exists; skipping group 406"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_14-west-14-V-flat-g406-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_14-west-14-V-flat-g406-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g406"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g406"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_14-west-14-V-flat-g406-mosaic.fits" >&! "$batch_dir/logs/g406.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_14-west-14-V-flat-g406-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 407"

   if ( -d "$batch_dir/working/g407" ) then
       echo "Work folder already exists; skipping group 407"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_14-west-14-R-flat-g407-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_14-west-14-R-flat-g407-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g407"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g407"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_14-west-14-R-flat-g407-mosaic.fits" >&! "$batch_dir/logs/g407.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_14-west-14-R-flat-g407-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 428"

   if ( -d "$batch_dir/working/g428" ) then
       echo "Work folder already exists; skipping group 428"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_07-east-14-V-flat-g428-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_07-east-14-V-flat-g428-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g428"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g428"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_07-east-14-V-flat-g428-mosaic.fits" >&! "$batch_dir/logs/g428.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_07-east-14-V-flat-g428-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 442"

   if ( -d "$batch_dir/working/g442" ) then
       echo "Work folder already exists; skipping group 442"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_04-west-14-B-flat-g442-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_04-west-14-B-flat-g442-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g442"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g442"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_04-west-14-B-flat-g442-mosaic.fits" >&! "$batch_dir/logs/g442.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_04-west-14-B-flat-g442-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 450"

   if ( -d "$batch_dir/working/g450" ) then
       echo "Work folder already exists; skipping group 450"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_02-west-14-V-flat-g450-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_02-west-14-V-flat-g450-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g450"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g450"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_02-west-14-V-flat-g450-mosaic.fits" >&! "$batch_dir/logs/g450.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_02-west-14-V-flat-g450-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 451"

   if ( -d "$batch_dir/working/g451" ) then
       echo "Work folder already exists; skipping group 451"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_02_02-west-14-R-flat-g451-mosaic.fits" ) then
           echo "Missing input: at2019np-19_02_02-west-14-R-flat-g451-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g451"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g451"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_02_02-west-14-R-flat-g451-mosaic.fits" >&! "$batch_dir/logs/g451.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_02_02-west-14-R-flat-g451-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 462"

   if ( -d "$batch_dir/working/g462" ) then
       echo "Work folder already exists; skipping group 462"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_29-far-east-16-V-flat-g462-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_29-far-east-16-V-flat-g462-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g462"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g462"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_29-far-east-16-V-flat-g462-mosaic.fits" >&! "$batch_dir/logs/g462.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_29-far-east-16-V-flat-g462-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 463"

   if ( -d "$batch_dir/working/g463" ) then
       echo "Work folder already exists; skipping group 463"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_29-far-east-16-B-flat-g463-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_29-far-east-16-B-flat-g463-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g463"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g463"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_29-far-east-16-B-flat-g463-mosaic.fits" >&! "$batch_dir/logs/g463.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_29-far-east-16-B-flat-g463-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 464"

   if ( -d "$batch_dir/working/g464" ) then
       echo "Work folder already exists; skipping group 464"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_29-far-east-16-r-flat-g464-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_29-far-east-16-r-flat-g464-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g464"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g464"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_29-far-east-16-r-flat-g464-mosaic.fits" >&! "$batch_dir/logs/g464.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_29-far-east-16-r-flat-g464-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 469"

   if ( -d "$batch_dir/working/g469" ) then
       echo "Work folder already exists; skipping group 469"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_28-draco2-V-flat-g469-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_28-draco2-V-flat-g469-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g469"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g469"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_28-draco2-V-flat-g469-mosaic.fits" >&! "$batch_dir/logs/g469.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_28-draco2-V-flat-g469-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 472"

   if ( -d "$batch_dir/working/g472" ) then
       echo "Work folder already exists; skipping group 472"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_28-draco2-r-flat-g472-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_28-draco2-r-flat-g472-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g472"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g472"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_28-draco2-r-flat-g472-mosaic.fits" >&! "$batch_dir/logs/g472.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_28-draco2-r-flat-g472-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 492"

   if ( -d "$batch_dir/working/g492" ) then
       echo "Work folder already exists; skipping group 492"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_22-far-east-16-B-flat-g492-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_22-far-east-16-B-flat-g492-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g492"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g492"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_22-far-east-16-B-flat-g492-mosaic.fits" >&! "$batch_dir/logs/g492.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_22-far-east-16-B-flat-g492-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 493"

   if ( -d "$batch_dir/working/g493" ) then
       echo "Work folder already exists; skipping group 493"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_22-far-east-16-V-flat-g493-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_22-far-east-16-V-flat-g493-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g493"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g493"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_22-far-east-16-V-flat-g493-mosaic.fits" >&! "$batch_dir/logs/g493.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_22-far-east-16-V-flat-g493-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 494"

   if ( -d "$batch_dir/working/g494" ) then
       echo "Work folder already exists; skipping group 494"
   else
       if ( ! -s "$batch_dir/input_mosaics/at2019np-19_01_22-far-east-16-r-flat-g494-mosaic.fits" ) then
           echo "Missing input: at2019np-19_01_22-far-east-16-r-flat-g494-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g494"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g494"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/at2019np-19_01_22-far-east-16-r-flat-g494-mosaic.fits" >&! "$batch_dir/logs/g494.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "at2019np-19_01_22-far-east-16-r-flat-g494-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 549"

   if ( -d "$batch_dir/working/g549" ) then
       echo "Work folder already exists; skipping group 549"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_05_05-east-14-V-flat-g549-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_05_05-east-14-V-flat-g549-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g549"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g549"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_05_05-east-14-V-flat-g549-mosaic.fits" >&! "$batch_dir/logs/g549.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_05_05-east-14-V-flat-g549-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 550"

   if ( -d "$batch_dir/working/g550" ) then
       echo "Work folder already exists; skipping group 550"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_05_05-east-14-B-flat-g550-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_05_05-east-14-B-flat-g550-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g550"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g550"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_05_05-east-14-B-flat-g550-mosaic.fits" >&! "$batch_dir/logs/g550.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_05_05-east-14-B-flat-g550-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 552"

   if ( -d "$batch_dir/working/g552" ) then
       echo "Work folder already exists; skipping group 552"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_05_03-east-14-V-flat-g552-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_05_03-east-14-V-flat-g552-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g552"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g552"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_05_03-east-14-V-flat-g552-mosaic.fits" >&! "$batch_dir/logs/g552.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_05_03-east-14-V-flat-g552-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 553"

   if ( -d "$batch_dir/working/g553" ) then
       echo "Work folder already exists; skipping group 553"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_05_03-east-14-B-flat-g553-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_05_03-east-14-B-flat-g553-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g553"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g553"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_05_03-east-14-B-flat-g553-mosaic.fits" >&! "$batch_dir/logs/g553.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_05_03-east-14-B-flat-g553-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 554"

   if ( -d "$batch_dir/working/g554" ) then
       echo "Work folder already exists; skipping group 554"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_05_03-east-14-R-flat-g554-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_05_03-east-14-R-flat-g554-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g554"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g554"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_05_03-east-14-R-flat-g554-mosaic.fits" >&! "$batch_dir/logs/g554.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_05_03-east-14-R-flat-g554-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 555"

   if ( -d "$batch_dir/working/g555" ) then
       echo "Work folder already exists; skipping group 555"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_04_29-east-14-V-flat-g555-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_04_29-east-14-V-flat-g555-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g555"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g555"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_04_29-east-14-V-flat-g555-mosaic.fits" >&! "$batch_dir/logs/g555.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_04_29-east-14-V-flat-g555-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 556"

   if ( -d "$batch_dir/working/g556" ) then
       echo "Work folder already exists; skipping group 556"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_04_29-east-14-V-flat-g556-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_04_29-east-14-V-flat-g556-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g556"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g556"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_04_29-east-14-V-flat-g556-mosaic.fits" >&! "$batch_dir/logs/g556.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_04_29-east-14-V-flat-g556-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 557"

   if ( -d "$batch_dir/working/g557" ) then
       echo "Work folder already exists; skipping group 557"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_04_29-east-14-B-flat-g557-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_04_29-east-14-B-flat-g557-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g557"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g557"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_04_29-east-14-B-flat-g557-mosaic.fits" >&! "$batch_dir/logs/g557.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_04_29-east-14-B-flat-g557-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 558"

   if ( -d "$batch_dir/working/g558" ) then
       echo "Work folder already exists; skipping group 558"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_04_28-east-14-V-flat-g558-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_04_28-east-14-V-flat-g558-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g558"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g558"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_04_28-east-14-V-flat-g558-mosaic.fits" >&! "$batch_dir/logs/g558.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_04_28-east-14-V-flat-g558-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 559"

   if ( -d "$batch_dir/working/g559" ) then
       echo "Work folder already exists; skipping group 559"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_04_28-east-14-B-flat-g559-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_04_28-east-14-B-flat-g559-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g559"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g559"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_04_28-east-14-B-flat-g559-mosaic.fits" >&! "$batch_dir/logs/g559.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_04_28-east-14-B-flat-g559-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 561"

   if ( -d "$batch_dir/working/g561" ) then
       echo "Work folder already exists; skipping group 561"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_04_12-east-14-V-flat-g561-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_04_12-east-14-V-flat-g561-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g561"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g561"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_04_12-east-14-V-flat-g561-mosaic.fits" >&! "$batch_dir/logs/g561.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_04_12-east-14-V-flat-g561-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 565"

   if ( -d "$batch_dir/working/g565" ) then
       echo "Work folder already exists; skipping group 565"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_04_10-east-14-V-flat-g565-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_04_10-east-14-V-flat-g565-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g565"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g565"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_04_10-east-14-V-flat-g565-mosaic.fits" >&! "$batch_dir/logs/g565.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_04_10-east-14-V-flat-g565-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 568"

   if ( -d "$batch_dir/working/g568" ) then
       echo "Work folder already exists; skipping group 568"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_04_09-east-14-V-flat-g568-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_04_09-east-14-V-flat-g568-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g568"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g568"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_04_09-east-14-V-flat-g568-mosaic.fits" >&! "$batch_dir/logs/g568.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_04_09-east-14-V-flat-g568-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 572"

   if ( -d "$batch_dir/working/g572" ) then
       echo "Work folder already exists; skipping group 572"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_04_04-east-14-V-flat-g572-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_04_04-east-14-V-flat-g572-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g572"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g572"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_04_04-east-14-V-flat-g572-mosaic.fits" >&! "$batch_dir/logs/g572.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_04_04-east-14-V-flat-g572-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 577"

   if ( -d "$batch_dir/working/g577" ) then
       echo "Work folder already exists; skipping group 577"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_03_31-east-14-R-flat-g577-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_03_31-east-14-R-flat-g577-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g577"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g577"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_03_31-east-14-R-flat-g577-mosaic.fits" >&! "$batch_dir/logs/g577.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_03_31-east-14-R-flat-g577-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 578"

   if ( -d "$batch_dir/working/g578" ) then
       echo "Work folder already exists; skipping group 578"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_03_29-east-14-V-flat-g578-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_03_29-east-14-V-flat-g578-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g578"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g578"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_03_29-east-14-V-flat-g578-mosaic.fits" >&! "$batch_dir/logs/g578.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_03_29-east-14-V-flat-g578-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 581"

   if ( -d "$batch_dir/working/g581" ) then
       echo "Work folder already exists; skipping group 581"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_03_28-east-14-V-flat-g581-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_03_28-east-14-V-flat-g581-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g581"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g581"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_03_28-east-14-V-flat-g581-mosaic.fits" >&! "$batch_dir/logs/g581.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_03_28-east-14-V-flat-g581-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 594"

   if ( -d "$batch_dir/working/g594" ) then
       echo "Work folder already exists; skipping group 594"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_02_15-far-east-16-r-flat-g594-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_02_15-far-east-16-r-flat-g594-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g594"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g594"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_02_15-far-east-16-r-flat-g594-mosaic.fits" >&! "$batch_dir/logs/g594.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_02_15-far-east-16-r-flat-g594-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 596"

   if ( -d "$batch_dir/working/g596" ) then
       echo "Work folder already exists; skipping group 596"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_02_10-far-east-16-V-flat-g596-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_02_10-far-east-16-V-flat-g596-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g596"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g596"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_02_10-far-east-16-V-flat-g596-mosaic.fits" >&! "$batch_dir/logs/g596.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_02_10-far-east-16-V-flat-g596-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 597"

   if ( -d "$batch_dir/working/g597" ) then
       echo "Work folder already exists; skipping group 597"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_02_10-far-east-16-r-flat-g597-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_02_10-far-east-16-r-flat-g597-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g597"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g597"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_02_10-far-east-16-r-flat-g597-mosaic.fits" >&! "$batch_dir/logs/g597.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_02_10-far-east-16-r-flat-g597-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   

   echo "Processing group 598"

   if ( -d "$batch_dir/working/g598" ) then
       echo "Work folder already exists; skipping group 598"
   else
       if ( ! -s "$batch_dir/input_mosaics/sn2019np-19_02_10-far-east-16-B-flat-g598-mosaic.fits" ) then
           echo "Missing input: sn2019np-19_02_10-far-east-16-B-flat-g598-mosaic.fits"
           exit 1
       endif

       mkdir "$batch_dir/working/g598"
       if ( $status != 0 ) exit 1

       cd "$batch_dir/working/g598"
       if ( $status != 0 ) exit 1

       python /mnt/64bin/find_zeropoint.py3 "../../input_mosaics/sn2019np-19_02_10-far-east-16-B-flat-g598-mosaic.fits" >&! "$batch_dir/logs/g598.log"
       set calibration_status = $status

       if ( $calibration_status != 0 ) then
           rm -f zpts.log
           if ( $status != 0 ) exit 1
       endif

       python "$batch_dir/store_zeropoint.py" "sn2019np-19_02_10-far-east-16-B-flat-g598-mosaic.fits" "$batch_dir/results.csv"
       if ( $status != 0 ) exit 1

       cd "$batch_dir"
       if ( $status != 0 ) exit 1
   endif
   
