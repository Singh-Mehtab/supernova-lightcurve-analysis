#!/bin/csh -f
set batch_dir = "$cwd"
if ( ! -f "$batch_dir/stackX3.py" ) then
   echo "Run this from inside the batch folder; stackX3.py not found"
   exit 1
endif
mkdir -p working output_mosaics logs stacked_no_astrom
if ( $status != 0 ) exit 1

echo "Processing group 8"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_10_22-draco2-B-flat-g8-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 8"

else if ( -d "$batch_dir/working/g8" ) then
   echo "Work folder already exists; inspect logs/g8.log"

else
   mkdir "$batch_dir/working/g8"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g8"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "26_10_22" "0259" "0266" 5.0 >&! "$batch_dir/logs/g8.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g8.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_10_22-draco2-B-flat-g8-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 8"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_10_22-draco2-B-flat-g8-noastrom.fits"
       echo "Stacked but no astrometry for group 8; see logs/g8.log"

   else
       echo "Failed group 8; see logs/g8.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 9"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_10_22-draco2-r-flat-g9-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 9"

else if ( -d "$batch_dir/working/g9" ) then
   echo "Work folder already exists; inspect logs/g9.log"

else
   mkdir "$batch_dir/working/g9"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g9"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "26_10_22" "0267" "0274" 5.0 >&! "$batch_dir/logs/g9.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g9.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_10_22-draco2-r-flat-g9-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 9"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_10_22-draco2-r-flat-g9-noastrom.fits"
       echo "Stacked but no astrometry for group 9; see logs/g9.log"

   else
       echo "Failed group 9; see logs/g9.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 34"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_10_10-draco2-B-flat-g34-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 34"

else if ( -d "$batch_dir/working/g34" ) then
   echo "Work folder already exists; inspect logs/g34.log"

else
   mkdir "$batch_dir/working/g34"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g34"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "26_10_10" "0029" "0036" 5.0 >&! "$batch_dir/logs/g34.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g34.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_10_10-draco2-B-flat-g34-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 34"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_10_10-draco2-B-flat-g34-noastrom.fits"
       echo "Stacked but no astrometry for group 34; see logs/g34.log"

   else
       echo "Failed group 34; see logs/g34.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 35"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_10_10-draco2-r-flat-g35-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 35"

else if ( -d "$batch_dir/working/g35" ) then
   echo "Work folder already exists; inspect logs/g35.log"

else
   mkdir "$batch_dir/working/g35"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g35"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "26_10_10" "0037" "0044" 5.0 >&! "$batch_dir/logs/g35.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g35.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_10_10-draco2-r-flat-g35-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 35"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_10_10-draco2-r-flat-g35-noastrom.fits"
       echo "Stacked but no astrometry for group 35; see logs/g35.log"

   else
       echo "Failed group 35; see logs/g35.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 52"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_10_07-west-14-B-flat-g52-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 52"

else if ( -d "$batch_dir/working/g52" ) then
   echo "Work folder already exists; inspect logs/g52.log"

else
   mkdir "$batch_dir/working/g52"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g52"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "west-14" "26_10_07" "0057" "0064" 5.0 >&! "$batch_dir/logs/g52.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g52.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_10_07-west-14-B-flat-g52-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 52"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_10_07-west-14-B-flat-g52-noastrom.fits"
       echo "Stacked but no astrometry for group 52; see logs/g52.log"

   else
       echo "Failed group 52; see logs/g52.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 603"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_11_03-east-16-V-flat-g603-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 603"

else if ( -d "$batch_dir/working/g603" ) then
   echo "Work folder already exists; inspect logs/g603.log"

else
   mkdir "$batch_dir/working/g603"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g603"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_11_03" "0063" "0070" 5.0 >&! "$batch_dir/logs/g603.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g603.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_11_03-east-16-V-flat-g603-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 603"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_11_03-east-16-V-flat-g603-noastrom.fits"
       echo "Stacked but no astrometry for group 603; see logs/g603.log"

   else
       echo "Failed group 603; see logs/g603.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 604"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_11_03-east-16-B-flat-g604-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 604"

else if ( -d "$batch_dir/working/g604" ) then
   echo "Work folder already exists; inspect logs/g604.log"

else
   mkdir "$batch_dir/working/g604"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g604"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_11_03" "0071" "0078" 5.0 >&! "$batch_dir/logs/g604.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g604.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_11_03-east-16-B-flat-g604-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 604"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_11_03-east-16-B-flat-g604-noastrom.fits"
       echo "Stacked but no astrometry for group 604; see logs/g604.log"

   else
       echo "Failed group 604; see logs/g604.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 605"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_11_03-east-16-r-flat-g605-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 605"

else if ( -d "$batch_dir/working/g605" ) then
   echo "Work folder already exists; inspect logs/g605.log"

else
   mkdir "$batch_dir/working/g605"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g605"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_11_03" "0079" "0090" 5.0 >&! "$batch_dir/logs/g605.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g605.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_11_03-east-16-r-flat-g605-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 605"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_11_03-east-16-r-flat-g605-noastrom.fits"
       echo "Stacked but no astrometry for group 605; see logs/g605.log"

   else
       echo "Failed group 605; see logs/g605.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 606"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_10_31-east-16-V-flat-g606-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 606"

else if ( -d "$batch_dir/working/g606" ) then
   echo "Work folder already exists; inspect logs/g606.log"

else
   mkdir "$batch_dir/working/g606"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g606"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_10_31" "0001" "0008" 5.0 >&! "$batch_dir/logs/g606.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g606.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_10_31-east-16-V-flat-g606-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 606"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_10_31-east-16-V-flat-g606-noastrom.fits"
       echo "Stacked but no astrometry for group 606; see logs/g606.log"

   else
       echo "Failed group 606; see logs/g606.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 607"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_10_31-east-16-B-flat-g607-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 607"

else if ( -d "$batch_dir/working/g607" ) then
   echo "Work folder already exists; inspect logs/g607.log"

else
   mkdir "$batch_dir/working/g607"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g607"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_10_31" "0009" "0016" 5.0 >&! "$batch_dir/logs/g607.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g607.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_10_31-east-16-B-flat-g607-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 607"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_10_31-east-16-B-flat-g607-noastrom.fits"
       echo "Stacked but no astrometry for group 607; see logs/g607.log"

   else
       echo "Failed group 607; see logs/g607.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2388"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_10_01-east-16-B-flat-g2388-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2388"

else if ( -d "$batch_dir/working/g2388" ) then
   echo "Work folder already exists; inspect logs/g2388.log"

else
   mkdir "$batch_dir/working/g2388"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2388"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_10_01" "0028" "0037" 5.0 >&! "$batch_dir/logs/g2388.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2388.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_10_01-east-16-B-flat-g2388-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2388"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_10_01-east-16-B-flat-g2388-noastrom.fits"
       echo "Stacked but no astrometry for group 2388; see logs/g2388.log"

   else
       echo "Failed group 2388; see logs/g2388.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2389"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_10_01-east-16-V-flat-g2389-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2389"

else if ( -d "$batch_dir/working/g2389" ) then
   echo "Work folder already exists; inspect logs/g2389.log"

else
   mkdir "$batch_dir/working/g2389"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2389"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_10_01" "0017" "0027" 5.0 >&! "$batch_dir/logs/g2389.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2389.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_10_01-east-16-V-flat-g2389-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2389"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_10_01-east-16-V-flat-g2389-noastrom.fits"
       echo "Stacked but no astrometry for group 2389; see logs/g2389.log"

   else
       echo "Failed group 2389; see logs/g2389.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2390"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_10_01-east-16-r-flat-g2390-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2390"

else if ( -d "$batch_dir/working/g2390" ) then
   echo "Work folder already exists; inspect logs/g2390.log"

else
   mkdir "$batch_dir/working/g2390"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2390"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_10_01" "0038" "0045" 5.0 >&! "$batch_dir/logs/g2390.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2390.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_10_01-east-16-r-flat-g2390-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2390"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_10_01-east-16-r-flat-g2390-noastrom.fits"
       echo "Stacked but no astrometry for group 2390; see logs/g2390.log"

   else
       echo "Failed group 2390; see logs/g2390.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2644"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_11_14-east-16-V-flat-g2644-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2644"

else if ( -d "$batch_dir/working/g2644" ) then
   echo "Work folder already exists; inspect logs/g2644.log"

else
   mkdir "$batch_dir/working/g2644"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2644"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_11_14" "0001" "0001" 5.0 >&! "$batch_dir/logs/g2644.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2644.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_11_14-east-16-V-flat-g2644-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2644"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_11_14-east-16-V-flat-g2644-noastrom.fits"
       echo "Stacked but no astrometry for group 2644; see logs/g2644.log"

   else
       echo "Failed group 2644; see logs/g2644.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2645"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_11_14-east-16-V-flat-g2645-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2645"

else if ( -d "$batch_dir/working/g2645" ) then
   echo "Work folder already exists; inspect logs/g2645.log"

else
   mkdir "$batch_dir/working/g2645"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2645"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_11_14" "0002" "0013" 5.0 >&! "$batch_dir/logs/g2645.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2645.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_11_14-east-16-V-flat-g2645-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2645"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_11_14-east-16-V-flat-g2645-noastrom.fits"
       echo "Stacked but no astrometry for group 2645; see logs/g2645.log"

   else
       echo "Failed group 2645; see logs/g2645.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2646"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_11_14-east-16-B-flat-g2646-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2646"

else if ( -d "$batch_dir/working/g2646" ) then
   echo "Work folder already exists; inspect logs/g2646.log"

else
   mkdir "$batch_dir/working/g2646"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2646"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_11_14" "0014" "0017" 5.0 >&! "$batch_dir/logs/g2646.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2646.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_11_14-east-16-B-flat-g2646-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2646"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_11_14-east-16-B-flat-g2646-noastrom.fits"
       echo "Stacked but no astrometry for group 2646; see logs/g2646.log"

   else
       echo "Failed group 2646; see logs/g2646.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2647"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_11_14-east-16-r-flat-g2647-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2647"

else if ( -d "$batch_dir/working/g2647" ) then
   echo "Work folder already exists; inspect logs/g2647.log"

else
   mkdir "$batch_dir/working/g2647"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2647"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_11_14" "0018" "0021" 5.0 >&! "$batch_dir/logs/g2647.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2647.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_11_14-east-16-r-flat-g2647-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2647"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_11_14-east-16-r-flat-g2647-noastrom.fits"
       echo "Stacked but no astrometry for group 2647; see logs/g2647.log"

   else
       echo "Failed group 2647; see logs/g2647.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2648"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_11_13-east-16-V-flat-g2648-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2648"

else if ( -d "$batch_dir/working/g2648" ) then
   echo "Work folder already exists; inspect logs/g2648.log"

else
   mkdir "$batch_dir/working/g2648"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2648"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_11_13" "0119" "0126" 5.0 >&! "$batch_dir/logs/g2648.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2648.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_11_13-east-16-V-flat-g2648-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2648"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_11_13-east-16-V-flat-g2648-noastrom.fits"
       echo "Stacked but no astrometry for group 2648; see logs/g2648.log"

   else
       echo "Failed group 2648; see logs/g2648.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2649"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_11_13-east-16-B-flat-g2649-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2649"

else if ( -d "$batch_dir/working/g2649" ) then
   echo "Work folder already exists; inspect logs/g2649.log"

else
   mkdir "$batch_dir/working/g2649"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2649"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_11_13" "0127" "0130" 5.0 >&! "$batch_dir/logs/g2649.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2649.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_11_13-east-16-B-flat-g2649-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2649"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_11_13-east-16-B-flat-g2649-noastrom.fits"
       echo "Stacked but no astrometry for group 2649; see logs/g2649.log"

   else
       echo "Failed group 2649; see logs/g2649.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2650"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_11_13-east-16-r-flat-g2650-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2650"

else if ( -d "$batch_dir/working/g2650" ) then
   echo "Work folder already exists; inspect logs/g2650.log"

else
   mkdir "$batch_dir/working/g2650"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2650"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-16" "26_11_13" "0131" "0134" 5.0 >&! "$batch_dir/logs/g2650.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2650.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_11_13-east-16-r-flat-g2650-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2650"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_11_13-east-16-r-flat-g2650-noastrom.fits"
       echo "Stacked but no astrometry for group 2650; see logs/g2650.log"

   else
       echo "Failed group 2650; see logs/g2650.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2651"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_11_09-draco2-B-flat-g2651-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2651"

else if ( -d "$batch_dir/working/g2651" ) then
   echo "Work folder already exists; inspect logs/g2651.log"

else
   mkdir "$batch_dir/working/g2651"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2651"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "26_11_09" "0132" "0139" 5.0 >&! "$batch_dir/logs/g2651.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2651.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_11_09-draco2-B-flat-g2651-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2651"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_11_09-draco2-B-flat-g2651-noastrom.fits"
       echo "Stacked but no astrometry for group 2651; see logs/g2651.log"

   else
       echo "Failed group 2651; see logs/g2651.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2652"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_11_09-draco2-V-flat-g2652-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2652"

else if ( -d "$batch_dir/working/g2652" ) then
   echo "Work folder already exists; inspect logs/g2652.log"

else
   mkdir "$batch_dir/working/g2652"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2652"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "26_11_09" "0140" "0147" 5.0 >&! "$batch_dir/logs/g2652.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2652.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_11_09-draco2-V-flat-g2652-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2652"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_11_09-draco2-V-flat-g2652-noastrom.fits"
       echo "Stacked but no astrometry for group 2652; see logs/g2652.log"

   else
       echo "Failed group 2652; see logs/g2652.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 2653"

if ( -e "$batch_dir/output_mosaics/sn2026aaiv-26_11_09-draco2-r-flat-g2653-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 2653"

else if ( -d "$batch_dir/working/g2653" ) then
   echo "Work folder already exists; inspect logs/g2653.log"

else
   mkdir "$batch_dir/working/g2653"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g2653"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "26_11_09" "0148" "0158" 5.0 >&! "$batch_dir/logs/g2653.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g2653.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2026aaiv-26_11_09-draco2-r-flat-g2653-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 2653"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2026aaiv-26_11_09-draco2-r-flat-g2653-noastrom.fits"
       echo "Stacked but no astrometry for group 2653; see logs/g2653.log"

   else
       echo "Failed group 2653; see logs/g2653.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif

echo "Lane 1 finished"
