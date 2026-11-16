#!/bin/csh -f
set batch_dir = "$cwd"
if ( ! -f "$batch_dir/stackX3.py" ) then
   echo "Run this from inside the batch folder; stackX3.py not found"
   exit 1
endif
mkdir -p working output_mosaics logs stacked_no_astrom
if ( $status != 0 ) exit 1

echo "Processing group 155"

if ( -e "$batch_dir/output_mosaics/sn2026aeiv-26_10_22-draco2-r-flat-g155-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 155"

else if ( -d "$batch_dir/working/g155" ) then
   echo "Work folder already exists; inspect logs/g155.log"

else
   mkdir "$batch_dir/working/g155"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g155"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "26_10_22" "0299" "0299" 5.0 >&! "$batch_dir/logs/g155.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g155.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aeiv-26_10_22-draco2-r-flat-g155-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 155"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aeiv-26_10_22-draco2-r-flat-g155-noastrom.fits"
       echo "Stacked but no astrometry for group 155; see logs/g155.log"

   else
       echo "Failed group 155; see logs/g155.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 175"

if ( -e "$batch_dir/output_mosaics/sn2026aeiv-26_10_10-draco2-r-flat-g175-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 175"

else if ( -d "$batch_dir/working/g175" ) then
   echo "Work folder already exists; inspect logs/g175.log"

else
   mkdir "$batch_dir/working/g175"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g175"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "26_10_10" "0053" "0060" 5.0 >&! "$batch_dir/logs/g175.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g175.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aeiv-26_10_10-draco2-r-flat-g175-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 175"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aeiv-26_10_10-draco2-r-flat-g175-noastrom.fits"
       echo "Stacked but no astrometry for group 175; see logs/g175.log"

   else
       echo "Failed group 175; see logs/g175.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 176"

if ( -e "$batch_dir/output_mosaics/sn2026aeiv-26_10_10-draco2-B-flat-g176-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 176"

else if ( -d "$batch_dir/working/g176" ) then
   echo "Work folder already exists; inspect logs/g176.log"

else
   mkdir "$batch_dir/working/g176"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g176"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "26_10_10" "0061" "0068" 5.0 >&! "$batch_dir/logs/g176.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g176.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aeiv-26_10_10-draco2-B-flat-g176-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 176"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aeiv-26_10_10-draco2-B-flat-g176-noastrom.fits"
       echo "Stacked but no astrometry for group 176; see logs/g176.log"

   else
       echo "Failed group 176; see logs/g176.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 611"

if ( -e "$batch_dir/output_mosaics/sn2026aeiv-26_10_30-pt5m-I-flat-g611-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 611"

else if ( -d "$batch_dir/working/g611" ) then
   echo "Work folder already exists; inspect logs/g611.log"

else
   mkdir "$batch_dir/working/g611"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g611"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_10_30" "0885516" "0885516" 5.0 >&! "$batch_dir/logs/g611.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g611.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aeiv-26_10_30-pt5m-I-flat-g611-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 611"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aeiv-26_10_30-pt5m-I-flat-g611-noastrom.fits"
       echo "Stacked but no astrometry for group 611; see logs/g611.log"

   else
       echo "Failed group 611; see logs/g611.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2655"

if ( -e "$batch_dir/output_mosaics/sn2026aeiv-26_11_09-draco2-V-flat-g2655-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2655"

else if ( -d "$batch_dir/working/g2655" ) then
   echo "Work folder already exists; inspect logs/g2655.log"

else
   mkdir "$batch_dir/working/g2655"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2655"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "26_11_09" "0175" "0182" 5.0 >&! "$batch_dir/logs/g2655.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2655.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aeiv-26_11_09-draco2-V-flat-g2655-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2655"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aeiv-26_11_09-draco2-V-flat-g2655-noastrom.fits"
       echo "Stacked but no astrometry for group 2655; see logs/g2655.log"

   else
       echo "Failed group 2655; see logs/g2655.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2658"

if ( -e "$batch_dir/output_mosaics/sn2026aeiv-26_10_30-pt5m-V-flat-g2658-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2658"

else if ( -d "$batch_dir/working/g2658" ) then
   echo "Work folder already exists; inspect logs/g2658.log"

else
   mkdir "$batch_dir/working/g2658"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2658"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_10_30" "0885517" "0885536" 5.0 >&! "$batch_dir/logs/g2658.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2658.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aeiv-26_10_30-pt5m-V-flat-g2658-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2658"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aeiv-26_10_30-pt5m-V-flat-g2658-noastrom.fits"
       echo "Stacked but no astrometry for group 2658; see logs/g2658.log"

   else
       echo "Failed group 2658; see logs/g2658.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif

echo "Lane 3 finished"
