#!/bin/csh -f
set batch_dir = "$cwd"
if ( ! -f "$batch_dir/stackX3.py" ) then
   echo "Run this from inside the batch folder; stackX3.py not found"
   exit 1
endif
mkdir -p working output_mosaics logs stacked_no_astrom
if ( $status != 0 ) exit 1

echo "Processing group 1460"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_20-east-14-B-flat-g1460-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1460"

else if ( -d "$batch_dir/working/g1460" ) then
   echo "Work folder already exists; inspect logs/g1460.log"

else
   mkdir "$batch_dir/working/g1460"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1460"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "20_01_20" "0038" "0069" 5.0 >&! "$batch_dir/logs/g1460.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1460.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_20-east-14-B-flat-g1460-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1460"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_20-east-14-B-flat-g1460-noastrom.fits"
       echo "Stacked but no astrometry for group 1460; see logs/g1460.log"

   else
       echo "Failed group 1460; see logs/g1460.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1461"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_20-east-14-C-flat-g1461-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1461"

else if ( -d "$batch_dir/working/g1461" ) then
   echo "Work folder already exists; inspect logs/g1461.log"

else
   mkdir "$batch_dir/working/g1461"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1461"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "20_01_20" "0001" "0001" 5.0 >&! "$batch_dir/logs/g1461.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1461.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_20-east-14-C-flat-g1461-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1461"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_20-east-14-C-flat-g1461-noastrom.fits"
       echo "Stacked but no astrometry for group 1461; see logs/g1461.log"

   else
       echo "Failed group 1461; see logs/g1461.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1462"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_20-east-14-V-flat-g1462-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1462"

else if ( -d "$batch_dir/working/g1462" ) then
   echo "Work folder already exists; inspect logs/g1462.log"

else
   mkdir "$batch_dir/working/g1462"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1462"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "20_01_20" "0002" "0037" 5.0 >&! "$batch_dir/logs/g1462.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1462.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_20-east-14-V-flat-g1462-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1462"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_20-east-14-V-flat-g1462-noastrom.fits"
       echo "Stacked but no astrometry for group 1462; see logs/g1462.log"

   else
       echo "Failed group 1462; see logs/g1462.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1463"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_20-east-14-r-flat-g1463-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1463"

else if ( -d "$batch_dir/working/g1463" ) then
   echo "Work folder already exists; inspect logs/g1463.log"

else
   mkdir "$batch_dir/working/g1463"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1463"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "20_01_20" "0070" "0101" 5.0 >&! "$batch_dir/logs/g1463.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1463.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_20-east-14-r-flat-g1463-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1463"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_20-east-14-r-flat-g1463-noastrom.fits"
       echo "Stacked but no astrometry for group 1463; see logs/g1463.log"

   else
       echo "Failed group 1463; see logs/g1463.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1464"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_20-pt5m-B-flat-g1464-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1464"

else if ( -d "$batch_dir/working/g1464" ) then
   echo "Work folder already exists; inspect logs/g1464.log"

else
   mkdir "$batch_dir/working/g1464"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1464"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_20" "0604323" "0604329" 5.0 >&! "$batch_dir/logs/g1464.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1464.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_20-pt5m-B-flat-g1464-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1464"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_20-pt5m-B-flat-g1464-noastrom.fits"
       echo "Stacked but no astrometry for group 1464; see logs/g1464.log"

   else
       echo "Failed group 1464; see logs/g1464.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1465"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_20-pt5m-I-flat-g1465-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1465"

else if ( -d "$batch_dir/working/g1465" ) then
   echo "Work folder already exists; inspect logs/g1465.log"

else
   mkdir "$batch_dir/working/g1465"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1465"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_20" "0604306" "0604312" 5.0 >&! "$batch_dir/logs/g1465.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1465.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_20-pt5m-I-flat-g1465-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1465"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_20-pt5m-I-flat-g1465-noastrom.fits"
       echo "Stacked but no astrometry for group 1465; see logs/g1465.log"

   else
       echo "Failed group 1465; see logs/g1465.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1466"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_20-pt5m-R-flat-g1466-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1466"

else if ( -d "$batch_dir/working/g1466" ) then
   echo "Work folder already exists; inspect logs/g1466.log"

else
   mkdir "$batch_dir/working/g1466"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1466"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_20" "0604313" "0604315" 5.0 >&! "$batch_dir/logs/g1466.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1466.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_20-pt5m-R-flat-g1466-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1466"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_20-pt5m-R-flat-g1466-noastrom.fits"
       echo "Stacked but no astrometry for group 1466; see logs/g1466.log"

   else
       echo "Failed group 1466; see logs/g1466.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1467"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_20-pt5m-V-flat-g1467-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1467"

else if ( -d "$batch_dir/working/g1467" ) then
   echo "Work folder already exists; inspect logs/g1467.log"

else
   mkdir "$batch_dir/working/g1467"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1467"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_20" "0604320" "0604322" 5.0 >&! "$batch_dir/logs/g1467.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1467.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_20-pt5m-V-flat-g1467-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1467"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_20-pt5m-V-flat-g1467-noastrom.fits"
       echo "Stacked but no astrometry for group 1467; see logs/g1467.log"

   else
       echo "Failed group 1467; see logs/g1467.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1468"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_22-west-14-B-flat-g1468-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1468"

else if ( -d "$batch_dir/working/g1468" ) then
   echo "Work folder already exists; inspect logs/g1468.log"

else
   mkdir "$batch_dir/working/g1468"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1468"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "west-14" "20_01_22" "0081" "0112" 5.0 >&! "$batch_dir/logs/g1468.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1468.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_22-west-14-B-flat-g1468-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1468"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_22-west-14-B-flat-g1468-noastrom.fits"
       echo "Stacked but no astrometry for group 1468; see logs/g1468.log"

   else
       echo "Failed group 1468; see logs/g1468.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1469"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_22-west-14-R-flat-g1469-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1469"

else if ( -d "$batch_dir/working/g1469" ) then
   echo "Work folder already exists; inspect logs/g1469.log"

else
   mkdir "$batch_dir/working/g1469"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1469"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "west-14" "20_01_22" "0113" "0144" 5.0 >&! "$batch_dir/logs/g1469.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1469.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_22-west-14-R-flat-g1469-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1469"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_22-west-14-R-flat-g1469-noastrom.fits"
       echo "Stacked but no astrometry for group 1469; see logs/g1469.log"

   else
       echo "Failed group 1469; see logs/g1469.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1470"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_22-west-14-V-flat-g1470-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1470"

else if ( -d "$batch_dir/working/g1470" ) then
   echo "Work folder already exists; inspect logs/g1470.log"

else
   mkdir "$batch_dir/working/g1470"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1470"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "west-14" "20_01_22" "0001" "0004" 5.0 >&! "$batch_dir/logs/g1470.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1470.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_22-west-14-V-flat-g1470-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1470"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_22-west-14-V-flat-g1470-noastrom.fits"
       echo "Stacked but no astrometry for group 1470; see logs/g1470.log"

   else
       echo "Failed group 1470; see logs/g1470.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1471"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_22-west-14-V-flat-g1471-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1471"

else if ( -d "$batch_dir/working/g1471" ) then
   echo "Work folder already exists; inspect logs/g1471.log"

else
   mkdir "$batch_dir/working/g1471"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1471"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "west-14" "20_01_22" "0065" "0080" 5.0 >&! "$batch_dir/logs/g1471.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1471.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_22-west-14-V-flat-g1471-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1471"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_22-west-14-V-flat-g1471-noastrom.fits"
       echo "Stacked but no astrometry for group 1471; see logs/g1471.log"

   else
       echo "Failed group 1471; see logs/g1471.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1472"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_23-draco2-V-flat-g1472-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1472"

else if ( -d "$batch_dir/working/g1472" ) then
   echo "Work folder already exists; inspect logs/g1472.log"

else
   mkdir "$batch_dir/working/g1472"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1472"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "20_01_23" "0001" "0033" 5.0 >&! "$batch_dir/logs/g1472.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1472.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_23-draco2-V-flat-g1472-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1472"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_23-draco2-V-flat-g1472-noastrom.fits"
       echo "Stacked but no astrometry for group 1472; see logs/g1472.log"

   else
       echo "Failed group 1472; see logs/g1472.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1473"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_23-draco2-r-flat-g1473-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1473"

else if ( -d "$batch_dir/working/g1473" ) then
   echo "Work folder already exists; inspect logs/g1473.log"

else
   mkdir "$batch_dir/working/g1473"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1473"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "20_01_23" "0034" "0065" 5.0 >&! "$batch_dir/logs/g1473.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1473.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_23-draco2-r-flat-g1473-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1473"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_23-draco2-r-flat-g1473-noastrom.fits"
       echo "Stacked but no astrometry for group 1473; see logs/g1473.log"

   else
       echo "Failed group 1473; see logs/g1473.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1474"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_23-east-14-B-flat-g1474-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1474"

else if ( -d "$batch_dir/working/g1474" ) then
   echo "Work folder already exists; inspect logs/g1474.log"

else
   mkdir "$batch_dir/working/g1474"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1474"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "20_01_23" "0001" "0032" 5.0 >&! "$batch_dir/logs/g1474.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1474.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_23-east-14-B-flat-g1474-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1474"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_23-east-14-B-flat-g1474-noastrom.fits"
       echo "Stacked but no astrometry for group 1474; see logs/g1474.log"

   else
       echo "Failed group 1474; see logs/g1474.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1475"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_25-pt5m-B-flat-g1475-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1475"

else if ( -d "$batch_dir/working/g1475" ) then
   echo "Work folder already exists; inspect logs/g1475.log"

else
   mkdir "$batch_dir/working/g1475"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1475"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_25" "0605083" "0605089" 5.0 >&! "$batch_dir/logs/g1475.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1475.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_25-pt5m-B-flat-g1475-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1475"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_25-pt5m-B-flat-g1475-noastrom.fits"
       echo "Stacked but no astrometry for group 1475; see logs/g1475.log"

   else
       echo "Failed group 1475; see logs/g1475.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1476"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_25-pt5m-I-flat-g1476-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1476"

else if ( -d "$batch_dir/working/g1476" ) then
   echo "Work folder already exists; inspect logs/g1476.log"

else
   mkdir "$batch_dir/working/g1476"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1476"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_25" "0605067" "0605072" 5.0 >&! "$batch_dir/logs/g1476.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1476.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_25-pt5m-I-flat-g1476-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1476"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_25-pt5m-I-flat-g1476-noastrom.fits"
       echo "Stacked but no astrometry for group 1476; see logs/g1476.log"

   else
       echo "Failed group 1476; see logs/g1476.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1477"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_25-pt5m-R-flat-g1477-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1477"

else if ( -d "$batch_dir/working/g1477" ) then
   echo "Work folder already exists; inspect logs/g1477.log"

else
   mkdir "$batch_dir/working/g1477"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1477"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_25" "0605073" "0605077" 5.0 >&! "$batch_dir/logs/g1477.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1477.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_25-pt5m-R-flat-g1477-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1477"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_25-pt5m-R-flat-g1477-noastrom.fits"
       echo "Stacked but no astrometry for group 1477; see logs/g1477.log"

   else
       echo "Failed group 1477; see logs/g1477.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1478"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_25-pt5m-V-flat-g1478-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1478"

else if ( -d "$batch_dir/working/g1478" ) then
   echo "Work folder already exists; inspect logs/g1478.log"

else
   mkdir "$batch_dir/working/g1478"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1478"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_25" "0605078" "0605078" 5.0 >&! "$batch_dir/logs/g1478.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1478.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_25-pt5m-V-flat-g1478-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1478"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_25-pt5m-V-flat-g1478-noastrom.fits"
       echo "Stacked but no astrometry for group 1478; see logs/g1478.log"

   else
       echo "Failed group 1478; see logs/g1478.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1479"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_26-draco2-V-flat-g1479-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1479"

else if ( -d "$batch_dir/working/g1479" ) then
   echo "Work folder already exists; inspect logs/g1479.log"

else
   mkdir "$batch_dir/working/g1479"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1479"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "20_01_26" "0001" "0064" 5.0 >&! "$batch_dir/logs/g1479.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1479.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_26-draco2-V-flat-g1479-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1479"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_26-draco2-V-flat-g1479-noastrom.fits"
       echo "Stacked but no astrometry for group 1479; see logs/g1479.log"

   else
       echo "Failed group 1479; see logs/g1479.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1480"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_26-draco2-r-flat-g1480-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1480"

else if ( -d "$batch_dir/working/g1480" ) then
   echo "Work folder already exists; inspect logs/g1480.log"

else
   mkdir "$batch_dir/working/g1480"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1480"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "20_01_26" "0065" "0128" 5.0 >&! "$batch_dir/logs/g1480.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1480.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_26-draco2-r-flat-g1480-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1480"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_26-draco2-r-flat-g1480-noastrom.fits"
       echo "Stacked but no astrometry for group 1480; see logs/g1480.log"

   else
       echo "Failed group 1480; see logs/g1480.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1481"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_26-far-east-16-B-flat-g1481-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1481"

else if ( -d "$batch_dir/working/g1481" ) then
   echo "Work folder already exists; inspect logs/g1481.log"

else
   mkdir "$batch_dir/working/g1481"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1481"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "far-east-16" "20_01_26" "0022" "0053" 5.0 >&! "$batch_dir/logs/g1481.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1481.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_26-far-east-16-B-flat-g1481-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1481"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_26-far-east-16-B-flat-g1481-noastrom.fits"
       echo "Stacked but no astrometry for group 1481; see logs/g1481.log"

   else
       echo "Failed group 1481; see logs/g1481.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1482"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_26-pt5m-B-flat-g1482-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1482"

else if ( -d "$batch_dir/working/g1482" ) then
   echo "Work folder already exists; inspect logs/g1482.log"

else
   mkdir "$batch_dir/working/g1482"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1482"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_26" "0605270" "0605276" 5.0 >&! "$batch_dir/logs/g1482.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1482.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_26-pt5m-B-flat-g1482-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1482"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_26-pt5m-B-flat-g1482-noastrom.fits"
       echo "Stacked but no astrometry for group 1482; see logs/g1482.log"

   else
       echo "Failed group 1482; see logs/g1482.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1483"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_26-pt5m-I-flat-g1483-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1483"

else if ( -d "$batch_dir/working/g1483" ) then
   echo "Work folder already exists; inspect logs/g1483.log"

else
   mkdir "$batch_dir/working/g1483"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1483"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_26" "0605254" "0605259" 5.0 >&! "$batch_dir/logs/g1483.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1483.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_26-pt5m-I-flat-g1483-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1483"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_26-pt5m-I-flat-g1483-noastrom.fits"
       echo "Stacked but no astrometry for group 1483; see logs/g1483.log"

   else
       echo "Failed group 1483; see logs/g1483.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1484"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_26-pt5m-R-flat-g1484-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1484"

else if ( -d "$batch_dir/working/g1484" ) then
   echo "Work folder already exists; inspect logs/g1484.log"

else
   mkdir "$batch_dir/working/g1484"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1484"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_26" "0605260" "0605264" 5.0 >&! "$batch_dir/logs/g1484.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1484.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_26-pt5m-R-flat-g1484-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1484"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_26-pt5m-R-flat-g1484-noastrom.fits"
       echo "Stacked but no astrometry for group 1484; see logs/g1484.log"

   else
       echo "Failed group 1484; see logs/g1484.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1485"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_26-pt5m-V-flat-g1485-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1485"

else if ( -d "$batch_dir/working/g1485" ) then
   echo "Work folder already exists; inspect logs/g1485.log"

else
   mkdir "$batch_dir/working/g1485"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1485"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_26" "0605269" "0605269" 5.0 >&! "$batch_dir/logs/g1485.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1485.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_26-pt5m-V-flat-g1485-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1485"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_26-pt5m-V-flat-g1485-noastrom.fits"
       echo "Stacked but no astrometry for group 1485; see logs/g1485.log"

   else
       echo "Failed group 1485; see logs/g1485.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1486"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_27-pt5m-B-flat-g1486-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1486"

else if ( -d "$batch_dir/working/g1486" ) then
   echo "Work folder already exists; inspect logs/g1486.log"

else
   mkdir "$batch_dir/working/g1486"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1486"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_27" "0605717" "0605723" 5.0 >&! "$batch_dir/logs/g1486.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1486.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_27-pt5m-B-flat-g1486-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1486"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_27-pt5m-B-flat-g1486-noastrom.fits"
       echo "Stacked but no astrometry for group 1486; see logs/g1486.log"

   else
       echo "Failed group 1486; see logs/g1486.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1487"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_27-pt5m-I-flat-g1487-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1487"

else if ( -d "$batch_dir/working/g1487" ) then
   echo "Work folder already exists; inspect logs/g1487.log"

else
   mkdir "$batch_dir/working/g1487"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1487"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_27" "0605701" "0605706" 5.0 >&! "$batch_dir/logs/g1487.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1487.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_27-pt5m-I-flat-g1487-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1487"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_27-pt5m-I-flat-g1487-noastrom.fits"
       echo "Stacked but no astrometry for group 1487; see logs/g1487.log"

   else
       echo "Failed group 1487; see logs/g1487.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1488"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_27-pt5m-R-flat-g1488-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1488"

else if ( -d "$batch_dir/working/g1488" ) then
   echo "Work folder already exists; inspect logs/g1488.log"

else
   mkdir "$batch_dir/working/g1488"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1488"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_27" "0605707" "0605709" 5.0 >&! "$batch_dir/logs/g1488.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1488.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_27-pt5m-R-flat-g1488-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1488"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_27-pt5m-R-flat-g1488-noastrom.fits"
       echo "Stacked but no astrometry for group 1488; see logs/g1488.log"

   else
       echo "Failed group 1488; see logs/g1488.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1489"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_27-pt5m-V-flat-g1489-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1489"

else if ( -d "$batch_dir/working/g1489" ) then
   echo "Work folder already exists; inspect logs/g1489.log"

else
   mkdir "$batch_dir/working/g1489"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1489"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_27" "0605715" "0605716" 5.0 >&! "$batch_dir/logs/g1489.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1489.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_27-pt5m-V-flat-g1489-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1489"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_27-pt5m-V-flat-g1489-noastrom.fits"
       echo "Stacked but no astrometry for group 1489; see logs/g1489.log"

   else
       echo "Failed group 1489; see logs/g1489.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1490"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_28-draco2-B-flat-g1490-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1490"

else if ( -d "$batch_dir/working/g1490" ) then
   echo "Work folder already exists; inspect logs/g1490.log"

else
   mkdir "$batch_dir/working/g1490"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1490"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "20_01_28" "0033" "0064" 5.0 >&! "$batch_dir/logs/g1490.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1490.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_28-draco2-B-flat-g1490-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1490"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_28-draco2-B-flat-g1490-noastrom.fits"
       echo "Stacked but no astrometry for group 1490; see logs/g1490.log"

   else
       echo "Failed group 1490; see logs/g1490.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1491"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_28-draco2-V-flat-g1491-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1491"

else if ( -d "$batch_dir/working/g1491" ) then
   echo "Work folder already exists; inspect logs/g1491.log"

else
   mkdir "$batch_dir/working/g1491"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1491"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "20_01_28" "0001" "0032" 5.0 >&! "$batch_dir/logs/g1491.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1491.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_28-draco2-V-flat-g1491-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1491"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_28-draco2-V-flat-g1491-noastrom.fits"
       echo "Stacked but no astrometry for group 1491; see logs/g1491.log"

   else
       echo "Failed group 1491; see logs/g1491.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1492"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_28-draco2-r-flat-g1492-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1492"

else if ( -d "$batch_dir/working/g1492" ) then
   echo "Work folder already exists; inspect logs/g1492.log"

else
   mkdir "$batch_dir/working/g1492"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1492"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "draco2" "20_01_28" "0065" "0074" 5.0 >&! "$batch_dir/logs/g1492.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1492.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_28-draco2-r-flat-g1492-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1492"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_28-draco2-r-flat-g1492-noastrom.fits"
       echo "Stacked but no astrometry for group 1492; see logs/g1492.log"

   else
       echo "Failed group 1492; see logs/g1492.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1493"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_28-pt5m-B-flat-g1493-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1493"

else if ( -d "$batch_dir/working/g1493" ) then
   echo "Work folder already exists; inspect logs/g1493.log"

else
   mkdir "$batch_dir/working/g1493"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1493"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_28" "0606019" "0606025" 5.0 >&! "$batch_dir/logs/g1493.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1493.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_28-pt5m-B-flat-g1493-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1493"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_28-pt5m-B-flat-g1493-noastrom.fits"
       echo "Stacked but no astrometry for group 1493; see logs/g1493.log"

   else
       echo "Failed group 1493; see logs/g1493.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1494"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_28-pt5m-I-flat-g1494-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1494"

else if ( -d "$batch_dir/working/g1494" ) then
   echo "Work folder already exists; inspect logs/g1494.log"

else
   mkdir "$batch_dir/working/g1494"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1494"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_28" "0606004" "0606008" 5.0 >&! "$batch_dir/logs/g1494.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1494.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_28-pt5m-I-flat-g1494-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1494"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_28-pt5m-I-flat-g1494-noastrom.fits"
       echo "Stacked but no astrometry for group 1494; see logs/g1494.log"

   else
       echo "Failed group 1494; see logs/g1494.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1495"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_28-pt5m-R-flat-g1495-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1495"

else if ( -d "$batch_dir/working/g1495" ) then
   echo "Work folder already exists; inspect logs/g1495.log"

else
   mkdir "$batch_dir/working/g1495"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1495"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_28" "0606009" "0606013" 5.0 >&! "$batch_dir/logs/g1495.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1495.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_28-pt5m-R-flat-g1495-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1495"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_28-pt5m-R-flat-g1495-noastrom.fits"
       echo "Stacked but no astrometry for group 1495; see logs/g1495.log"

   else
       echo "Failed group 1495; see logs/g1495.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1496"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_28-pt5m-V-flat-g1496-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1496"

else if ( -d "$batch_dir/working/g1496" ) then
   echo "Work folder already exists; inspect logs/g1496.log"

else
   mkdir "$batch_dir/working/g1496"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1496"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_28" "0606014" "0606018" 5.0 >&! "$batch_dir/logs/g1496.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1496.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_28-pt5m-V-flat-g1496-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1496"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_28-pt5m-V-flat-g1496-noastrom.fits"
       echo "Stacked but no astrometry for group 1496; see logs/g1496.log"

   else
       echo "Failed group 1496; see logs/g1496.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1497"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_29-pt5m-B-flat-g1497-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1497"

else if ( -d "$batch_dir/working/g1497" ) then
   echo "Work folder already exists; inspect logs/g1497.log"

else
   mkdir "$batch_dir/working/g1497"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1497"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_29" "0606452" "0606458" 5.0 >&! "$batch_dir/logs/g1497.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1497.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_29-pt5m-B-flat-g1497-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1497"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_29-pt5m-B-flat-g1497-noastrom.fits"
       echo "Stacked but no astrometry for group 1497; see logs/g1497.log"

   else
       echo "Failed group 1497; see logs/g1497.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1498"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_29-pt5m-I-flat-g1498-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1498"

else if ( -d "$batch_dir/working/g1498" ) then
   echo "Work folder already exists; inspect logs/g1498.log"

else
   mkdir "$batch_dir/working/g1498"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1498"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_29" "0606437" "0606441" 5.0 >&! "$batch_dir/logs/g1498.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1498.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_29-pt5m-I-flat-g1498-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1498"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_29-pt5m-I-flat-g1498-noastrom.fits"
       echo "Stacked but no astrometry for group 1498; see logs/g1498.log"

   else
       echo "Failed group 1498; see logs/g1498.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1499"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_29-pt5m-R-flat-g1499-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1499"

else if ( -d "$batch_dir/working/g1499" ) then
   echo "Work folder already exists; inspect logs/g1499.log"

else
   mkdir "$batch_dir/working/g1499"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1499"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_29" "0606442" "0606446" 5.0 >&! "$batch_dir/logs/g1499.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1499.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_29-pt5m-R-flat-g1499-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1499"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_29-pt5m-R-flat-g1499-noastrom.fits"
       echo "Stacked but no astrometry for group 1499; see logs/g1499.log"

   else
       echo "Failed group 1499; see logs/g1499.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1500"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_29-pt5m-V-flat-g1500-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1500"

else if ( -d "$batch_dir/working/g1500" ) then
   echo "Work folder already exists; inspect logs/g1500.log"

else
   mkdir "$batch_dir/working/g1500"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1500"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_29" "0606447" "0606451" 5.0 >&! "$batch_dir/logs/g1500.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1500.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_29-pt5m-V-flat-g1500-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1500"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_29-pt5m-V-flat-g1500-noastrom.fits"
       echo "Stacked but no astrometry for group 1500; see logs/g1500.log"

   else
       echo "Failed group 1500; see logs/g1500.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1501"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_30-pt5m-B-flat-g1501-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1501"

else if ( -d "$batch_dir/working/g1501" ) then
   echo "Work folder already exists; inspect logs/g1501.log"

else
   mkdir "$batch_dir/working/g1501"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1501"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_30" "0606928" "0606934" 5.0 >&! "$batch_dir/logs/g1501.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1501.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_30-pt5m-B-flat-g1501-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1501"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_30-pt5m-B-flat-g1501-noastrom.fits"
       echo "Stacked but no astrometry for group 1501; see logs/g1501.log"

   else
       echo "Failed group 1501; see logs/g1501.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1502"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_30-pt5m-I-flat-g1502-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1502"

else if ( -d "$batch_dir/working/g1502" ) then
   echo "Work folder already exists; inspect logs/g1502.log"

else
   mkdir "$batch_dir/working/g1502"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1502"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_30" "0606913" "0606917" 5.0 >&! "$batch_dir/logs/g1502.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1502.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_30-pt5m-I-flat-g1502-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1502"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_30-pt5m-I-flat-g1502-noastrom.fits"
       echo "Stacked but no astrometry for group 1502; see logs/g1502.log"

   else
       echo "Failed group 1502; see logs/g1502.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1503"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_30-pt5m-R-flat-g1503-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1503"

else if ( -d "$batch_dir/working/g1503" ) then
   echo "Work folder already exists; inspect logs/g1503.log"

else
   mkdir "$batch_dir/working/g1503"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1503"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_30" "0606918" "0606922" 5.0 >&! "$batch_dir/logs/g1503.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1503.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_30-pt5m-R-flat-g1503-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1503"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_30-pt5m-R-flat-g1503-noastrom.fits"
       echo "Stacked but no astrometry for group 1503; see logs/g1503.log"

   else
       echo "Failed group 1503; see logs/g1503.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1504"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_01_30-pt5m-V-flat-g1504-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1504"

else if ( -d "$batch_dir/working/g1504" ) then
   echo "Work folder already exists; inspect logs/g1504.log"

else
   mkdir "$batch_dir/working/g1504"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1504"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_01_30" "0606923" "0606927" 5.0 >&! "$batch_dir/logs/g1504.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1504.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_01_30-pt5m-V-flat-g1504-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1504"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_01_30-pt5m-V-flat-g1504-noastrom.fits"
       echo "Stacked but no astrometry for group 1504; see logs/g1504.log"

   else
       echo "Failed group 1504; see logs/g1504.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1505"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_02-east-14-B-flat-g1505-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1505"

else if ( -d "$batch_dir/working/g1505" ) then
   echo "Work folder already exists; inspect logs/g1505.log"

else
   mkdir "$batch_dir/working/g1505"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1505"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "20_02_02" "0161" "0192" 5.0 >&! "$batch_dir/logs/g1505.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1505.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_02-east-14-B-flat-g1505-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1505"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_02-east-14-B-flat-g1505-noastrom.fits"
       echo "Stacked but no astrometry for group 1505; see logs/g1505.log"

   else
       echo "Failed group 1505; see logs/g1505.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1506"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_02-east-14-V-flat-g1506-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1506"

else if ( -d "$batch_dir/working/g1506" ) then
   echo "Work folder already exists; inspect logs/g1506.log"

else
   mkdir "$batch_dir/working/g1506"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1506"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "20_02_02" "0129" "0160" 5.0 >&! "$batch_dir/logs/g1506.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1506.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_02-east-14-V-flat-g1506-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1506"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_02-east-14-V-flat-g1506-noastrom.fits"
       echo "Stacked but no astrometry for group 1506; see logs/g1506.log"

   else
       echo "Failed group 1506; see logs/g1506.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1507"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_02-east-14-r-flat-g1507-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1507"

else if ( -d "$batch_dir/working/g1507" ) then
   echo "Work folder already exists; inspect logs/g1507.log"

else
   mkdir "$batch_dir/working/g1507"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1507"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "east-14" "20_02_02" "0097" "0128" 5.0 >&! "$batch_dir/logs/g1507.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1507.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_02-east-14-r-flat-g1507-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1507"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_02-east-14-r-flat-g1507-noastrom.fits"
       echo "Stacked but no astrometry for group 1507; see logs/g1507.log"

   else
       echo "Failed group 1507; see logs/g1507.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1508"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_07-pt5m-B-flat-g1508-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1508"

else if ( -d "$batch_dir/working/g1508" ) then
   echo "Work folder already exists; inspect logs/g1508.log"

else
   mkdir "$batch_dir/working/g1508"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1508"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_07" "0609030" "0609036" 5.0 >&! "$batch_dir/logs/g1508.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1508.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_07-pt5m-B-flat-g1508-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1508"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_07-pt5m-B-flat-g1508-noastrom.fits"
       echo "Stacked but no astrometry for group 1508; see logs/g1508.log"

   else
       echo "Failed group 1508; see logs/g1508.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1509"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_07-pt5m-I-flat-g1509-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1509"

else if ( -d "$batch_dir/working/g1509" ) then
   echo "Work folder already exists; inspect logs/g1509.log"

else
   mkdir "$batch_dir/working/g1509"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1509"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_07" "0609015" "0609019" 5.0 >&! "$batch_dir/logs/g1509.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1509.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_07-pt5m-I-flat-g1509-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1509"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_07-pt5m-I-flat-g1509-noastrom.fits"
       echo "Stacked but no astrometry for group 1509; see logs/g1509.log"

   else
       echo "Failed group 1509; see logs/g1509.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1510"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_07-pt5m-R-flat-g1510-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1510"

else if ( -d "$batch_dir/working/g1510" ) then
   echo "Work folder already exists; inspect logs/g1510.log"

else
   mkdir "$batch_dir/working/g1510"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1510"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_07" "0609020" "0609024" 5.0 >&! "$batch_dir/logs/g1510.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1510.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_07-pt5m-R-flat-g1510-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1510"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_07-pt5m-R-flat-g1510-noastrom.fits"
       echo "Stacked but no astrometry for group 1510; see logs/g1510.log"

   else
       echo "Failed group 1510; see logs/g1510.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1511"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_07-pt5m-V-flat-g1511-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1511"

else if ( -d "$batch_dir/working/g1511" ) then
   echo "Work folder already exists; inspect logs/g1511.log"

else
   mkdir "$batch_dir/working/g1511"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1511"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_07" "0609025" "0609029" 5.0 >&! "$batch_dir/logs/g1511.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1511.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_07-pt5m-V-flat-g1511-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1511"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_07-pt5m-V-flat-g1511-noastrom.fits"
       echo "Stacked but no astrometry for group 1511; see logs/g1511.log"

   else
       echo "Failed group 1511; see logs/g1511.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1512"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_11-pt5m-B-flat-g1512-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1512"

else if ( -d "$batch_dir/working/g1512" ) then
   echo "Work folder already exists; inspect logs/g1512.log"

else
   mkdir "$batch_dir/working/g1512"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1512"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_11" "0609978" "0609984" 5.0 >&! "$batch_dir/logs/g1512.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1512.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_11-pt5m-B-flat-g1512-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1512"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_11-pt5m-B-flat-g1512-noastrom.fits"
       echo "Stacked but no astrometry for group 1512; see logs/g1512.log"

   else
       echo "Failed group 1512; see logs/g1512.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1513"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_11-pt5m-I-flat-g1513-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1513"

else if ( -d "$batch_dir/working/g1513" ) then
   echo "Work folder already exists; inspect logs/g1513.log"

else
   mkdir "$batch_dir/working/g1513"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1513"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_11" "0609963" "0609967" 5.0 >&! "$batch_dir/logs/g1513.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1513.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_11-pt5m-I-flat-g1513-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1513"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_11-pt5m-I-flat-g1513-noastrom.fits"
       echo "Stacked but no astrometry for group 1513; see logs/g1513.log"

   else
       echo "Failed group 1513; see logs/g1513.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1514"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_11-pt5m-R-flat-g1514-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1514"

else if ( -d "$batch_dir/working/g1514" ) then
   echo "Work folder already exists; inspect logs/g1514.log"

else
   mkdir "$batch_dir/working/g1514"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1514"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_11" "0609968" "0609972" 5.0 >&! "$batch_dir/logs/g1514.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1514.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_11-pt5m-R-flat-g1514-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1514"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_11-pt5m-R-flat-g1514-noastrom.fits"
       echo "Stacked but no astrometry for group 1514; see logs/g1514.log"

   else
       echo "Failed group 1514; see logs/g1514.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1515"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_11-pt5m-V-flat-g1515-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1515"

else if ( -d "$batch_dir/working/g1515" ) then
   echo "Work folder already exists; inspect logs/g1515.log"

else
   mkdir "$batch_dir/working/g1515"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1515"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_11" "0609973" "0609977" 5.0 >&! "$batch_dir/logs/g1515.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1515.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_11-pt5m-V-flat-g1515-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1515"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_11-pt5m-V-flat-g1515-noastrom.fits"
       echo "Stacked but no astrometry for group 1515; see logs/g1515.log"

   else
       echo "Failed group 1515; see logs/g1515.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1516"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_16-pt5m-B-flat-g1516-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1516"

else if ( -d "$batch_dir/working/g1516" ) then
   echo "Work folder already exists; inspect logs/g1516.log"

else
   mkdir "$batch_dir/working/g1516"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1516"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_16" "0611663" "0611669" 5.0 >&! "$batch_dir/logs/g1516.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1516.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_16-pt5m-B-flat-g1516-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1516"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_16-pt5m-B-flat-g1516-noastrom.fits"
       echo "Stacked but no astrometry for group 1516; see logs/g1516.log"

   else
       echo "Failed group 1516; see logs/g1516.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1517"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_16-pt5m-I-flat-g1517-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1517"

else if ( -d "$batch_dir/working/g1517" ) then
   echo "Work folder already exists; inspect logs/g1517.log"

else
   mkdir "$batch_dir/working/g1517"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1517"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_16" "0611648" "0611652" 5.0 >&! "$batch_dir/logs/g1517.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1517.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_16-pt5m-I-flat-g1517-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1517"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_16-pt5m-I-flat-g1517-noastrom.fits"
       echo "Stacked but no astrometry for group 1517; see logs/g1517.log"

   else
       echo "Failed group 1517; see logs/g1517.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1518"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_16-pt5m-R-flat-g1518-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1518"

else if ( -d "$batch_dir/working/g1518" ) then
   echo "Work folder already exists; inspect logs/g1518.log"

else
   mkdir "$batch_dir/working/g1518"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1518"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_16" "0611653" "0611657" 5.0 >&! "$batch_dir/logs/g1518.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1518.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_16-pt5m-R-flat-g1518-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1518"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_16-pt5m-R-flat-g1518-noastrom.fits"
       echo "Stacked but no astrometry for group 1518; see logs/g1518.log"

   else
       echo "Failed group 1518; see logs/g1518.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1519"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_16-pt5m-V-flat-g1519-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1519"

else if ( -d "$batch_dir/working/g1519" ) then
   echo "Work folder already exists; inspect logs/g1519.log"

else
   mkdir "$batch_dir/working/g1519"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1519"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_16" "0611658" "0611662" 5.0 >&! "$batch_dir/logs/g1519.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1519.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_16-pt5m-V-flat-g1519-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1519"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_16-pt5m-V-flat-g1519-noastrom.fits"
       echo "Stacked but no astrometry for group 1519; see logs/g1519.log"

   else
       echo "Failed group 1519; see logs/g1519.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1520"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_17-pt5m-B-flat-g1520-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1520"

else if ( -d "$batch_dir/working/g1520" ) then
   echo "Work folder already exists; inspect logs/g1520.log"

else
   mkdir "$batch_dir/working/g1520"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1520"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_17" "0612134" "0612140" 5.0 >&! "$batch_dir/logs/g1520.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1520.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_17-pt5m-B-flat-g1520-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1520"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_17-pt5m-B-flat-g1520-noastrom.fits"
       echo "Stacked but no astrometry for group 1520; see logs/g1520.log"

   else
       echo "Failed group 1520; see logs/g1520.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1521"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_17-pt5m-I-flat-g1521-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1521"

else if ( -d "$batch_dir/working/g1521" ) then
   echo "Work folder already exists; inspect logs/g1521.log"

else
   mkdir "$batch_dir/working/g1521"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1521"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_17" "0612119" "0612123" 5.0 >&! "$batch_dir/logs/g1521.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1521.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_17-pt5m-I-flat-g1521-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1521"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_17-pt5m-I-flat-g1521-noastrom.fits"
       echo "Stacked but no astrometry for group 1521; see logs/g1521.log"

   else
       echo "Failed group 1521; see logs/g1521.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1522"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_17-pt5m-R-flat-g1522-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1522"

else if ( -d "$batch_dir/working/g1522" ) then
   echo "Work folder already exists; inspect logs/g1522.log"

else
   mkdir "$batch_dir/working/g1522"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1522"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_17" "0612124" "0612128" 5.0 >&! "$batch_dir/logs/g1522.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1522.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_17-pt5m-R-flat-g1522-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1522"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_17-pt5m-R-flat-g1522-noastrom.fits"
       echo "Stacked but no astrometry for group 1522; see logs/g1522.log"

   else
       echo "Failed group 1522; see logs/g1522.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1523"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_02_17-pt5m-V-flat-g1523-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1523"

else if ( -d "$batch_dir/working/g1523" ) then
   echo "Work folder already exists; inspect logs/g1523.log"

else
   mkdir "$batch_dir/working/g1523"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1523"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_02_17" "0612129" "0612133" 5.0 >&! "$batch_dir/logs/g1523.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1523.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_02_17-pt5m-V-flat-g1523-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1523"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_02_17-pt5m-V-flat-g1523-noastrom.fits"
       echo "Stacked but no astrometry for group 1523; see logs/g1523.log"

   else
       echo "Failed group 1523; see logs/g1523.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1524"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_03_03-pt5m-I-flat-g1524-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1524"

else if ( -d "$batch_dir/working/g1524" ) then
   echo "Work folder already exists; inspect logs/g1524.log"

else
   mkdir "$batch_dir/working/g1524"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1524"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_03_03" "0614241" "0614246" 5.0 >&! "$batch_dir/logs/g1524.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1524.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_03_03-pt5m-I-flat-g1524-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1524"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_03_03-pt5m-I-flat-g1524-noastrom.fits"
       echo "Stacked but no astrometry for group 1524; see logs/g1524.log"

   else
       echo "Failed group 1524; see logs/g1524.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 1525"

if ( -e "$batch_dir/output_mosaics/sn2020se-20_03_03-pt5m-R-flat-g1525-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 1525"

else if ( -d "$batch_dir/working/g1525" ) then
   echo "Work folder already exists; inspect logs/g1525.log"

else
   mkdir "$batch_dir/working/g1525"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g1525"
   if ( $status != 0 ) exit 1

   python "$batch_dir/stackX3.py" "pt5m" "20_03_03" "0614247" "0614247" 5.0 >&! "$batch_dir/logs/g1525.log"
   set stack_status = $status
   echo "stackX3 exit status: $stack_status" >> "$batch_dir/logs/g1525.log"

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2020se-20_03_03-pt5m-R-flat-g1525-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 1525"

   else if ( -e mosaic.fits ) then
       cp mosaic.fits "$batch_dir/stacked_no_astrom/sn2020se-20_03_03-pt5m-R-flat-g1525-noastrom.fits"
       echo "Stacked but no astrometry for group 1525; see logs/g1525.log"

   else
       echo "Failed group 1525; see logs/g1525.log"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif

echo "Lane 1 finished"
