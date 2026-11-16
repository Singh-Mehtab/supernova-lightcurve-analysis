#!/bin/csh -f
set batch_dir = "$cwd"
if ( ! -f "$batch_dir/stackX3.py" ) then
   echo "Run this from inside the batch folder; stackX3.py not found"
   exit 1
endif
mkdir -p working output_mosaics logs stacked_no_astrom
if ( $status != 0 ) exit 1

echo "Processing group 608"

if ( -e "$batch_dir/output_mosaics/sn2026acna-26_11_04-pt5m-I-flat-g608-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 608"

else if ( -d "$batch_dir/working/g608" ) then
   echo "Work folder already exists; inspect logs/g608.log"

else
   mkdir "$batch_dir/working/g608"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g608"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_11_04" "0885754" "0885754" 5.0 >&! "$batch_dir/logs/g608.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g608.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026acna-26_11_04-pt5m-I-flat-g608-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 608"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026acna-26_11_04-pt5m-I-flat-g608-noastrom.fits"
       echo "Stacked but no astrometry for group 608; see logs/g608.log"

   else
       echo "Failed group 608; see logs/g608.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 609"

if ( -e "$batch_dir/output_mosaics/sn2026acna-26_10_30-pt5m-I-flat-g609-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 609"

else if ( -d "$batch_dir/working/g609" ) then
   echo "Work folder already exists; inspect logs/g609.log"

else
   mkdir "$batch_dir/working/g609"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g609"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_10_30" "0885436" "0885436" 5.0 >&! "$batch_dir/logs/g609.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g609.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026acna-26_10_30-pt5m-I-flat-g609-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 609"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026acna-26_10_30-pt5m-I-flat-g609-noastrom.fits"
       echo "Stacked but no astrometry for group 609; see logs/g609.log"

   else
       echo "Failed group 609; see logs/g609.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2391"

if ( -e "$batch_dir/output_mosaics/sn2026acna-26_10_01-east-16-B-flat-g2391-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2391"

else if ( -d "$batch_dir/working/g2391" ) then
   echo "Work folder already exists; inspect logs/g2391.log"

else
   mkdir "$batch_dir/working/g2391"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2391"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_10_01" "0098" "0105" 5.0 >&! "$batch_dir/logs/g2391.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2391.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026acna-26_10_01-east-16-B-flat-g2391-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2391"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026acna-26_10_01-east-16-B-flat-g2391-noastrom.fits"
       echo "Stacked but no astrometry for group 2391; see logs/g2391.log"

   else
       echo "Failed group 2391; see logs/g2391.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2392"

if ( -e "$batch_dir/output_mosaics/sn2026acna-26_10_01-east-16-V-flat-g2392-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2392"

else if ( -d "$batch_dir/working/g2392" ) then
   echo "Work folder already exists; inspect logs/g2392.log"

else
   mkdir "$batch_dir/working/g2392"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2392"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_10_01" "0081" "0081" 5.0 >&! "$batch_dir/logs/g2392.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2392.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026acna-26_10_01-east-16-V-flat-g2392-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2392"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026acna-26_10_01-east-16-V-flat-g2392-noastrom.fits"
       echo "Stacked but no astrometry for group 2392; see logs/g2392.log"

   else
       echo "Failed group 2392; see logs/g2392.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2393"

if ( -e "$batch_dir/output_mosaics/sn2026acna-26_10_01-east-16-V-flat-g2393-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2393"

else if ( -d "$batch_dir/working/g2393" ) then
   echo "Work folder already exists; inspect logs/g2393.log"

else
   mkdir "$batch_dir/working/g2393"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2393"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_10_01" "0082" "0089" 5.0 >&! "$batch_dir/logs/g2393.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2393.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026acna-26_10_01-east-16-V-flat-g2393-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2393"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026acna-26_10_01-east-16-V-flat-g2393-noastrom.fits"
       echo "Stacked but no astrometry for group 2393; see logs/g2393.log"

   else
       echo "Failed group 2393; see logs/g2393.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2394"

if ( -e "$batch_dir/output_mosaics/sn2026acna-26_10_01-east-16-r-flat-g2394-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2394"

else if ( -d "$batch_dir/working/g2394" ) then
   echo "Work folder already exists; inspect logs/g2394.log"

else
   mkdir "$batch_dir/working/g2394"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2394"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_10_01" "0090" "0097" 5.0 >&! "$batch_dir/logs/g2394.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2394.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026acna-26_10_01-east-16-r-flat-g2394-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2394"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026acna-26_10_01-east-16-r-flat-g2394-noastrom.fits"
       echo "Stacked but no astrometry for group 2394; see logs/g2394.log"

   else
       echo "Failed group 2394; see logs/g2394.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2395"

if ( -e "$batch_dir/output_mosaics/sn2026acna-26_10_30-pt5m-V-flat-g2395-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2395"

else if ( -d "$batch_dir/working/g2395" ) then
   echo "Work folder already exists; inspect logs/g2395.log"

else
   mkdir "$batch_dir/working/g2395"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2395"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_10_30" "0885437" "0885456" 5.0 >&! "$batch_dir/logs/g2395.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2395.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026acna-26_10_30-pt5m-V-flat-g2395-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2395"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026acna-26_10_30-pt5m-V-flat-g2395-noastrom.fits"
       echo "Stacked but no astrometry for group 2395; see logs/g2395.log"

   else
       echo "Failed group 2395; see logs/g2395.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2396"

if ( -e "$batch_dir/output_mosaics/sn2026acna-26_11_04-pt5m-V-flat-g2396-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2396"

else if ( -d "$batch_dir/working/g2396" ) then
   echo "Work folder already exists; inspect logs/g2396.log"

else
   mkdir "$batch_dir/working/g2396"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2396"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_11_04" "0885755" "0885774" 5.0 >&! "$batch_dir/logs/g2396.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2396.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026acna-26_11_04-pt5m-V-flat-g2396-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2396"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026acna-26_11_04-pt5m-V-flat-g2396-noastrom.fits"
       echo "Stacked but no astrometry for group 2396; see logs/g2396.log"

   else
       echo "Failed group 2396; see logs/g2396.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2654"

if ( -e "$batch_dir/output_mosaics/sn2026acna-26_11_09-draco2-V-flat-g2654-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2654"

else if ( -d "$batch_dir/working/g2654" ) then
   echo "Work folder already exists; inspect logs/g2654.log"

else
   mkdir "$batch_dir/working/g2654"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2654"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "26_11_09" "0183" "0187" 5.0 >&! "$batch_dir/logs/g2654.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2654.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026acna-26_11_09-draco2-V-flat-g2654-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2654"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026acna-26_11_09-draco2-V-flat-g2654-noastrom.fits"
       echo "Stacked but no astrometry for group 2654; see logs/g2654.log"

   else
       echo "Failed group 2654; see logs/g2654.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif

echo "Lane 2 finished"
