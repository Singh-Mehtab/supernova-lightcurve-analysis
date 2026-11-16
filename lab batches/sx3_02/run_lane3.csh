#!/bin/csh -f
set batch_dir = "$cwd"
if ( ! -f "$batch_dir/stackX3.py" ) then
   echo "Run this from inside the batch folder; stackX3.py not found"
   exit 1
endif
mkdir -p working output_mosaics logs stacked_no_astrom
if ( $status != 0 ) exit 1

echo "Processing group 2397"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_01_30-pt5m-B-flat-g2397-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2397"

else if ( -d "$batch_dir/working/g2397" ) then
   echo "Work folder already exists; inspect logs/g2397.log"

else
   mkdir "$batch_dir/working/g2397"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2397"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_01_30" "0847370" "0847374" 5.0 >&! "$batch_dir/logs/g2397.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2397.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_01_30-pt5m-B-flat-g2397-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2397"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_01_30-pt5m-B-flat-g2397-noastrom.fits"
       echo "Stacked but no astrometry for group 2397; see logs/g2397.log"

   else
       echo "Failed group 2397; see logs/g2397.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2398"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_01_30-pt5m-I-flat-g2398-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2398"

else if ( -d "$batch_dir/working/g2398" ) then
   echo "Work folder already exists; inspect logs/g2398.log"

else
   mkdir "$batch_dir/working/g2398"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2398"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_01_30" "0847380" "0847384" 5.0 >&! "$batch_dir/logs/g2398.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2398.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_01_30-pt5m-I-flat-g2398-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2398"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_01_30-pt5m-I-flat-g2398-noastrom.fits"
       echo "Stacked but no astrometry for group 2398; see logs/g2398.log"

   else
       echo "Failed group 2398; see logs/g2398.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2399"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_01_30-pt5m-R-flat-g2399-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2399"

else if ( -d "$batch_dir/working/g2399" ) then
   echo "Work folder already exists; inspect logs/g2399.log"

else
   mkdir "$batch_dir/working/g2399"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2399"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_01_30" "0847375" "0847379" 5.0 >&! "$batch_dir/logs/g2399.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2399.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_01_30-pt5m-R-flat-g2399-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2399"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_01_30-pt5m-R-flat-g2399-noastrom.fits"
       echo "Stacked but no astrometry for group 2399; see logs/g2399.log"

   else
       echo "Failed group 2399; see logs/g2399.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2400"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_01_30-pt5m-V-flat-g2400-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2400"

else if ( -d "$batch_dir/working/g2400" ) then
   echo "Work folder already exists; inspect logs/g2400.log"

else
   mkdir "$batch_dir/working/g2400"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2400"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_01_30" "0847364" "0847369" 5.0 >&! "$batch_dir/logs/g2400.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2400.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_01_30-pt5m-V-flat-g2400-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2400"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_01_30-pt5m-V-flat-g2400-noastrom.fits"
       echo "Stacked but no astrometry for group 2400; see logs/g2400.log"

   else
       echo "Failed group 2400; see logs/g2400.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2401"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_01_31-pt5m-B-flat-g2401-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2401"

else if ( -d "$batch_dir/working/g2401" ) then
   echo "Work folder already exists; inspect logs/g2401.log"

else
   mkdir "$batch_dir/working/g2401"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2401"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_01_31" "0847742" "0847746" 5.0 >&! "$batch_dir/logs/g2401.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2401.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_01_31-pt5m-B-flat-g2401-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2401"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_01_31-pt5m-B-flat-g2401-noastrom.fits"
       echo "Stacked but no astrometry for group 2401; see logs/g2401.log"

   else
       echo "Failed group 2401; see logs/g2401.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2402"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_01_31-pt5m-I-flat-g2402-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2402"

else if ( -d "$batch_dir/working/g2402" ) then
   echo "Work folder already exists; inspect logs/g2402.log"

else
   mkdir "$batch_dir/working/g2402"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2402"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_01_31" "0847752" "0847756" 5.0 >&! "$batch_dir/logs/g2402.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2402.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_01_31-pt5m-I-flat-g2402-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2402"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_01_31-pt5m-I-flat-g2402-noastrom.fits"
       echo "Stacked but no astrometry for group 2402; see logs/g2402.log"

   else
       echo "Failed group 2402; see logs/g2402.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2403"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_01_31-pt5m-R-flat-g2403-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2403"

else if ( -d "$batch_dir/working/g2403" ) then
   echo "Work folder already exists; inspect logs/g2403.log"

else
   mkdir "$batch_dir/working/g2403"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2403"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_01_31" "0847747" "0847751" 5.0 >&! "$batch_dir/logs/g2403.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2403.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_01_31-pt5m-R-flat-g2403-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2403"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_01_31-pt5m-R-flat-g2403-noastrom.fits"
       echo "Stacked but no astrometry for group 2403; see logs/g2403.log"

   else
       echo "Failed group 2403; see logs/g2403.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2404"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_01_31-pt5m-V-flat-g2404-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2404"

else if ( -d "$batch_dir/working/g2404" ) then
   echo "Work folder already exists; inspect logs/g2404.log"

else
   mkdir "$batch_dir/working/g2404"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2404"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_01_31" "0847736" "0847741" 5.0 >&! "$batch_dir/logs/g2404.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2404.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_01_31-pt5m-V-flat-g2404-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2404"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_01_31-pt5m-V-flat-g2404-noastrom.fits"
       echo "Stacked but no astrometry for group 2404; see logs/g2404.log"

   else
       echo "Failed group 2404; see logs/g2404.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2405"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_06-pt5m-B-flat-g2405-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2405"

else if ( -d "$batch_dir/working/g2405" ) then
   echo "Work folder already exists; inspect logs/g2405.log"

else
   mkdir "$batch_dir/working/g2405"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2405"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_06" "0848709" "0848713" 5.0 >&! "$batch_dir/logs/g2405.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2405.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_06-pt5m-B-flat-g2405-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2405"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_06-pt5m-B-flat-g2405-noastrom.fits"
       echo "Stacked but no astrometry for group 2405; see logs/g2405.log"

   else
       echo "Failed group 2405; see logs/g2405.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2406"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_06-pt5m-I-flat-g2406-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2406"

else if ( -d "$batch_dir/working/g2406" ) then
   echo "Work folder already exists; inspect logs/g2406.log"

else
   mkdir "$batch_dir/working/g2406"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2406"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_06" "0848719" "0848723" 5.0 >&! "$batch_dir/logs/g2406.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2406.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_06-pt5m-I-flat-g2406-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2406"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_06-pt5m-I-flat-g2406-noastrom.fits"
       echo "Stacked but no astrometry for group 2406; see logs/g2406.log"

   else
       echo "Failed group 2406; see logs/g2406.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2407"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_06-pt5m-R-flat-g2407-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2407"

else if ( -d "$batch_dir/working/g2407" ) then
   echo "Work folder already exists; inspect logs/g2407.log"

else
   mkdir "$batch_dir/working/g2407"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2407"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_06" "0848714" "0848718" 5.0 >&! "$batch_dir/logs/g2407.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2407.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_06-pt5m-R-flat-g2407-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2407"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_06-pt5m-R-flat-g2407-noastrom.fits"
       echo "Stacked but no astrometry for group 2407; see logs/g2407.log"

   else
       echo "Failed group 2407; see logs/g2407.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2408"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_06-pt5m-V-flat-g2408-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2408"

else if ( -d "$batch_dir/working/g2408" ) then
   echo "Work folder already exists; inspect logs/g2408.log"

else
   mkdir "$batch_dir/working/g2408"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2408"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_06" "0848703" "0848708" 5.0 >&! "$batch_dir/logs/g2408.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2408.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_06-pt5m-V-flat-g2408-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2408"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_06-pt5m-V-flat-g2408-noastrom.fits"
       echo "Stacked but no astrometry for group 2408; see logs/g2408.log"

   else
       echo "Failed group 2408; see logs/g2408.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2409"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_09-pt5m-B-flat-g2409-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2409"

else if ( -d "$batch_dir/working/g2409" ) then
   echo "Work folder already exists; inspect logs/g2409.log"

else
   mkdir "$batch_dir/working/g2409"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2409"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_09" "0849383" "0849387" 5.0 >&! "$batch_dir/logs/g2409.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2409.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_09-pt5m-B-flat-g2409-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2409"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_09-pt5m-B-flat-g2409-noastrom.fits"
       echo "Stacked but no astrometry for group 2409; see logs/g2409.log"

   else
       echo "Failed group 2409; see logs/g2409.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2410"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_09-pt5m-I-flat-g2410-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2410"

else if ( -d "$batch_dir/working/g2410" ) then
   echo "Work folder already exists; inspect logs/g2410.log"

else
   mkdir "$batch_dir/working/g2410"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2410"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_09" "0849393" "0849397" 5.0 >&! "$batch_dir/logs/g2410.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2410.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_09-pt5m-I-flat-g2410-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2410"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_09-pt5m-I-flat-g2410-noastrom.fits"
       echo "Stacked but no astrometry for group 2410; see logs/g2410.log"

   else
       echo "Failed group 2410; see logs/g2410.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2411"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_09-pt5m-R-flat-g2411-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2411"

else if ( -d "$batch_dir/working/g2411" ) then
   echo "Work folder already exists; inspect logs/g2411.log"

else
   mkdir "$batch_dir/working/g2411"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2411"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_09" "0849388" "0849392" 5.0 >&! "$batch_dir/logs/g2411.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2411.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_09-pt5m-R-flat-g2411-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2411"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_09-pt5m-R-flat-g2411-noastrom.fits"
       echo "Stacked but no astrometry for group 2411; see logs/g2411.log"

   else
       echo "Failed group 2411; see logs/g2411.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2412"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_09-pt5m-V-flat-g2412-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2412"

else if ( -d "$batch_dir/working/g2412" ) then
   echo "Work folder already exists; inspect logs/g2412.log"

else
   mkdir "$batch_dir/working/g2412"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2412"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_09" "0849377" "0849382" 5.0 >&! "$batch_dir/logs/g2412.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2412.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_09-pt5m-V-flat-g2412-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2412"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_09-pt5m-V-flat-g2412-noastrom.fits"
       echo "Stacked but no astrometry for group 2412; see logs/g2412.log"

   else
       echo "Failed group 2412; see logs/g2412.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2413"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_17-pt5m-B-flat-g2413-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2413"

else if ( -d "$batch_dir/working/g2413" ) then
   echo "Work folder already exists; inspect logs/g2413.log"

else
   mkdir "$batch_dir/working/g2413"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2413"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_17" "0851409" "0851413" 5.0 >&! "$batch_dir/logs/g2413.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2413.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_17-pt5m-B-flat-g2413-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2413"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_17-pt5m-B-flat-g2413-noastrom.fits"
       echo "Stacked but no astrometry for group 2413; see logs/g2413.log"

   else
       echo "Failed group 2413; see logs/g2413.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2414"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_17-pt5m-I-flat-g2414-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2414"

else if ( -d "$batch_dir/working/g2414" ) then
   echo "Work folder already exists; inspect logs/g2414.log"

else
   mkdir "$batch_dir/working/g2414"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2414"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_17" "0851419" "0851423" 5.0 >&! "$batch_dir/logs/g2414.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2414.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_17-pt5m-I-flat-g2414-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2414"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_17-pt5m-I-flat-g2414-noastrom.fits"
       echo "Stacked but no astrometry for group 2414; see logs/g2414.log"

   else
       echo "Failed group 2414; see logs/g2414.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2415"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_17-pt5m-R-flat-g2415-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2415"

else if ( -d "$batch_dir/working/g2415" ) then
   echo "Work folder already exists; inspect logs/g2415.log"

else
   mkdir "$batch_dir/working/g2415"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2415"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_17" "0851414" "0851418" 5.0 >&! "$batch_dir/logs/g2415.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2415.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_17-pt5m-R-flat-g2415-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2415"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_17-pt5m-R-flat-g2415-noastrom.fits"
       echo "Stacked but no astrometry for group 2415; see logs/g2415.log"

   else
       echo "Failed group 2415; see logs/g2415.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2416"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_17-pt5m-V-flat-g2416-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2416"

else if ( -d "$batch_dir/working/g2416" ) then
   echo "Work folder already exists; inspect logs/g2416.log"

else
   mkdir "$batch_dir/working/g2416"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2416"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_17" "0851403" "0851408" 5.0 >&! "$batch_dir/logs/g2416.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2416.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_17-pt5m-V-flat-g2416-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2416"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_17-pt5m-V-flat-g2416-noastrom.fits"
       echo "Stacked but no astrometry for group 2416; see logs/g2416.log"

   else
       echo "Failed group 2416; see logs/g2416.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2417"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_20-pt5m-B-flat-g2417-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2417"

else if ( -d "$batch_dir/working/g2417" ) then
   echo "Work folder already exists; inspect logs/g2417.log"

else
   mkdir "$batch_dir/working/g2417"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2417"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_20" "0852324" "0852328" 5.0 >&! "$batch_dir/logs/g2417.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2417.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_20-pt5m-B-flat-g2417-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2417"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_20-pt5m-B-flat-g2417-noastrom.fits"
       echo "Stacked but no astrometry for group 2417; see logs/g2417.log"

   else
       echo "Failed group 2417; see logs/g2417.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2418"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_20-pt5m-I-flat-g2418-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2418"

else if ( -d "$batch_dir/working/g2418" ) then
   echo "Work folder already exists; inspect logs/g2418.log"

else
   mkdir "$batch_dir/working/g2418"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2418"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_20" "0852334" "0852338" 5.0 >&! "$batch_dir/logs/g2418.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2418.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_20-pt5m-I-flat-g2418-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2418"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_20-pt5m-I-flat-g2418-noastrom.fits"
       echo "Stacked but no astrometry for group 2418; see logs/g2418.log"

   else
       echo "Failed group 2418; see logs/g2418.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2419"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_20-pt5m-R-flat-g2419-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2419"

else if ( -d "$batch_dir/working/g2419" ) then
   echo "Work folder already exists; inspect logs/g2419.log"

else
   mkdir "$batch_dir/working/g2419"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2419"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_20" "0852329" "0852333" 5.0 >&! "$batch_dir/logs/g2419.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2419.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_20-pt5m-R-flat-g2419-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2419"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_20-pt5m-R-flat-g2419-noastrom.fits"
       echo "Stacked but no astrometry for group 2419; see logs/g2419.log"

   else
       echo "Failed group 2419; see logs/g2419.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2420"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_20-pt5m-V-flat-g2420-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2420"

else if ( -d "$batch_dir/working/g2420" ) then
   echo "Work folder already exists; inspect logs/g2420.log"

else
   mkdir "$batch_dir/working/g2420"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2420"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_20" "0852318" "0852323" 5.0 >&! "$batch_dir/logs/g2420.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2420.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_20-pt5m-V-flat-g2420-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2420"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_20-pt5m-V-flat-g2420-noastrom.fits"
       echo "Stacked but no astrometry for group 2420; see logs/g2420.log"

   else
       echo "Failed group 2420; see logs/g2420.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2421"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_22-east-16-B-flat-g2421-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2421"

else if ( -d "$batch_dir/working/g2421" ) then
   echo "Work folder already exists; inspect logs/g2421.log"

else
   mkdir "$batch_dir/working/g2421"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2421"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_02_22" "0054" "0055" 5.0 >&! "$batch_dir/logs/g2421.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2421.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_22-east-16-B-flat-g2421-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2421"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_22-east-16-B-flat-g2421-noastrom.fits"
       echo "Stacked but no astrometry for group 2421; see logs/g2421.log"

   else
       echo "Failed group 2421; see logs/g2421.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2422"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_22-east-16-B-flat-g2422-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2422"

else if ( -d "$batch_dir/working/g2422" ) then
   echo "Work folder already exists; inspect logs/g2422.log"

else
   mkdir "$batch_dir/working/g2422"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2422"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_02_22" "0056" "0057" 5.0 >&! "$batch_dir/logs/g2422.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2422.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_22-east-16-B-flat-g2422-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2422"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_22-east-16-B-flat-g2422-noastrom.fits"
       echo "Stacked but no astrometry for group 2422; see logs/g2422.log"

   else
       echo "Failed group 2422; see logs/g2422.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2423"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_22-east-16-V-flat-g2423-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2423"

else if ( -d "$batch_dir/working/g2423" ) then
   echo "Work folder already exists; inspect logs/g2423.log"

else
   mkdir "$batch_dir/working/g2423"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2423"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_02_22" "0050" "0053" 5.0 >&! "$batch_dir/logs/g2423.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2423.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_22-east-16-V-flat-g2423-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2423"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_22-east-16-V-flat-g2423-noastrom.fits"
       echo "Stacked but no astrometry for group 2423; see logs/g2423.log"

   else
       echo "Failed group 2423; see logs/g2423.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2424"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_22-east-16-r-flat-g2424-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2424"

else if ( -d "$batch_dir/working/g2424" ) then
   echo "Work folder already exists; inspect logs/g2424.log"

else
   mkdir "$batch_dir/working/g2424"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2424"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_02_22" "0058" "0061" 5.0 >&! "$batch_dir/logs/g2424.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2424.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_22-east-16-r-flat-g2424-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2424"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_22-east-16-r-flat-g2424-noastrom.fits"
       echo "Stacked but no astrometry for group 2424; see logs/g2424.log"

   else
       echo "Failed group 2424; see logs/g2424.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2425"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_22-pt5m-B-flat-g2425-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2425"

else if ( -d "$batch_dir/working/g2425" ) then
   echo "Work folder already exists; inspect logs/g2425.log"

else
   mkdir "$batch_dir/working/g2425"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2425"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_22" "0852919" "0852923" 5.0 >&! "$batch_dir/logs/g2425.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2425.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_22-pt5m-B-flat-g2425-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2425"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_22-pt5m-B-flat-g2425-noastrom.fits"
       echo "Stacked but no astrometry for group 2425; see logs/g2425.log"

   else
       echo "Failed group 2425; see logs/g2425.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2426"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_22-pt5m-I-flat-g2426-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2426"

else if ( -d "$batch_dir/working/g2426" ) then
   echo "Work folder already exists; inspect logs/g2426.log"

else
   mkdir "$batch_dir/working/g2426"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2426"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_22" "0852929" "0852933" 5.0 >&! "$batch_dir/logs/g2426.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2426.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_22-pt5m-I-flat-g2426-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2426"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_22-pt5m-I-flat-g2426-noastrom.fits"
       echo "Stacked but no astrometry for group 2426; see logs/g2426.log"

   else
       echo "Failed group 2426; see logs/g2426.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2427"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_22-pt5m-R-flat-g2427-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2427"

else if ( -d "$batch_dir/working/g2427" ) then
   echo "Work folder already exists; inspect logs/g2427.log"

else
   mkdir "$batch_dir/working/g2427"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2427"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_22" "0852924" "0852928" 5.0 >&! "$batch_dir/logs/g2427.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2427.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_22-pt5m-R-flat-g2427-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2427"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_22-pt5m-R-flat-g2427-noastrom.fits"
       echo "Stacked but no astrometry for group 2427; see logs/g2427.log"

   else
       echo "Failed group 2427; see logs/g2427.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2428"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_22-pt5m-V-flat-g2428-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2428"

else if ( -d "$batch_dir/working/g2428" ) then
   echo "Work folder already exists; inspect logs/g2428.log"

else
   mkdir "$batch_dir/working/g2428"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2428"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_22" "0852913" "0852918" 5.0 >&! "$batch_dir/logs/g2428.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2428.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_22-pt5m-V-flat-g2428-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2428"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_22-pt5m-V-flat-g2428-noastrom.fits"
       echo "Stacked but no astrometry for group 2428; see logs/g2428.log"

   else
       echo "Failed group 2428; see logs/g2428.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2429"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_23-pt5m-B-flat-g2429-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2429"

else if ( -d "$batch_dir/working/g2429" ) then
   echo "Work folder already exists; inspect logs/g2429.log"

else
   mkdir "$batch_dir/working/g2429"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2429"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_23" "0853275" "0853279" 5.0 >&! "$batch_dir/logs/g2429.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2429.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_23-pt5m-B-flat-g2429-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2429"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_23-pt5m-B-flat-g2429-noastrom.fits"
       echo "Stacked but no astrometry for group 2429; see logs/g2429.log"

   else
       echo "Failed group 2429; see logs/g2429.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2430"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_23-pt5m-I-flat-g2430-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2430"

else if ( -d "$batch_dir/working/g2430" ) then
   echo "Work folder already exists; inspect logs/g2430.log"

else
   mkdir "$batch_dir/working/g2430"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2430"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_23" "0853285" "0853289" 5.0 >&! "$batch_dir/logs/g2430.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2430.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_23-pt5m-I-flat-g2430-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2430"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_23-pt5m-I-flat-g2430-noastrom.fits"
       echo "Stacked but no astrometry for group 2430; see logs/g2430.log"

   else
       echo "Failed group 2430; see logs/g2430.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2431"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_23-pt5m-R-flat-g2431-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2431"

else if ( -d "$batch_dir/working/g2431" ) then
   echo "Work folder already exists; inspect logs/g2431.log"

else
   mkdir "$batch_dir/working/g2431"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2431"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_23" "0853280" "0853284" 5.0 >&! "$batch_dir/logs/g2431.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2431.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_23-pt5m-R-flat-g2431-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2431"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_23-pt5m-R-flat-g2431-noastrom.fits"
       echo "Stacked but no astrometry for group 2431; see logs/g2431.log"

   else
       echo "Failed group 2431; see logs/g2431.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2432"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_02_23-pt5m-V-flat-g2432-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2432"

else if ( -d "$batch_dir/working/g2432" ) then
   echo "Work folder already exists; inspect logs/g2432.log"

else
   mkdir "$batch_dir/working/g2432"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2432"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_02_23" "0853269" "0853274" 5.0 >&! "$batch_dir/logs/g2432.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2432.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_02_23-pt5m-V-flat-g2432-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2432"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_02_23-pt5m-V-flat-g2432-noastrom.fits"
       echo "Stacked but no astrometry for group 2432; see logs/g2432.log"

   else
       echo "Failed group 2432; see logs/g2432.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2433"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_03-east-16-B-flat-g2433-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2433"

else if ( -d "$batch_dir/working/g2433" ) then
   echo "Work folder already exists; inspect logs/g2433.log"

else
   mkdir "$batch_dir/working/g2433"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2433"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_03_03" "0112" "0119" 5.0 >&! "$batch_dir/logs/g2433.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2433.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_03-east-16-B-flat-g2433-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2433"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_03-east-16-B-flat-g2433-noastrom.fits"
       echo "Stacked but no astrometry for group 2433; see logs/g2433.log"

   else
       echo "Failed group 2433; see logs/g2433.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2434"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_03-east-16-V-flat-g2434-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2434"

else if ( -d "$batch_dir/working/g2434" ) then
   echo "Work folder already exists; inspect logs/g2434.log"

else
   mkdir "$batch_dir/working/g2434"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2434"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_03_03" "0104" "0107" 5.0 >&! "$batch_dir/logs/g2434.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2434.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_03-east-16-V-flat-g2434-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2434"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_03-east-16-V-flat-g2434-noastrom.fits"
       echo "Stacked but no astrometry for group 2434; see logs/g2434.log"

   else
       echo "Failed group 2434; see logs/g2434.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2435"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_03-east-16-r-flat-g2435-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2435"

else if ( -d "$batch_dir/working/g2435" ) then
   echo "Work folder already exists; inspect logs/g2435.log"

else
   mkdir "$batch_dir/working/g2435"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2435"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_03_03" "0108" "0111" 5.0 >&! "$batch_dir/logs/g2435.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2435.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_03-east-16-r-flat-g2435-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2435"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_03-east-16-r-flat-g2435-noastrom.fits"
       echo "Stacked but no astrometry for group 2435; see logs/g2435.log"

   else
       echo "Failed group 2435; see logs/g2435.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2436"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_06-pt5m-B-flat-g2436-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2436"

else if ( -d "$batch_dir/working/g2436" ) then
   echo "Work folder already exists; inspect logs/g2436.log"

else
   mkdir "$batch_dir/working/g2436"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2436"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_06" "0854259" "0854263" 5.0 >&! "$batch_dir/logs/g2436.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2436.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_06-pt5m-B-flat-g2436-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2436"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_06-pt5m-B-flat-g2436-noastrom.fits"
       echo "Stacked but no astrometry for group 2436; see logs/g2436.log"

   else
       echo "Failed group 2436; see logs/g2436.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2437"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_06-pt5m-I-flat-g2437-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2437"

else if ( -d "$batch_dir/working/g2437" ) then
   echo "Work folder already exists; inspect logs/g2437.log"

else
   mkdir "$batch_dir/working/g2437"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2437"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_06" "0854269" "0854273" 5.0 >&! "$batch_dir/logs/g2437.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2437.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_06-pt5m-I-flat-g2437-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2437"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_06-pt5m-I-flat-g2437-noastrom.fits"
       echo "Stacked but no astrometry for group 2437; see logs/g2437.log"

   else
       echo "Failed group 2437; see logs/g2437.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2438"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_06-pt5m-R-flat-g2438-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2438"

else if ( -d "$batch_dir/working/g2438" ) then
   echo "Work folder already exists; inspect logs/g2438.log"

else
   mkdir "$batch_dir/working/g2438"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2438"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_06" "0854264" "0854268" 5.0 >&! "$batch_dir/logs/g2438.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2438.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_06-pt5m-R-flat-g2438-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2438"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_06-pt5m-R-flat-g2438-noastrom.fits"
       echo "Stacked but no astrometry for group 2438; see logs/g2438.log"

   else
       echo "Failed group 2438; see logs/g2438.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2439"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_06-pt5m-V-flat-g2439-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2439"

else if ( -d "$batch_dir/working/g2439" ) then
   echo "Work folder already exists; inspect logs/g2439.log"

else
   mkdir "$batch_dir/working/g2439"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2439"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_06" "0854253" "0854258" 5.0 >&! "$batch_dir/logs/g2439.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2439.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_06-pt5m-V-flat-g2439-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2439"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_06-pt5m-V-flat-g2439-noastrom.fits"
       echo "Stacked but no astrometry for group 2439; see logs/g2439.log"

   else
       echo "Failed group 2439; see logs/g2439.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2440"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_07-pt5m-B-flat-g2440-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2440"

else if ( -d "$batch_dir/working/g2440" ) then
   echo "Work folder already exists; inspect logs/g2440.log"

else
   mkdir "$batch_dir/working/g2440"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2440"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_07" "0854560" "0854564" 5.0 >&! "$batch_dir/logs/g2440.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2440.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_07-pt5m-B-flat-g2440-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2440"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_07-pt5m-B-flat-g2440-noastrom.fits"
       echo "Stacked but no astrometry for group 2440; see logs/g2440.log"

   else
       echo "Failed group 2440; see logs/g2440.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2441"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_07-pt5m-I-flat-g2441-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2441"

else if ( -d "$batch_dir/working/g2441" ) then
   echo "Work folder already exists; inspect logs/g2441.log"

else
   mkdir "$batch_dir/working/g2441"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2441"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_07" "0854570" "0854574" 5.0 >&! "$batch_dir/logs/g2441.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2441.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_07-pt5m-I-flat-g2441-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2441"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_07-pt5m-I-flat-g2441-noastrom.fits"
       echo "Stacked but no astrometry for group 2441; see logs/g2441.log"

   else
       echo "Failed group 2441; see logs/g2441.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2442"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_07-pt5m-R-flat-g2442-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2442"

else if ( -d "$batch_dir/working/g2442" ) then
   echo "Work folder already exists; inspect logs/g2442.log"

else
   mkdir "$batch_dir/working/g2442"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2442"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_07" "0854565" "0854569" 5.0 >&! "$batch_dir/logs/g2442.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2442.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_07-pt5m-R-flat-g2442-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2442"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_07-pt5m-R-flat-g2442-noastrom.fits"
       echo "Stacked but no astrometry for group 2442; see logs/g2442.log"

   else
       echo "Failed group 2442; see logs/g2442.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2443"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_07-pt5m-V-flat-g2443-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2443"

else if ( -d "$batch_dir/working/g2443" ) then
   echo "Work folder already exists; inspect logs/g2443.log"

else
   mkdir "$batch_dir/working/g2443"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2443"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_07" "0854554" "0854559" 5.0 >&! "$batch_dir/logs/g2443.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2443.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_07-pt5m-V-flat-g2443-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2443"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_07-pt5m-V-flat-g2443-noastrom.fits"
       echo "Stacked but no astrometry for group 2443; see logs/g2443.log"

   else
       echo "Failed group 2443; see logs/g2443.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2444"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_08-pt5m-B-flat-g2444-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2444"

else if ( -d "$batch_dir/working/g2444" ) then
   echo "Work folder already exists; inspect logs/g2444.log"

else
   mkdir "$batch_dir/working/g2444"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2444"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_08" "0854801" "0854805" 5.0 >&! "$batch_dir/logs/g2444.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2444.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_08-pt5m-B-flat-g2444-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2444"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_08-pt5m-B-flat-g2444-noastrom.fits"
       echo "Stacked but no astrometry for group 2444; see logs/g2444.log"

   else
       echo "Failed group 2444; see logs/g2444.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2445"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_08-pt5m-I-flat-g2445-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2445"

else if ( -d "$batch_dir/working/g2445" ) then
   echo "Work folder already exists; inspect logs/g2445.log"

else
   mkdir "$batch_dir/working/g2445"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2445"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_08" "0854811" "0854815" 5.0 >&! "$batch_dir/logs/g2445.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2445.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_08-pt5m-I-flat-g2445-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2445"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_08-pt5m-I-flat-g2445-noastrom.fits"
       echo "Stacked but no astrometry for group 2445; see logs/g2445.log"

   else
       echo "Failed group 2445; see logs/g2445.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2446"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_08-pt5m-R-flat-g2446-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2446"

else if ( -d "$batch_dir/working/g2446" ) then
   echo "Work folder already exists; inspect logs/g2446.log"

else
   mkdir "$batch_dir/working/g2446"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2446"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_08" "0854806" "0854810" 5.0 >&! "$batch_dir/logs/g2446.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2446.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_08-pt5m-R-flat-g2446-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2446"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_08-pt5m-R-flat-g2446-noastrom.fits"
       echo "Stacked but no astrometry for group 2446; see logs/g2446.log"

   else
       echo "Failed group 2446; see logs/g2446.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2447"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_08-pt5m-V-flat-g2447-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2447"

else if ( -d "$batch_dir/working/g2447" ) then
   echo "Work folder already exists; inspect logs/g2447.log"

else
   mkdir "$batch_dir/working/g2447"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2447"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_08" "0854795" "0854800" 5.0 >&! "$batch_dir/logs/g2447.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2447.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_08-pt5m-V-flat-g2447-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2447"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_08-pt5m-V-flat-g2447-noastrom.fits"
       echo "Stacked but no astrometry for group 2447; see logs/g2447.log"

   else
       echo "Failed group 2447; see logs/g2447.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2448"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_10-pt5m-B-flat-g2448-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2448"

else if ( -d "$batch_dir/working/g2448" ) then
   echo "Work folder already exists; inspect logs/g2448.log"

else
   mkdir "$batch_dir/working/g2448"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2448"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_10" "0855271" "0855275" 5.0 >&! "$batch_dir/logs/g2448.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2448.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_10-pt5m-B-flat-g2448-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2448"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_10-pt5m-B-flat-g2448-noastrom.fits"
       echo "Stacked but no astrometry for group 2448; see logs/g2448.log"

   else
       echo "Failed group 2448; see logs/g2448.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2449"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_10-pt5m-I-flat-g2449-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2449"

else if ( -d "$batch_dir/working/g2449" ) then
   echo "Work folder already exists; inspect logs/g2449.log"

else
   mkdir "$batch_dir/working/g2449"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2449"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_10" "0855281" "0855285" 5.0 >&! "$batch_dir/logs/g2449.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2449.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_10-pt5m-I-flat-g2449-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2449"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_10-pt5m-I-flat-g2449-noastrom.fits"
       echo "Stacked but no astrometry for group 2449; see logs/g2449.log"

   else
       echo "Failed group 2449; see logs/g2449.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2450"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_10-pt5m-R-flat-g2450-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2450"

else if ( -d "$batch_dir/working/g2450" ) then
   echo "Work folder already exists; inspect logs/g2450.log"

else
   mkdir "$batch_dir/working/g2450"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2450"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_10" "0855276" "0855280" 5.0 >&! "$batch_dir/logs/g2450.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2450.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_10-pt5m-R-flat-g2450-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2450"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_10-pt5m-R-flat-g2450-noastrom.fits"
       echo "Stacked but no astrometry for group 2450; see logs/g2450.log"

   else
       echo "Failed group 2450; see logs/g2450.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2451"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_10-pt5m-V-flat-g2451-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2451"

else if ( -d "$batch_dir/working/g2451" ) then
   echo "Work folder already exists; inspect logs/g2451.log"

else
   mkdir "$batch_dir/working/g2451"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2451"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_10" "0855265" "0855270" 5.0 >&! "$batch_dir/logs/g2451.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2451.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_10-pt5m-V-flat-g2451-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2451"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_10-pt5m-V-flat-g2451-noastrom.fits"
       echo "Stacked but no astrometry for group 2451; see logs/g2451.log"

   else
       echo "Failed group 2451; see logs/g2451.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2452"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_12-pt5m-B-flat-g2452-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2452"

else if ( -d "$batch_dir/working/g2452" ) then
   echo "Work folder already exists; inspect logs/g2452.log"

else
   mkdir "$batch_dir/working/g2452"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2452"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_12" "0855663" "0855667" 5.0 >&! "$batch_dir/logs/g2452.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2452.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_12-pt5m-B-flat-g2452-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2452"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_12-pt5m-B-flat-g2452-noastrom.fits"
       echo "Stacked but no astrometry for group 2452; see logs/g2452.log"

   else
       echo "Failed group 2452; see logs/g2452.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2453"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_12-pt5m-I-flat-g2453-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2453"

else if ( -d "$batch_dir/working/g2453" ) then
   echo "Work folder already exists; inspect logs/g2453.log"

else
   mkdir "$batch_dir/working/g2453"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2453"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_12" "0855673" "0855673" 5.0 >&! "$batch_dir/logs/g2453.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2453.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_12-pt5m-I-flat-g2453-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2453"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_12-pt5m-I-flat-g2453-noastrom.fits"
       echo "Stacked but no astrometry for group 2453; see logs/g2453.log"

   else
       echo "Failed group 2453; see logs/g2453.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2454"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_12-pt5m-R-flat-g2454-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2454"

else if ( -d "$batch_dir/working/g2454" ) then
   echo "Work folder already exists; inspect logs/g2454.log"

else
   mkdir "$batch_dir/working/g2454"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2454"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_12" "0855668" "0855672" 5.0 >&! "$batch_dir/logs/g2454.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2454.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_12-pt5m-R-flat-g2454-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2454"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_12-pt5m-R-flat-g2454-noastrom.fits"
       echo "Stacked but no astrometry for group 2454; see logs/g2454.log"

   else
       echo "Failed group 2454; see logs/g2454.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2455"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_12-pt5m-V-flat-g2455-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2455"

else if ( -d "$batch_dir/working/g2455" ) then
   echo "Work folder already exists; inspect logs/g2455.log"

else
   mkdir "$batch_dir/working/g2455"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2455"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_12" "0855657" "0855662" 5.0 >&! "$batch_dir/logs/g2455.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2455.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_12-pt5m-V-flat-g2455-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2455"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_12-pt5m-V-flat-g2455-noastrom.fits"
       echo "Stacked but no astrometry for group 2455; see logs/g2455.log"

   else
       echo "Failed group 2455; see logs/g2455.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2456"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_15-pt5m-B-flat-g2456-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2456"

else if ( -d "$batch_dir/working/g2456" ) then
   echo "Work folder already exists; inspect logs/g2456.log"

else
   mkdir "$batch_dir/working/g2456"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2456"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_15" "0856251" "0856255" 5.0 >&! "$batch_dir/logs/g2456.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2456.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_15-pt5m-B-flat-g2456-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2456"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_15-pt5m-B-flat-g2456-noastrom.fits"
       echo "Stacked but no astrometry for group 2456; see logs/g2456.log"

   else
       echo "Failed group 2456; see logs/g2456.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2457"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_15-pt5m-I-flat-g2457-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2457"

else if ( -d "$batch_dir/working/g2457" ) then
   echo "Work folder already exists; inspect logs/g2457.log"

else
   mkdir "$batch_dir/working/g2457"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2457"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_15" "0856261" "0856265" 5.0 >&! "$batch_dir/logs/g2457.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2457.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_15-pt5m-I-flat-g2457-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2457"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_15-pt5m-I-flat-g2457-noastrom.fits"
       echo "Stacked but no astrometry for group 2457; see logs/g2457.log"

   else
       echo "Failed group 2457; see logs/g2457.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2458"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_15-pt5m-R-flat-g2458-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2458"

else if ( -d "$batch_dir/working/g2458" ) then
   echo "Work folder already exists; inspect logs/g2458.log"

else
   mkdir "$batch_dir/working/g2458"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2458"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_15" "0856256" "0856260" 5.0 >&! "$batch_dir/logs/g2458.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2458.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_15-pt5m-R-flat-g2458-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2458"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_15-pt5m-R-flat-g2458-noastrom.fits"
       echo "Stacked but no astrometry for group 2458; see logs/g2458.log"

   else
       echo "Failed group 2458; see logs/g2458.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2459"

if ( -e "$batch_dir/output_mosaics/sn2026atb-26_03_15-pt5m-V-flat-g2459-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2459"

else if ( -d "$batch_dir/working/g2459" ) then
   echo "Work folder already exists; inspect logs/g2459.log"

else
   mkdir "$batch_dir/working/g2459"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2459"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "26_03_15" "0856245" "0856250" 5.0 >&! "$batch_dir/logs/g2459.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2459.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026atb-26_03_15-pt5m-V-flat-g2459-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2459"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026atb-26_03_15-pt5m-V-flat-g2459-noastrom.fits"
       echo "Stacked but no astrometry for group 2459; see logs/g2459.log"

   else
       echo "Failed group 2459; see logs/g2459.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif

echo "Lane 3 finished"
