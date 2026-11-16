#!/bin/csh -f
set batch_dir = "$cwd"
if ( ! -f "$batch_dir/stackX3.py" ) then
   echo "Run this from inside the batch folder; stackX3.py not found"
   exit 1
endif
mkdir -p working output_mosaics logs stacked_no_astrom
if ( $status != 0 ) exit 1

echo "Processing group 1400"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_10_28-draco2-C-flat-g1400-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1400"

else if ( -d "$batch_dir/working/g1400" ) then
   echo "Work folder already exists; inspect logs/g1400.log"

else
   mkdir "$batch_dir/working/g1400"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1400"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_10_28" "0398" "0398" 5.0 >&! "$batch_dir/logs/g1400.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1400.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_10_28-draco2-C-flat-g1400-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1400"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_10_28-draco2-C-flat-g1400-noastrom.fits"
       echo "Stacked but no astrometry for group 1400; see logs/g1400.log"

   else
       echo "Failed group 1400; see logs/g1400.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1401"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_10_28-draco2-V-flat-g1401-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1401"

else if ( -d "$batch_dir/working/g1401" ) then
   echo "Work folder already exists; inspect logs/g1401.log"

else
   mkdir "$batch_dir/working/g1401"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1401"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_10_28" "0399" "0408" 5.0 >&! "$batch_dir/logs/g1401.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1401.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_10_28-draco2-V-flat-g1401-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1401"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_10_28-draco2-V-flat-g1401-noastrom.fits"
       echo "Stacked but no astrometry for group 1401; see logs/g1401.log"

   else
       echo "Failed group 1401; see logs/g1401.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1402"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_10_29-draco2-B-flat-g1402-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1402"

else if ( -d "$batch_dir/working/g1402" ) then
   echo "Work folder already exists; inspect logs/g1402.log"

else
   mkdir "$batch_dir/working/g1402"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1402"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_10_29" "0041" "0062" 5.0 >&! "$batch_dir/logs/g1402.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1402.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_10_29-draco2-B-flat-g1402-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1402"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_10_29-draco2-B-flat-g1402-noastrom.fits"
       echo "Stacked but no astrometry for group 1402; see logs/g1402.log"

   else
       echo "Failed group 1402; see logs/g1402.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1403"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_10_29-draco2-C-flat-g1403-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1403"

else if ( -d "$batch_dir/working/g1403" ) then
   echo "Work folder already exists; inspect logs/g1403.log"

else
   mkdir "$batch_dir/working/g1403"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1403"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_10_29" "0003" "0004" 5.0 >&! "$batch_dir/logs/g1403.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1403.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_10_29-draco2-C-flat-g1403-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1403"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_10_29-draco2-C-flat-g1403-noastrom.fits"
       echo "Stacked but no astrometry for group 1403; see logs/g1403.log"

   else
       echo "Failed group 1403; see logs/g1403.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1404"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_10_29-draco2-C-flat-g1404-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1404"

else if ( -d "$batch_dir/working/g1404" ) then
   echo "Work folder already exists; inspect logs/g1404.log"

else
   mkdir "$batch_dir/working/g1404"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1404"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_10_29" "0001" "0002" 5.0 >&! "$batch_dir/logs/g1404.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1404.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_10_29-draco2-C-flat-g1404-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1404"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_10_29-draco2-C-flat-g1404-noastrom.fits"
       echo "Stacked but no astrometry for group 1404; see logs/g1404.log"

   else
       echo "Failed group 1404; see logs/g1404.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1405"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_10_29-draco2-V-flat-g1405-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1405"

else if ( -d "$batch_dir/working/g1405" ) then
   echo "Work folder already exists; inspect logs/g1405.log"

else
   mkdir "$batch_dir/working/g1405"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1405"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_10_29" "0005" "0013" 5.0 >&! "$batch_dir/logs/g1405.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1405.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_10_29-draco2-V-flat-g1405-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1405"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_10_29-draco2-V-flat-g1405-noastrom.fits"
       echo "Stacked but no astrometry for group 1405; see logs/g1405.log"

   else
       echo "Failed group 1405; see logs/g1405.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1406"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_10_29-draco2-V-flat-g1406-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1406"

else if ( -d "$batch_dir/working/g1406" ) then
   echo "Work folder already exists; inspect logs/g1406.log"

else
   mkdir "$batch_dir/working/g1406"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1406"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_10_29" "0014" "0040" 5.0 >&! "$batch_dir/logs/g1406.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1406.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_10_29-draco2-V-flat-g1406-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1406"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_10_29-draco2-V-flat-g1406-noastrom.fits"
       echo "Stacked but no astrometry for group 1406; see logs/g1406.log"

   else
       echo "Failed group 1406; see logs/g1406.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1407"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_10_30-far-east-16-B-flat-g1407-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1407"

else if ( -d "$batch_dir/working/g1407" ) then
   echo "Work folder already exists; inspect logs/g1407.log"

else
   mkdir "$batch_dir/working/g1407"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1407"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "far-east-16" "19_10_30" "0018" "0029" 5.0 >&! "$batch_dir/logs/g1407.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1407.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_10_30-far-east-16-B-flat-g1407-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1407"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_10_30-far-east-16-B-flat-g1407-noastrom.fits"
       echo "Stacked but no astrometry for group 1407; see logs/g1407.log"

   else
       echo "Failed group 1407; see logs/g1407.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1408"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_10_30-far-east-16-C-flat-g1408-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1408"

else if ( -d "$batch_dir/working/g1408" ) then
   echo "Work folder already exists; inspect logs/g1408.log"

else
   mkdir "$batch_dir/working/g1408"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1408"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "far-east-16" "19_10_30" "0008" "0008" 5.0 >&! "$batch_dir/logs/g1408.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1408.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_10_30-far-east-16-C-flat-g1408-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1408"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_10_30-far-east-16-C-flat-g1408-noastrom.fits"
       echo "Stacked but no astrometry for group 1408; see logs/g1408.log"

   else
       echo "Failed group 1408; see logs/g1408.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1409"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_10_30-far-east-16-V-flat-g1409-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1409"

else if ( -d "$batch_dir/working/g1409" ) then
   echo "Work folder already exists; inspect logs/g1409.log"

else
   mkdir "$batch_dir/working/g1409"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1409"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "far-east-16" "19_10_30" "0009" "0017" 5.0 >&! "$batch_dir/logs/g1409.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1409.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_10_30-far-east-16-V-flat-g1409-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1409"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_10_30-far-east-16-V-flat-g1409-noastrom.fits"
       echo "Stacked but no astrometry for group 1409; see logs/g1409.log"

   else
       echo "Failed group 1409; see logs/g1409.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1410"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_05-east-14-V-flat-g1410-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1410"

else if ( -d "$batch_dir/working/g1410" ) then
   echo "Work folder already exists; inspect logs/g1410.log"

else
   mkdir "$batch_dir/working/g1410"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1410"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "19_11_05" "0001" "0032" 5.0 >&! "$batch_dir/logs/g1410.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1410.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_05-east-14-V-flat-g1410-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1410"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_05-east-14-V-flat-g1410-noastrom.fits"
       echo "Stacked but no astrometry for group 1410; see logs/g1410.log"

   else
       echo "Failed group 1410; see logs/g1410.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1411"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_05-west-14-B-flat-g1411-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1411"

else if ( -d "$batch_dir/working/g1411" ) then
   echo "Work folder already exists; inspect logs/g1411.log"

else
   mkdir "$batch_dir/working/g1411"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1411"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "west-14" "19_11_05" "0052" "0061" 5.0 >&! "$batch_dir/logs/g1411.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1411.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_05-west-14-B-flat-g1411-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1411"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_05-west-14-B-flat-g1411-noastrom.fits"
       echo "Stacked but no astrometry for group 1411; see logs/g1411.log"

   else
       echo "Failed group 1411; see logs/g1411.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1412"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_06-pt5m-B-flat-g1412-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1412"

else if ( -d "$batch_dir/working/g1412" ) then
   echo "Work folder already exists; inspect logs/g1412.log"

else
   mkdir "$batch_dir/working/g1412"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1412"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_06" "0594792" "0594797" 5.0 >&! "$batch_dir/logs/g1412.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1412.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_06-pt5m-B-flat-g1412-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1412"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_06-pt5m-B-flat-g1412-noastrom.fits"
       echo "Stacked but no astrometry for group 1412; see logs/g1412.log"

   else
       echo "Failed group 1412; see logs/g1412.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1413"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_06-pt5m-V-flat-g1413-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1413"

else if ( -d "$batch_dir/working/g1413" ) then
   echo "Work folder already exists; inspect logs/g1413.log"

else
   mkdir "$batch_dir/working/g1413"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1413"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_06" "0594785" "0594791" 5.0 >&! "$batch_dir/logs/g1413.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1413.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_06-pt5m-V-flat-g1413-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1413"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_06-pt5m-V-flat-g1413-noastrom.fits"
       echo "Stacked but no astrometry for group 1413; see logs/g1413.log"

   else
       echo "Failed group 1413; see logs/g1413.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1414"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_08-draco2-B-flat-g1414-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1414"

else if ( -d "$batch_dir/working/g1414" ) then
   echo "Work folder already exists; inspect logs/g1414.log"

else
   mkdir "$batch_dir/working/g1414"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1414"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_11_08" "0106" "0121" 5.0 >&! "$batch_dir/logs/g1414.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1414.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_08-draco2-B-flat-g1414-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1414"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_08-draco2-B-flat-g1414-noastrom.fits"
       echo "Stacked but no astrometry for group 1414; see logs/g1414.log"

   else
       echo "Failed group 1414; see logs/g1414.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1415"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_08-draco2-V-flat-g1415-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1415"

else if ( -d "$batch_dir/working/g1415" ) then
   echo "Work folder already exists; inspect logs/g1415.log"

else
   mkdir "$batch_dir/working/g1415"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1415"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_11_08" "0090" "0105" 5.0 >&! "$batch_dir/logs/g1415.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1415.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_08-draco2-V-flat-g1415-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1415"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_08-draco2-V-flat-g1415-noastrom.fits"
       echo "Stacked but no astrometry for group 1415; see logs/g1415.log"

   else
       echo "Failed group 1415; see logs/g1415.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1416"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_08-pt5m-B-flat-g1416-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1416"

else if ( -d "$batch_dir/working/g1416" ) then
   echo "Work folder already exists; inspect logs/g1416.log"

else
   mkdir "$batch_dir/working/g1416"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1416"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_08" "0595121" "0595126" 5.0 >&! "$batch_dir/logs/g1416.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1416.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_08-pt5m-B-flat-g1416-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1416"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_08-pt5m-B-flat-g1416-noastrom.fits"
       echo "Stacked but no astrometry for group 1416; see logs/g1416.log"

   else
       echo "Failed group 1416; see logs/g1416.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1417"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_08-pt5m-V-flat-g1417-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1417"

else if ( -d "$batch_dir/working/g1417" ) then
   echo "Work folder already exists; inspect logs/g1417.log"

else
   mkdir "$batch_dir/working/g1417"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1417"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_08" "0595114" "0595120" 5.0 >&! "$batch_dir/logs/g1417.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1417.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_08-pt5m-V-flat-g1417-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1417"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_08-pt5m-V-flat-g1417-noastrom.fits"
       echo "Stacked but no astrometry for group 1417; see logs/g1417.log"

   else
       echo "Failed group 1417; see logs/g1417.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1418"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_11-far-east-16-V-flat-g1418-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1418"

else if ( -d "$batch_dir/working/g1418" ) then
   echo "Work folder already exists; inspect logs/g1418.log"

else
   mkdir "$batch_dir/working/g1418"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1418"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "far-east-16" "19_11_11" "0051" "0061" 5.0 >&! "$batch_dir/logs/g1418.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1418.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_11-far-east-16-V-flat-g1418-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1418"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_11-far-east-16-V-flat-g1418-noastrom.fits"
       echo "Stacked but no astrometry for group 1418; see logs/g1418.log"

   else
       echo "Failed group 1418; see logs/g1418.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1419"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_12-pt5m-B-flat-g1419-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1419"

else if ( -d "$batch_dir/working/g1419" ) then
   echo "Work folder already exists; inspect logs/g1419.log"

else
   mkdir "$batch_dir/working/g1419"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1419"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_12" "0595606" "0595611" 5.0 >&! "$batch_dir/logs/g1419.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1419.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_12-pt5m-B-flat-g1419-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1419"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_12-pt5m-B-flat-g1419-noastrom.fits"
       echo "Stacked but no astrometry for group 1419; see logs/g1419.log"

   else
       echo "Failed group 1419; see logs/g1419.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1420"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_12-pt5m-V-flat-g1420-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1420"

else if ( -d "$batch_dir/working/g1420" ) then
   echo "Work folder already exists; inspect logs/g1420.log"

else
   mkdir "$batch_dir/working/g1420"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1420"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_12" "0595599" "0595605" 5.0 >&! "$batch_dir/logs/g1420.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1420.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_12-pt5m-V-flat-g1420-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1420"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_12-pt5m-V-flat-g1420-noastrom.fits"
       echo "Stacked but no astrometry for group 1420; see logs/g1420.log"

   else
       echo "Failed group 1420; see logs/g1420.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1421"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_13-far-east-16-B-flat-g1421-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1421"

else if ( -d "$batch_dir/working/g1421" ) then
   echo "Work folder already exists; inspect logs/g1421.log"

else
   mkdir "$batch_dir/working/g1421"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1421"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "far-east-16" "19_11_13" "0012" "0067" 5.0 >&! "$batch_dir/logs/g1421.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1421.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_13-far-east-16-B-flat-g1421-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1421"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_13-far-east-16-B-flat-g1421-noastrom.fits"
       echo "Stacked but no astrometry for group 1421; see logs/g1421.log"

   else
       echo "Failed group 1421; see logs/g1421.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1422"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_13-far-east-16-V-flat-g1422-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1422"

else if ( -d "$batch_dir/working/g1422" ) then
   echo "Work folder already exists; inspect logs/g1422.log"

else
   mkdir "$batch_dir/working/g1422"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1422"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "far-east-16" "19_11_13" "0004" "0011" 5.0 >&! "$batch_dir/logs/g1422.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1422.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_13-far-east-16-V-flat-g1422-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1422"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_13-far-east-16-V-flat-g1422-noastrom.fits"
       echo "Stacked but no astrometry for group 1422; see logs/g1422.log"

   else
       echo "Failed group 1422; see logs/g1422.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1423"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_13-far-east-16-V-flat-g1423-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1423"

else if ( -d "$batch_dir/working/g1423" ) then
   echo "Work folder already exists; inspect logs/g1423.log"

else
   mkdir "$batch_dir/working/g1423"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1423"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "far-east-16" "19_11_13" "0068" "0071" 5.0 >&! "$batch_dir/logs/g1423.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1423.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_13-far-east-16-V-flat-g1423-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1423"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_13-far-east-16-V-flat-g1423-noastrom.fits"
       echo "Stacked but no astrometry for group 1423; see logs/g1423.log"

   else
       echo "Failed group 1423; see logs/g1423.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1424"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_17-draco2-V-flat-g1424-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1424"

else if ( -d "$batch_dir/working/g1424" ) then
   echo "Work folder already exists; inspect logs/g1424.log"

else
   mkdir "$batch_dir/working/g1424"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1424"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_11_17" "0050" "0060" 5.0 >&! "$batch_dir/logs/g1424.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1424.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_17-draco2-V-flat-g1424-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1424"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_17-draco2-V-flat-g1424-noastrom.fits"
       echo "Stacked but no astrometry for group 1424; see logs/g1424.log"

   else
       echo "Failed group 1424; see logs/g1424.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1425"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_17-far-east-16-B-flat-g1425-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1425"

else if ( -d "$batch_dir/working/g1425" ) then
   echo "Work folder already exists; inspect logs/g1425.log"

else
   mkdir "$batch_dir/working/g1425"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1425"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "far-east-16" "19_11_17" "0011" "0018" 5.0 >&! "$batch_dir/logs/g1425.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1425.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_17-far-east-16-B-flat-g1425-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1425"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_17-far-east-16-B-flat-g1425-noastrom.fits"
       echo "Stacked but no astrometry for group 1425; see logs/g1425.log"

   else
       echo "Failed group 1425; see logs/g1425.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1426"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_17-far-east-16-V-flat-g1426-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1426"

else if ( -d "$batch_dir/working/g1426" ) then
   echo "Work folder already exists; inspect logs/g1426.log"

else
   mkdir "$batch_dir/working/g1426"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1426"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "far-east-16" "19_11_17" "0007" "0010" 5.0 >&! "$batch_dir/logs/g1426.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1426.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_17-far-east-16-V-flat-g1426-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1426"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_17-far-east-16-V-flat-g1426-noastrom.fits"
       echo "Stacked but no astrometry for group 1426; see logs/g1426.log"

   else
       echo "Failed group 1426; see logs/g1426.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1427"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_17-far-east-16-V-flat-g1427-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1427"

else if ( -d "$batch_dir/working/g1427" ) then
   echo "Work folder already exists; inspect logs/g1427.log"

else
   mkdir "$batch_dir/working/g1427"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1427"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "far-east-16" "19_11_17" "0019" "0022" 5.0 >&! "$batch_dir/logs/g1427.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1427.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_17-far-east-16-V-flat-g1427-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1427"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_17-far-east-16-V-flat-g1427-noastrom.fits"
       echo "Stacked but no astrometry for group 1427; see logs/g1427.log"

   else
       echo "Failed group 1427; see logs/g1427.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1428"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_17-pt5m-V-flat-g1428-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1428"

else if ( -d "$batch_dir/working/g1428" ) then
   echo "Work folder already exists; inspect logs/g1428.log"

else
   mkdir "$batch_dir/working/g1428"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1428"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_17" "0596258" "0596261" 5.0 >&! "$batch_dir/logs/g1428.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1428.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_17-pt5m-V-flat-g1428-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1428"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_17-pt5m-V-flat-g1428-noastrom.fits"
       echo "Stacked but no astrometry for group 1428; see logs/g1428.log"

   else
       echo "Failed group 1428; see logs/g1428.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1429"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_18-draco2-B-flat-g1429-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1429"

else if ( -d "$batch_dir/working/g1429" ) then
   echo "Work folder already exists; inspect logs/g1429.log"

else
   mkdir "$batch_dir/working/g1429"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1429"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_11_18" "0059" "0195" 5.0 >&! "$batch_dir/logs/g1429.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1429.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_18-draco2-B-flat-g1429-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1429"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_18-draco2-B-flat-g1429-noastrom.fits"
       echo "Stacked but no astrometry for group 1429; see logs/g1429.log"

   else
       echo "Failed group 1429; see logs/g1429.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1430"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_18-draco2-V-flat-g1430-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1430"

else if ( -d "$batch_dir/working/g1430" ) then
   echo "Work folder already exists; inspect logs/g1430.log"

else
   mkdir "$batch_dir/working/g1430"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1430"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_11_18" "0001" "0058" 5.0 >&! "$batch_dir/logs/g1430.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1430.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_18-draco2-V-flat-g1430-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1430"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_18-draco2-V-flat-g1430-noastrom.fits"
       echo "Stacked but no astrometry for group 1430; see logs/g1430.log"

   else
       echo "Failed group 1430; see logs/g1430.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1431"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_18-pt5m-B-flat-g1431-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1431"

else if ( -d "$batch_dir/working/g1431" ) then
   echo "Work folder already exists; inspect logs/g1431.log"

else
   mkdir "$batch_dir/working/g1431"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1431"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_18" "0596611" "0596616" 5.0 >&! "$batch_dir/logs/g1431.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1431.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_18-pt5m-B-flat-g1431-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1431"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_18-pt5m-B-flat-g1431-noastrom.fits"
       echo "Stacked but no astrometry for group 1431; see logs/g1431.log"

   else
       echo "Failed group 1431; see logs/g1431.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1432"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_18-pt5m-V-flat-g1432-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1432"

else if ( -d "$batch_dir/working/g1432" ) then
   echo "Work folder already exists; inspect logs/g1432.log"

else
   mkdir "$batch_dir/working/g1432"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1432"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_18" "0596605" "0596610" 5.0 >&! "$batch_dir/logs/g1432.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1432.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_18-pt5m-V-flat-g1432-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1432"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_18-pt5m-V-flat-g1432-noastrom.fits"
       echo "Stacked but no astrometry for group 1432; see logs/g1432.log"

   else
       echo "Failed group 1432; see logs/g1432.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1433"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_20-draco2-B-flat-g1433-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1433"

else if ( -d "$batch_dir/working/g1433" ) then
   echo "Work folder already exists; inspect logs/g1433.log"

else
   mkdir "$batch_dir/working/g1433"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1433"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_11_20" "0100" "0115" 5.0 >&! "$batch_dir/logs/g1433.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1433.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_20-draco2-B-flat-g1433-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1433"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_20-draco2-B-flat-g1433-noastrom.fits"
       echo "Stacked but no astrometry for group 1433; see logs/g1433.log"

   else
       echo "Failed group 1433; see logs/g1433.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1434"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_20-draco2-V-flat-g1434-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1434"

else if ( -d "$batch_dir/working/g1434" ) then
   echo "Work folder already exists; inspect logs/g1434.log"

else
   mkdir "$batch_dir/working/g1434"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1434"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_11_20" "0074" "0099" 5.0 >&! "$batch_dir/logs/g1434.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1434.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_20-draco2-V-flat-g1434-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1434"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_20-draco2-V-flat-g1434-noastrom.fits"
       echo "Stacked but no astrometry for group 1434; see logs/g1434.log"

   else
       echo "Failed group 1434; see logs/g1434.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1435"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_20-draco2-V-flat-g1435-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1435"

else if ( -d "$batch_dir/working/g1435" ) then
   echo "Work folder already exists; inspect logs/g1435.log"

else
   mkdir "$batch_dir/working/g1435"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1435"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "19_11_20" "0116" "0126" 5.0 >&! "$batch_dir/logs/g1435.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1435.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_20-draco2-V-flat-g1435-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1435"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_20-draco2-V-flat-g1435-noastrom.fits"
       echo "Stacked but no astrometry for group 1435; see logs/g1435.log"

   else
       echo "Failed group 1435; see logs/g1435.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1436"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_20-far-east-16-V-flat-g1436-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1436"

else if ( -d "$batch_dir/working/g1436" ) then
   echo "Work folder already exists; inspect logs/g1436.log"

else
   mkdir "$batch_dir/working/g1436"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1436"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "far-east-16" "19_11_20" "0001" "0012" 5.0 >&! "$batch_dir/logs/g1436.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1436.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_20-far-east-16-V-flat-g1436-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1436"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_20-far-east-16-V-flat-g1436-noastrom.fits"
       echo "Stacked but no astrometry for group 1436; see logs/g1436.log"

   else
       echo "Failed group 1436; see logs/g1436.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1437"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_22-pt5m-B-flat-g1437-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1437"

else if ( -d "$batch_dir/working/g1437" ) then
   echo "Work folder already exists; inspect logs/g1437.log"

else
   mkdir "$batch_dir/working/g1437"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1437"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_22" "0597645" "0597650" 5.0 >&! "$batch_dir/logs/g1437.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1437.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_22-pt5m-B-flat-g1437-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1437"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_22-pt5m-B-flat-g1437-noastrom.fits"
       echo "Stacked but no astrometry for group 1437; see logs/g1437.log"

   else
       echo "Failed group 1437; see logs/g1437.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1438"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_22-pt5m-V-flat-g1438-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1438"

else if ( -d "$batch_dir/working/g1438" ) then
   echo "Work folder already exists; inspect logs/g1438.log"

else
   mkdir "$batch_dir/working/g1438"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1438"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_22" "0597638" "0597644" 5.0 >&! "$batch_dir/logs/g1438.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1438.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_22-pt5m-V-flat-g1438-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1438"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_22-pt5m-V-flat-g1438-noastrom.fits"
       echo "Stacked but no astrometry for group 1438; see logs/g1438.log"

   else
       echo "Failed group 1438; see logs/g1438.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1439"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_24-pt5m-B-flat-g1439-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1439"

else if ( -d "$batch_dir/working/g1439" ) then
   echo "Work folder already exists; inspect logs/g1439.log"

else
   mkdir "$batch_dir/working/g1439"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1439"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_24" "0598250" "0598255" 5.0 >&! "$batch_dir/logs/g1439.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1439.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_24-pt5m-B-flat-g1439-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1439"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_24-pt5m-B-flat-g1439-noastrom.fits"
       echo "Stacked but no astrometry for group 1439; see logs/g1439.log"

   else
       echo "Failed group 1439; see logs/g1439.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1440"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_24-pt5m-V-flat-g1440-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1440"

else if ( -d "$batch_dir/working/g1440" ) then
   echo "Work folder already exists; inspect logs/g1440.log"

else
   mkdir "$batch_dir/working/g1440"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1440"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_24" "0598243" "0598249" 5.0 >&! "$batch_dir/logs/g1440.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1440.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_24-pt5m-V-flat-g1440-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1440"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_24-pt5m-V-flat-g1440-noastrom.fits"
       echo "Stacked but no astrometry for group 1440; see logs/g1440.log"

   else
       echo "Failed group 1440; see logs/g1440.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1441"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_25-pt5m-V-flat-g1441-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1441"

else if ( -d "$batch_dir/working/g1441" ) then
   echo "Work folder already exists; inspect logs/g1441.log"

else
   mkdir "$batch_dir/working/g1441"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1441"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_25" "0598683" "0598684" 5.0 >&! "$batch_dir/logs/g1441.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1441.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_25-pt5m-V-flat-g1441-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1441"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_25-pt5m-V-flat-g1441-noastrom.fits"
       echo "Stacked but no astrometry for group 1441; see logs/g1441.log"

   else
       echo "Failed group 1441; see logs/g1441.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1442"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_26-pt5m-B-flat-g1442-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1442"

else if ( -d "$batch_dir/working/g1442" ) then
   echo "Work folder already exists; inspect logs/g1442.log"

else
   mkdir "$batch_dir/working/g1442"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1442"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_26" "0599087" "0599096" 5.0 >&! "$batch_dir/logs/g1442.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1442.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_26-pt5m-B-flat-g1442-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1442"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_26-pt5m-B-flat-g1442-noastrom.fits"
       echo "Stacked but no astrometry for group 1442; see logs/g1442.log"

   else
       echo "Failed group 1442; see logs/g1442.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1443"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_26-pt5m-V-flat-g1443-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1443"

else if ( -d "$batch_dir/working/g1443" ) then
   echo "Work folder already exists; inspect logs/g1443.log"

else
   mkdir "$batch_dir/working/g1443"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1443"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_26" "0599076" "0599086" 5.0 >&! "$batch_dir/logs/g1443.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1443.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_26-pt5m-V-flat-g1443-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1443"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_26-pt5m-V-flat-g1443-noastrom.fits"
       echo "Stacked but no astrometry for group 1443; see logs/g1443.log"

   else
       echo "Failed group 1443; see logs/g1443.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1444"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_27-pt5m-B-flat-g1444-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1444"

else if ( -d "$batch_dir/working/g1444" ) then
   echo "Work folder already exists; inspect logs/g1444.log"

else
   mkdir "$batch_dir/working/g1444"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1444"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_27" "0599427" "0599436" 5.0 >&! "$batch_dir/logs/g1444.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1444.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_27-pt5m-B-flat-g1444-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1444"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_27-pt5m-B-flat-g1444-noastrom.fits"
       echo "Stacked but no astrometry for group 1444; see logs/g1444.log"

   else
       echo "Failed group 1444; see logs/g1444.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1445"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_27-pt5m-V-flat-g1445-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1445"

else if ( -d "$batch_dir/working/g1445" ) then
   echo "Work folder already exists; inspect logs/g1445.log"

else
   mkdir "$batch_dir/working/g1445"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1445"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_27" "0599416" "0599426" 5.0 >&! "$batch_dir/logs/g1445.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1445.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_27-pt5m-V-flat-g1445-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1445"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_27-pt5m-V-flat-g1445-noastrom.fits"
       echo "Stacked but no astrometry for group 1445; see logs/g1445.log"

   else
       echo "Failed group 1445; see logs/g1445.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1446"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_29-east-14-C-flat-g1446-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1446"

else if ( -d "$batch_dir/working/g1446" ) then
   echo "Work folder already exists; inspect logs/g1446.log"

else
   mkdir "$batch_dir/working/g1446"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1446"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "19_11_29" "0088" "0088" 5.0 >&! "$batch_dir/logs/g1446.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1446.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_29-east-14-C-flat-g1446-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1446"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_29-east-14-C-flat-g1446-noastrom.fits"
       echo "Stacked but no astrometry for group 1446; see logs/g1446.log"

   else
       echo "Failed group 1446; see logs/g1446.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1447"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_29-east-14-V-flat-g1447-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1447"

else if ( -d "$batch_dir/working/g1447" ) then
   echo "Work folder already exists; inspect logs/g1447.log"

else
   mkdir "$batch_dir/working/g1447"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1447"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "19_11_29" "0080" "0087" 5.0 >&! "$batch_dir/logs/g1447.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1447.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_29-east-14-V-flat-g1447-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1447"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_29-east-14-V-flat-g1447-noastrom.fits"
       echo "Stacked but no astrometry for group 1447; see logs/g1447.log"

   else
       echo "Failed group 1447; see logs/g1447.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1448"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_29-east-14-V-flat-g1448-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1448"

else if ( -d "$batch_dir/working/g1448" ) then
   echo "Work folder already exists; inspect logs/g1448.log"

else
   mkdir "$batch_dir/working/g1448"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1448"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "19_11_29" "0089" "0102" 5.0 >&! "$batch_dir/logs/g1448.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1448.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_29-east-14-V-flat-g1448-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1448"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_29-east-14-V-flat-g1448-noastrom.fits"
       echo "Stacked but no astrometry for group 1448; see logs/g1448.log"

   else
       echo "Failed group 1448; see logs/g1448.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1449"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_29-pt5m-B-flat-g1449-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1449"

else if ( -d "$batch_dir/working/g1449" ) then
   echo "Work folder already exists; inspect logs/g1449.log"

else
   mkdir "$batch_dir/working/g1449"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1449"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_29" "0599929" "0599941" 5.0 >&! "$batch_dir/logs/g1449.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1449.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_29-pt5m-B-flat-g1449-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1449"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_29-pt5m-B-flat-g1449-noastrom.fits"
       echo "Stacked but no astrometry for group 1449; see logs/g1449.log"

   else
       echo "Failed group 1449; see logs/g1449.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1450"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_29-pt5m-V-flat-g1450-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1450"

else if ( -d "$batch_dir/working/g1450" ) then
   echo "Work folder already exists; inspect logs/g1450.log"

else
   mkdir "$batch_dir/working/g1450"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1450"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_11_29" "0599915" "0599928" 5.0 >&! "$batch_dir/logs/g1450.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1450.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_29-pt5m-V-flat-g1450-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1450"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_29-pt5m-V-flat-g1450-noastrom.fits"
       echo "Stacked but no astrometry for group 1450; see logs/g1450.log"

   else
       echo "Failed group 1450; see logs/g1450.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1451"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_29-west-14-B-flat-g1451-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1451"

else if ( -d "$batch_dir/working/g1451" ) then
   echo "Work folder already exists; inspect logs/g1451.log"

else
   mkdir "$batch_dir/working/g1451"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1451"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "west-14" "19_11_29" "0009" "0040" 5.0 >&! "$batch_dir/logs/g1451.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1451.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_29-west-14-B-flat-g1451-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1451"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_29-west-14-B-flat-g1451-noastrom.fits"
       echo "Stacked but no astrometry for group 1451; see logs/g1451.log"

   else
       echo "Failed group 1451; see logs/g1451.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1452"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_30-east-14-V-flat-g1452-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1452"

else if ( -d "$batch_dir/working/g1452" ) then
   echo "Work folder already exists; inspect logs/g1452.log"

else
   mkdir "$batch_dir/working/g1452"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1452"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "19_11_30" "0035" "0035" 5.0 >&! "$batch_dir/logs/g1452.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1452.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_30-east-14-V-flat-g1452-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1452"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_30-east-14-V-flat-g1452-noastrom.fits"
       echo "Stacked but no astrometry for group 1452; see logs/g1452.log"

   else
       echo "Failed group 1452; see logs/g1452.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1453"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_30-east-14-V-flat-g1453-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1453"

else if ( -d "$batch_dir/working/g1453" ) then
   echo "Work folder already exists; inspect logs/g1453.log"

else
   mkdir "$batch_dir/working/g1453"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1453"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "19_11_30" "0029" "0034" 5.0 >&! "$batch_dir/logs/g1453.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1453.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_30-east-14-V-flat-g1453-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1453"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_30-east-14-V-flat-g1453-noastrom.fits"
       echo "Stacked but no astrometry for group 1453; see logs/g1453.log"

   else
       echo "Failed group 1453; see logs/g1453.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1454"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_11_30-east-14-V-flat-g1454-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1454"

else if ( -d "$batch_dir/working/g1454" ) then
   echo "Work folder already exists; inspect logs/g1454.log"

else
   mkdir "$batch_dir/working/g1454"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1454"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "19_11_30" "0036" "0059" 5.0 >&! "$batch_dir/logs/g1454.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1454.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_11_30-east-14-V-flat-g1454-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1454"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_11_30-east-14-V-flat-g1454-noastrom.fits"
       echo "Stacked but no astrometry for group 1454; see logs/g1454.log"

   else
       echo "Failed group 1454; see logs/g1454.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1455"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_12_01-east-14-V-flat-g1455-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1455"

else if ( -d "$batch_dir/working/g1455" ) then
   echo "Work folder already exists; inspect logs/g1455.log"

else
   mkdir "$batch_dir/working/g1455"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1455"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "19_12_01" "0016" "0035" 5.0 >&! "$batch_dir/logs/g1455.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1455.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_12_01-east-14-V-flat-g1455-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1455"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_12_01-east-14-V-flat-g1455-noastrom.fits"
       echo "Stacked but no astrometry for group 1455; see logs/g1455.log"

   else
       echo "Failed group 1455; see logs/g1455.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1456"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_12_03-far-east-16-V-flat-g1456-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1456"

else if ( -d "$batch_dir/working/g1456" ) then
   echo "Work folder already exists; inspect logs/g1456.log"

else
   mkdir "$batch_dir/working/g1456"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1456"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "far-east-16" "19_12_03" "0010" "0017" 5.0 >&! "$batch_dir/logs/g1456.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1456.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_12_03-far-east-16-V-flat-g1456-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1456"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_12_03-far-east-16-V-flat-g1456-noastrom.fits"
       echo "Stacked but no astrometry for group 1456; see logs/g1456.log"

   else
       echo "Failed group 1456; see logs/g1456.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1457"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_12_03-pt5m-V-flat-g1457-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1457"

else if ( -d "$batch_dir/working/g1457" ) then
   echo "Work folder already exists; inspect logs/g1457.log"

else
   mkdir "$batch_dir/working/g1457"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1457"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "19_12_03" "0601081" "0601085" 5.0 >&! "$batch_dir/logs/g1457.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1457.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_12_03-pt5m-V-flat-g1457-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1457"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_12_03-pt5m-V-flat-g1457-noastrom.fits"
       echo "Stacked but no astrometry for group 1457; see logs/g1457.log"

   else
       echo "Failed group 1457; see logs/g1457.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1458"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-19_12_04-west-14-V-flat-g1458-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1458"

else if ( -d "$batch_dir/working/g1458" ) then
   echo "Work folder already exists; inspect logs/g1458.log"

else
   mkdir "$batch_dir/working/g1458"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1458"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "west-14" "19_12_04" "0024" "0029" 5.0 >&! "$batch_dir/logs/g1458.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1458.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-19_12_04-west-14-V-flat-g1458-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1458"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-19_12_04-west-14-V-flat-g1458-noastrom.fits"
       echo "Stacked but no astrometry for group 1458; see logs/g1458.log"

   else
       echo "Failed group 1458; see logs/g1458.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1459"

if ( -e "$batch_dir/output_mosaics/sn2019tgm-20_01_18-west-14-C-flat-g1459-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1459"

else if ( -d "$batch_dir/working/g1459" ) then
   echo "Work folder already exists; inspect logs/g1459.log"

else
   mkdir "$batch_dir/working/g1459"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1459"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "west-14" "20_01_18" "0001" "0004" 5.0 >&! "$batch_dir/logs/g1459.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1459.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019tgm-20_01_18-west-14-C-flat-g1459-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1459"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2019tgm-20_01_18-west-14-C-flat-g1459-noastrom.fits"
       echo "Stacked but no astrometry for group 1459; see logs/g1459.log"

   else
       echo "Failed group 1459; see logs/g1459.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif

echo "Lane 2 finished"
