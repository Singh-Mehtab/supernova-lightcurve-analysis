#!/bin/csh -f
set batch_dir = "$cwd"
mkdir -p working output_mosaics logs
if ( $status != 0 ) exit 1

echo "Processing group 210"

if ( -e "$batch_dir/output_mosaics/at2019np-19_06_18-pt5m-B-flat-g210-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 210"

else if ( -d "$batch_dir/working/g210" ) then
   echo "Work folder already exists; inspect logs/g210.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 210: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g210"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g210"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_18" "0562227" "0562232" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g210.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g210.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_06_18-pt5m-B-flat-g210-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 210"
   else
       echo "Failed group 210; see logs/g210.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 210"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 214"

if ( -e "$batch_dir/output_mosaics/at2019np-19_06_04-pt5m-B-flat-g214-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 214"

else if ( -d "$batch_dir/working/g214" ) then
   echo "Work folder already exists; inspect logs/g214.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 214: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g214"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g214"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_04" "0558315" "0558320" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g214.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g214.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_06_04-pt5m-B-flat-g214-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 214"
   else
       echo "Failed group 214; see logs/g214.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 214"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 218"

if ( -e "$batch_dir/output_mosaics/at2019np-19_06_01-pt5m-B-flat-g218-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 218"

else if ( -d "$batch_dir/working/g218" ) then
   echo "Work folder already exists; inspect logs/g218.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 218: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g218"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g218"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_01" "0557516" "0557521" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g218.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g218.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_06_01-pt5m-B-flat-g218-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 218"
   else
       echo "Failed group 218; see logs/g218.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 218"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 220"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_29-pt5m-B-flat-g220-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 220"

else if ( -d "$batch_dir/working/g220" ) then
   echo "Work folder already exists; inspect logs/g220.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 220: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g220"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g220"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_29" "0556370" "0556375" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g220.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g220.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_29-pt5m-B-flat-g220-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 220"
   else
       echo "Failed group 220; see logs/g220.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 220"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 224"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_16-pt5m-B-flat-g224-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 224"

else if ( -d "$batch_dir/working/g224" ) then
   echo "Work folder already exists; inspect logs/g224.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 224: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g224"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g224"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_16" "0554893" "0554898" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g224.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g224.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_16-pt5m-B-flat-g224-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 224"
   else
       echo "Failed group 224; see logs/g224.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 224"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 228"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_15-pt5m-B-flat-g228-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 228"

else if ( -d "$batch_dir/working/g228" ) then
   echo "Work folder already exists; inspect logs/g228.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 228: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g228"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g228"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_15" "0554583" "0554588" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g228.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g228.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_15-pt5m-B-flat-g228-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 228"
   else
       echo "Failed group 228; see logs/g228.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 228"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 229"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_15-pt5m-V-flat-g229-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 229"

else if ( -d "$batch_dir/working/g229" ) then
   echo "Work folder already exists; inspect logs/g229.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 229: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g229"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g229"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_15" "0554589" "0554593" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g229.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g229.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_15-pt5m-V-flat-g229-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 229"
   else
       echo "Failed group 229; see logs/g229.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 229"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 230"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_15-pt5m-R-flat-g230-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 230"

else if ( -d "$batch_dir/working/g230" ) then
   echo "Work folder already exists; inspect logs/g230.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 230: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g230"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g230"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_15" "0554594" "0554598" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g230.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g230.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_15-pt5m-R-flat-g230-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 230"
   else
       echo "Failed group 230; see logs/g230.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 230"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 231"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_15-pt5m-I-flat-g231-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 231"

else if ( -d "$batch_dir/working/g231" ) then
   echo "Work folder already exists; inspect logs/g231.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 231: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g231"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g231"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_15" "0554599" "0554603" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g231.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g231.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_15-pt5m-I-flat-g231-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 231"
   else
       echo "Failed group 231; see logs/g231.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 231"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 232"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_14-pt5m-B-flat-g232-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 232"

else if ( -d "$batch_dir/working/g232" ) then
   echo "Work folder already exists; inspect logs/g232.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 232: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g232"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g232"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_14" "0554273" "0554278" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g232.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g232.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_14-pt5m-B-flat-g232-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 232"
   else
       echo "Failed group 232; see logs/g232.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 232"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 236"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_09-pt5m-B-flat-g236-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 236"

else if ( -d "$batch_dir/working/g236" ) then
   echo "Work folder already exists; inspect logs/g236.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 236: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g236"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g236"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_09" "0553011" "0553016" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g236.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g236.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_09-pt5m-B-flat-g236-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 236"
   else
       echo "Failed group 236; see logs/g236.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 236"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 240"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_08-pt5m-B-flat-g240-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 240"

else if ( -d "$batch_dir/working/g240" ) then
   echo "Work folder already exists; inspect logs/g240.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 240: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g240"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g240"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_08" "0552671" "0552676" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g240.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g240.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_08-pt5m-B-flat-g240-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 240"
   else
       echo "Failed group 240; see logs/g240.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 240"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 244"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_07-pt5m-B-flat-g244-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 244"

else if ( -d "$batch_dir/working/g244" ) then
   echo "Work folder already exists; inspect logs/g244.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 244: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g244"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g244"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_07" "0552440" "0552445" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g244.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g244.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_07-pt5m-B-flat-g244-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 244"
   else
       echo "Failed group 244; see logs/g244.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 244"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 248"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_05-pt5m-B-flat-g248-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 248"

else if ( -d "$batch_dir/working/g248" ) then
   echo "Work folder already exists; inspect logs/g248.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 248: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g248"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g248"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_05" "0551862" "0551867" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g248.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g248.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_05-pt5m-B-flat-g248-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 248"
   else
       echo "Failed group 248; see logs/g248.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 248"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 252"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_04-pt5m-B-flat-g252-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 252"

else if ( -d "$batch_dir/working/g252" ) then
   echo "Work folder already exists; inspect logs/g252.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 252: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g252"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g252"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_04" "0551585" "0551590" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g252.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g252.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_04-pt5m-B-flat-g252-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 252"
   else
       echo "Failed group 252; see logs/g252.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 252"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 260"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_02-pt5m-B-flat-g260-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 260"

else if ( -d "$batch_dir/working/g260" ) then
   echo "Work folder already exists; inspect logs/g260.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 260: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g260"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g260"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_02" "0550980" "0550985" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g260.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g260.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_02-pt5m-B-flat-g260-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 260"
   else
       echo "Failed group 260; see logs/g260.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 260"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 264"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_01-pt5m-B-flat-g264-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 264"

else if ( -d "$batch_dir/working/g264" ) then
   echo "Work folder already exists; inspect logs/g264.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 264: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g264"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g264"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_01" "0550718" "0550723" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g264.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g264.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_01-pt5m-B-flat-g264-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 264"
   else
       echo "Failed group 264; see logs/g264.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 264"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 268"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_30-pt5m-B-flat-g268-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 268"

else if ( -d "$batch_dir/working/g268" ) then
   echo "Work folder already exists; inspect logs/g268.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 268: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g268"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g268"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_30" "0550397" "0550402" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g268.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g268.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_30-pt5m-B-flat-g268-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 268"
   else
       echo "Failed group 268; see logs/g268.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 268"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 272"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_27-pt5m-B-flat-g272-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 272"

else if ( -d "$batch_dir/working/g272" ) then
   echo "Work folder already exists; inspect logs/g272.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 272: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g272"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g272"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_27" "0549650" "0549655" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g272.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g272.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_27-pt5m-B-flat-g272-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 272"
   else
       echo "Failed group 272; see logs/g272.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 272"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 276"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_25-pt5m-B-flat-g276-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 276"

else if ( -d "$batch_dir/working/g276" ) then
   echo "Work folder already exists; inspect logs/g276.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 276: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g276"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g276"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_25" "0549021" "0549026" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g276.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g276.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_25-pt5m-B-flat-g276-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 276"
   else
       echo "Failed group 276; see logs/g276.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 276"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 279"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_25-pt5m-I-flat-g279-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 279"

else if ( -d "$batch_dir/working/g279" ) then
   echo "Work folder already exists; inspect logs/g279.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 279: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g279"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g279"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_25" "0549037" "0549041" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g279.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g279.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_25-pt5m-I-flat-g279-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 279"
   else
       echo "Failed group 279; see logs/g279.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 279"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 280"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_24-pt5m-B-flat-g280-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 280"

else if ( -d "$batch_dir/working/g280" ) then
   echo "Work folder already exists; inspect logs/g280.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 280: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g280"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g280"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_24" "0548679" "0548684" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g280.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g280.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_24-pt5m-B-flat-g280-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 280"
   else
       echo "Failed group 280; see logs/g280.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 280"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 284"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_23-pt5m-B-flat-g284-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 284"

else if ( -d "$batch_dir/working/g284" ) then
   echo "Work folder already exists; inspect logs/g284.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 284: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g284"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g284"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_23" "0548528" "0548528" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g284.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g284.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_23-pt5m-B-flat-g284-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 284"
   else
       echo "Failed group 284; see logs/g284.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 284"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 285"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_20-pt5m-B-flat-g285-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 285"

else if ( -d "$batch_dir/working/g285" ) then
   echo "Work folder already exists; inspect logs/g285.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 285: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g285"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g285"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_20" "0548114" "0548119" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g285.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g285.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_20-pt5m-B-flat-g285-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 285"
   else
       echo "Failed group 285; see logs/g285.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 285"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 289"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_17-pt5m-B-flat-g289-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 289"

else if ( -d "$batch_dir/working/g289" ) then
   echo "Work folder already exists; inspect logs/g289.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 289: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g289"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g289"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_17" "0547742" "0547747" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g289.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g289.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_17-pt5m-B-flat-g289-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 289"
   else
       echo "Failed group 289; see logs/g289.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 289"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 290"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_17-pt5m-V-flat-g290-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 290"

else if ( -d "$batch_dir/working/g290" ) then
   echo "Work folder already exists; inspect logs/g290.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 290: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g290"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g290"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_17" "0547748" "0547752" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g290.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g290.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_17-pt5m-V-flat-g290-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 290"
   else
       echo "Failed group 290; see logs/g290.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 290"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 293"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_10-pt5m-B-flat-g293-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 293"

else if ( -d "$batch_dir/working/g293" ) then
   echo "Work folder already exists; inspect logs/g293.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 293: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g293"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g293"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_10" "0546644" "0546649" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g293.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g293.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_10-pt5m-B-flat-g293-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 293"
   else
       echo "Failed group 293; see logs/g293.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 293"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 297"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_09-pt5m-B-flat-g297-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 297"

else if ( -d "$batch_dir/working/g297" ) then
   echo "Work folder already exists; inspect logs/g297.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 297: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g297"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g297"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_09" "0546338" "0546343" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g297.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g297.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_09-pt5m-B-flat-g297-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 297"
   else
       echo "Failed group 297; see logs/g297.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 297"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 301"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_08-pt5m-B-flat-g301-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 301"

else if ( -d "$batch_dir/working/g301" ) then
   echo "Work folder already exists; inspect logs/g301.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 301: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g301"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g301"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_08" "0546024" "0546029" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g301.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g301.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_08-pt5m-B-flat-g301-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 301"
   else
       echo "Failed group 301; see logs/g301.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 301"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 305"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_07-pt5m-B-flat-g305-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 305"

else if ( -d "$batch_dir/working/g305" ) then
   echo "Work folder already exists; inspect logs/g305.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 305: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g305"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g305"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_07" "0545697" "0545702" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g305.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g305.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_07-pt5m-B-flat-g305-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 305"
   else
       echo "Failed group 305; see logs/g305.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 305"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 309"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_04-pt5m-B-flat-g309-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 309"

else if ( -d "$batch_dir/working/g309" ) then
   echo "Work folder already exists; inspect logs/g309.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 309: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g309"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g309"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_04" "0545545" "0545550" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g309.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g309.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_04-pt5m-B-flat-g309-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 309"
   else
       echo "Failed group 309; see logs/g309.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 309"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 313"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-C-flat-g313-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 313"

else if ( -d "$batch_dir/working/g313" ) then
   echo "Work folder already exists; inspect logs/g313.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits" ) then
   echo "Missing flat for group 313: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits"

else
   mkdir "$batch_dir/working/g313"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g313"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_24" "0034" "0034" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits" >&! "$batch_dir/logs/g313.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits" "$batch_dir/logs/g313.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-C-flat-g313-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 313"
   else
       echo "Failed group 313; see logs/g313.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 313"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 314"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-C-flat-g314-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 314"

else if ( -d "$batch_dir/working/g314" ) then
   echo "Work folder already exists; inspect logs/g314.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits" ) then
   echo "Missing flat for group 314: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits"

else
   mkdir "$batch_dir/working/g314"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g314"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_24" "0035" "0035" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits" >&! "$batch_dir/logs/g314.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits" "$batch_dir/logs/g314.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-C-flat-g314-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 314"
   else
       echo "Failed group 314; see logs/g314.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 314"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 315"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-V-flat-g315-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 315"

else if ( -d "$batch_dir/working/g315" ) then
   echo "Work folder already exists; inspect logs/g315.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 315: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g315"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g315"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_24" "0036" "0036" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g315.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g315.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-V-flat-g315-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 315"
   else
       echo "Failed group 315; see logs/g315.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 315"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 316"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-V-flat-g316-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 316"

else if ( -d "$batch_dir/working/g316" ) then
   echo "Work folder already exists; inspect logs/g316.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 316: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g316"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g316"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_24" "0037" "0037" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g316.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g316.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-V-flat-g316-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 316"
   else
       echo "Failed group 316; see logs/g316.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 316"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 317"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-V-flat-g317-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 317"

else if ( -d "$batch_dir/working/g317" ) then
   echo "Work folder already exists; inspect logs/g317.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 317: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g317"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g317"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_24" "0038" "0046" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g317.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g317.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-V-flat-g317-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 317"
   else
       echo "Failed group 317; see logs/g317.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 317"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 318"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-V-flat-g318-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 318"

else if ( -d "$batch_dir/working/g318" ) then
   echo "Work folder already exists; inspect logs/g318.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 318: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g318"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g318"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_24" "0063" "0078" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g318.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g318.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-V-flat-g318-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 318"
   else
       echo "Failed group 318; see logs/g318.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 318"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 319"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-B-flat-g319-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 319"

else if ( -d "$batch_dir/working/g319" ) then
   echo "Work folder already exists; inspect logs/g319.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 319: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g319"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g319"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_24" "0047" "0054" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g319.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g319.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-B-flat-g319-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 319"
   else
       echo "Failed group 319; see logs/g319.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 319"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 320"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-R-flat-g320-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 320"

else if ( -d "$batch_dir/working/g320" ) then
   echo "Work folder already exists; inspect logs/g320.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 320: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g320"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g320"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_24" "0055" "0062" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g320.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g320.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_24-east-14-R-flat-g320-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 320"
   else
       echo "Failed group 320; see logs/g320.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 320"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 321"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_23-pt5m-B-flat-g321-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 321"

else if ( -d "$batch_dir/working/g321" ) then
   echo "Work folder already exists; inspect logs/g321.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 321: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g321"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g321"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_23" "0545067" "0545072" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g321.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g321.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_23-pt5m-B-flat-g321-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 321"
   else
       echo "Failed group 321; see logs/g321.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 321"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 325"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_20-pt5m-B-flat-g325-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 325"

else if ( -d "$batch_dir/working/g325" ) then
   echo "Work folder already exists; inspect logs/g325.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 325: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g325"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g325"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_20" "0543824" "0543829" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g325.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g325.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_20-pt5m-B-flat-g325-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 325"
   else
       echo "Failed group 325; see logs/g325.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 325"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 327"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_20-pt5m-R-flat-g327-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 327"

else if ( -d "$batch_dir/working/g327" ) then
   echo "Work folder already exists; inspect logs/g327.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 327: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g327"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g327"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_20" "0543835" "0543839" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g327.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g327.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_20-pt5m-R-flat-g327-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 327"
   else
       echo "Failed group 327; see logs/g327.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 327"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 329"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_18-pt5m-B-flat-g329-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 329"

else if ( -d "$batch_dir/working/g329" ) then
   echo "Work folder already exists; inspect logs/g329.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 329: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g329"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g329"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_18" "0543313" "0543318" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g329.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g329.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_18-pt5m-B-flat-g329-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 329"
   else
       echo "Failed group 329; see logs/g329.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 329"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 330"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_18-pt5m-V-flat-g330-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 330"

else if ( -d "$batch_dir/working/g330" ) then
   echo "Work folder already exists; inspect logs/g330.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 330: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g330"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g330"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_18" "0543319" "0543323" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g330.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g330.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_18-pt5m-V-flat-g330-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 330"
   else
       echo "Failed group 330; see logs/g330.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 330"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 331"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_18-pt5m-R-flat-g331-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 331"

else if ( -d "$batch_dir/working/g331" ) then
   echo "Work folder already exists; inspect logs/g331.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 331: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g331"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g331"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_18" "0543324" "0543328" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g331.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g331.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_18-pt5m-R-flat-g331-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 331"
   else
       echo "Failed group 331; see logs/g331.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 331"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 332"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_18-pt5m-I-flat-g332-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 332"

else if ( -d "$batch_dir/working/g332" ) then
   echo "Work folder already exists; inspect logs/g332.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 332: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g332"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g332"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_18" "0543329" "0543333" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g332.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g332.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_18-pt5m-I-flat-g332-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 332"
   else
       echo "Failed group 332; see logs/g332.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 332"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 333"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_15-pt5m-B-flat-g333-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 333"

else if ( -d "$batch_dir/working/g333" ) then
   echo "Work folder already exists; inspect logs/g333.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 333: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g333"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g333"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_15" "0542305" "0542310" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g333.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g333.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_15-pt5m-B-flat-g333-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 333"
   else
       echo "Failed group 333; see logs/g333.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 333"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 334"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_15-pt5m-V-flat-g334-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 334"

else if ( -d "$batch_dir/working/g334" ) then
   echo "Work folder already exists; inspect logs/g334.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 334: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g334"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g334"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_15" "0542311" "0542315" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g334.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g334.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_15-pt5m-V-flat-g334-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 334"
   else
       echo "Failed group 334; see logs/g334.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 334"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 337"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_13-pt5m-B-flat-g337-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 337"

else if ( -d "$batch_dir/working/g337" ) then
   echo "Work folder already exists; inspect logs/g337.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 337: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g337"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g337"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_13" "0541884" "0541889" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g337.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g337.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_13-pt5m-B-flat-g337-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 337"
   else
       echo "Failed group 337; see logs/g337.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 337"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 338"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_13-pt5m-V-flat-g338-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 338"

else if ( -d "$batch_dir/working/g338" ) then
   echo "Work folder already exists; inspect logs/g338.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 338: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g338"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g338"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_13" "0541890" "0541894" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g338.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g338.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_13-pt5m-V-flat-g338-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 338"
   else
       echo "Failed group 338; see logs/g338.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 338"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 340"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_13-pt5m-I-flat-g340-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 340"

else if ( -d "$batch_dir/working/g340" ) then
   echo "Work folder already exists; inspect logs/g340.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 340: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g340"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g340"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_13" "0541900" "0541904" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g340.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g340.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_13-pt5m-I-flat-g340-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 340"
   else
       echo "Failed group 340; see logs/g340.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 340"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 341"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_12-pt5m-B-flat-g341-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 341"

else if ( -d "$batch_dir/working/g341" ) then
   echo "Work folder already exists; inspect logs/g341.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 341: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g341"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g341"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_12" "0541372" "0541377" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g341.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g341.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_12-pt5m-B-flat-g341-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 341"
   else
       echo "Failed group 341; see logs/g341.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 341"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 342"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_12-pt5m-V-flat-g342-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 342"

else if ( -d "$batch_dir/working/g342" ) then
   echo "Work folder already exists; inspect logs/g342.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 342: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g342"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g342"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_12" "0541378" "0541382" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g342.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g342.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_12-pt5m-V-flat-g342-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 342"
   else
       echo "Failed group 342; see logs/g342.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 342"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 345"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_11-pt5m-B-flat-g345-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 345"

else if ( -d "$batch_dir/working/g345" ) then
   echo "Work folder already exists; inspect logs/g345.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 345: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g345"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g345"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_11" "0541069" "0541074" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g345.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g345.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_11-pt5m-B-flat-g345-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 345"
   else
       echo "Failed group 345; see logs/g345.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 345"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 349"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_10-pt5m-B-flat-g349-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 349"

else if ( -d "$batch_dir/working/g349" ) then
   echo "Work folder already exists; inspect logs/g349.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 349: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g349"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g349"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_10" "0540629" "0540634" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g349.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g349.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_10-pt5m-B-flat-g349-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 349"
   else
       echo "Failed group 349; see logs/g349.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 349"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 353"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_06-pt5m-B-flat-g353-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 353"

else if ( -d "$batch_dir/working/g353" ) then
   echo "Work folder already exists; inspect logs/g353.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 353: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g353"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g353"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_06" "0540296" "0540296" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g353.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g353.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_06-pt5m-B-flat-g353-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 353"
   else
       echo "Failed group 353; see logs/g353.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 353"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 354"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_04-pt5m-B-flat-g354-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 354"

else if ( -d "$batch_dir/working/g354" ) then
   echo "Work folder already exists; inspect logs/g354.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 354: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g354"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g354"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_04" "0539911" "0539916" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g354.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g354.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_04-pt5m-B-flat-g354-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 354"
   else
       echo "Failed group 354; see logs/g354.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 354"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 355"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_04-pt5m-V-flat-g355-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 355"

else if ( -d "$batch_dir/working/g355" ) then
   echo "Work folder already exists; inspect logs/g355.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 355: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g355"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g355"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_04" "0539917" "0539921" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g355.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g355.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_04-pt5m-V-flat-g355-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 355"
   else
       echo "Failed group 355; see logs/g355.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 355"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 358"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_02-pt5m-B-flat-g358-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 358"

else if ( -d "$batch_dir/working/g358" ) then
   echo "Work folder already exists; inspect logs/g358.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 358: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g358"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g358"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_02" "0539235" "0539240" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g358.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g358.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_02-pt5m-B-flat-g358-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 358"
   else
       echo "Failed group 358; see logs/g358.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 358"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 362"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_01-pt5m-B-flat-g362-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 362"

else if ( -d "$batch_dir/working/g362" ) then
   echo "Work folder already exists; inspect logs/g362.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 362: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g362"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g362"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_01" "0538866" "0538871" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g362.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g362.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_01-pt5m-B-flat-g362-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 362"
   else
       echo "Failed group 362; see logs/g362.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 362"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 366"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_28-pt5m-B-flat-g366-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 366"

else if ( -d "$batch_dir/working/g366" ) then
   echo "Work folder already exists; inspect logs/g366.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 366: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g366"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g366"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_28" "0538445" "0538450" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g366.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g366.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_28-pt5m-B-flat-g366-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 366"
   else
       echo "Failed group 366; see logs/g366.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 366"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 367"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_28-pt5m-V-flat-g367-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 367"

else if ( -d "$batch_dir/working/g367" ) then
   echo "Work folder already exists; inspect logs/g367.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 367: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g367"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g367"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_28" "0538451" "0538455" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g367.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g367.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_28-pt5m-V-flat-g367-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 367"
   else
       echo "Failed group 367; see logs/g367.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 367"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 370"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_26-pt5m-B-flat-g370-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 370"

else if ( -d "$batch_dir/working/g370" ) then
   echo "Work folder already exists; inspect logs/g370.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 370: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g370"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g370"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_26" "0536997" "0537002" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g370.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g370.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_26-pt5m-B-flat-g370-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 370"
   else
       echo "Failed group 370; see logs/g370.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 370"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 374"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_25-far-east-16-B-flat-g374-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 374"

else if ( -d "$batch_dir/working/g374" ) then
   echo "Work folder already exists; inspect logs/g374.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" ) then
   echo "Missing flat for group 374: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits"

else
   mkdir "$batch_dir/working/g374"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g374"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_02_25" "0056" "0057" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" >&! "$batch_dir/logs/g374.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" "$batch_dir/logs/g374.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_25-far-east-16-B-flat-g374-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 374"
   else
       echo "Failed group 374; see logs/g374.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 374"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 375"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_25-far-east-16-B-flat-g375-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 375"

else if ( -d "$batch_dir/working/g375" ) then
   echo "Work folder already exists; inspect logs/g375.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" ) then
   echo "Missing flat for group 375: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits"

else
   mkdir "$batch_dir/working/g375"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g375"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_02_25" "0058" "0061" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" >&! "$batch_dir/logs/g375.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" "$batch_dir/logs/g375.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_25-far-east-16-B-flat-g375-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 375"
   else
       echo "Failed group 375; see logs/g375.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 375"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 376"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_25-far-east-16-V-flat-g376-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 376"

else if ( -d "$batch_dir/working/g376" ) then
   echo "Work folder already exists; inspect logs/g376.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" ) then
   echo "Missing flat for group 376: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits"

else
   mkdir "$batch_dir/working/g376"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g376"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_02_25" "0062" "0065" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" >&! "$batch_dir/logs/g376.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" "$batch_dir/logs/g376.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_25-far-east-16-V-flat-g376-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 376"
   else
       echo "Failed group 376; see logs/g376.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 376"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 377"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_25-far-east-16-r-flat-g377-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 377"

else if ( -d "$batch_dir/working/g377" ) then
   echo "Work folder already exists; inspect logs/g377.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" ) then
   echo "Missing flat for group 377: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits"

else
   mkdir "$batch_dir/working/g377"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g377"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_02_25" "0066" "0069" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" >&! "$batch_dir/logs/g377.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" "$batch_dir/logs/g377.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_25-far-east-16-r-flat-g377-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 377"
   else
       echo "Failed group 377; see logs/g377.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 377"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 378"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_24-pt5m-B-flat-g378-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 378"

else if ( -d "$batch_dir/working/g378" ) then
   echo "Work folder already exists; inspect logs/g378.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 378: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g378"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g378"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_24" "0536509" "0536514" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g378.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g378.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_24-pt5m-B-flat-g378-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 378"
   else
       echo "Failed group 378; see logs/g378.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 378"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 380"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_24-pt5m-R-flat-g380-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 380"

else if ( -d "$batch_dir/working/g380" ) then
   echo "Work folder already exists; inspect logs/g380.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 380: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g380"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g380"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_24" "0536520" "0536524" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g380.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g380.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_24-pt5m-R-flat-g380-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 380"
   else
       echo "Failed group 380; see logs/g380.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 380"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 382"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_23-pt5m-B-flat-g382-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 382"

else if ( -d "$batch_dir/working/g382" ) then
   echo "Work folder already exists; inspect logs/g382.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 382: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g382"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g382"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_23" "0536102" "0536107" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g382.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g382.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_23-pt5m-B-flat-g382-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 382"
   else
       echo "Failed group 382; see logs/g382.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 382"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 386"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_22-pt5m-B-flat-g386-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 386"

else if ( -d "$batch_dir/working/g386" ) then
   echo "Work folder already exists; inspect logs/g386.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 386: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g386"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g386"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_22" "0535725" "0535730" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g386.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g386.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_22-pt5m-B-flat-g386-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 386"
   else
       echo "Failed group 386; see logs/g386.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 386"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 387"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_22-pt5m-V-flat-g387-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 387"

else if ( -d "$batch_dir/working/g387" ) then
   echo "Work folder already exists; inspect logs/g387.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 387: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g387"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g387"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_22" "0535731" "0535735" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g387.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g387.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_22-pt5m-V-flat-g387-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 387"
   else
       echo "Failed group 387; see logs/g387.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 387"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 390"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_21-far-east-16-B-flat-g390-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 390"

else if ( -d "$batch_dir/working/g390" ) then
   echo "Work folder already exists; inspect logs/g390.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" ) then
   echo "Missing flat for group 390: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits"

else
   mkdir "$batch_dir/working/g390"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g390"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_02_21" "0053" "0056" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" >&! "$batch_dir/logs/g390.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" "$batch_dir/logs/g390.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_21-far-east-16-B-flat-g390-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 390"
   else
       echo "Failed group 390; see logs/g390.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 390"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 391"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_21-far-east-16-V-flat-g391-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 391"

else if ( -d "$batch_dir/working/g391" ) then
   echo "Work folder already exists; inspect logs/g391.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" ) then
   echo "Missing flat for group 391: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits"

else
   mkdir "$batch_dir/working/g391"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g391"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_02_21" "0057" "0060" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" >&! "$batch_dir/logs/g391.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" "$batch_dir/logs/g391.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_21-far-east-16-V-flat-g391-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 391"
   else
       echo "Failed group 391; see logs/g391.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 391"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 392"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_21-far-east-16-r-flat-g392-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 392"

else if ( -d "$batch_dir/working/g392" ) then
   echo "Work folder already exists; inspect logs/g392.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" ) then
   echo "Missing flat for group 392: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits"

else
   mkdir "$batch_dir/working/g392"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g392"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_02_21" "0061" "0064" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" >&! "$batch_dir/logs/g392.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" "$batch_dir/logs/g392.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_21-far-east-16-r-flat-g392-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 392"
   else
       echo "Failed group 392; see logs/g392.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 392"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 393"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_20-pt5m-B-flat-g393-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 393"

else if ( -d "$batch_dir/working/g393" ) then
   echo "Work folder already exists; inspect logs/g393.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 393: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g393"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g393"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_20" "0535230" "0535235" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g393.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g393.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_20-pt5m-B-flat-g393-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 393"
   else
       echo "Failed group 393; see logs/g393.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 393"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 394"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_20-pt5m-V-flat-g394-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 394"

else if ( -d "$batch_dir/working/g394" ) then
   echo "Work folder already exists; inspect logs/g394.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 394: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g394"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g394"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_20" "0535236" "0535240" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g394.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g394.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_20-pt5m-V-flat-g394-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 394"
   else
       echo "Failed group 394; see logs/g394.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 394"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 395"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_20-pt5m-R-flat-g395-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 395"

else if ( -d "$batch_dir/working/g395" ) then
   echo "Work folder already exists; inspect logs/g395.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 395: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g395"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g395"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_20" "0535241" "0535245" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g395.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g395.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_20-pt5m-R-flat-g395-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 395"
   else
       echo "Failed group 395; see logs/g395.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 395"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 396"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_20-pt5m-I-flat-g396-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 396"

else if ( -d "$batch_dir/working/g396" ) then
   echo "Work folder already exists; inspect logs/g396.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 396: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g396"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g396"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_20" "0535246" "0535250" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g396.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g396.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_20-pt5m-I-flat-g396-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 396"
   else
       echo "Failed group 396; see logs/g396.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 396"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 397"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_19-pt5m-B-flat-g397-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 397"

else if ( -d "$batch_dir/working/g397" ) then
   echo "Work folder already exists; inspect logs/g397.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 397: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g397"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g397"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_19" "0534837" "0534842" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g397.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g397.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_19-pt5m-B-flat-g397-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 397"
   else
       echo "Failed group 397; see logs/g397.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 397"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 398"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_19-pt5m-V-flat-g398-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 398"

else if ( -d "$batch_dir/working/g398" ) then
   echo "Work folder already exists; inspect logs/g398.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 398: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g398"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g398"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_19" "0534843" "0534847" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g398.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g398.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_19-pt5m-V-flat-g398-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 398"
   else
       echo "Failed group 398; see logs/g398.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 398"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 399"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_19-pt5m-R-flat-g399-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 399"

else if ( -d "$batch_dir/working/g399" ) then
   echo "Work folder already exists; inspect logs/g399.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 399: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g399"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g399"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_19" "0534848" "0534852" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g399.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g399.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_19-pt5m-R-flat-g399-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 399"
   else
       echo "Failed group 399; see logs/g399.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 399"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 400"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_19-pt5m-I-flat-g400-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 400"

else if ( -d "$batch_dir/working/g400" ) then
   echo "Work folder already exists; inspect logs/g400.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 400: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g400"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g400"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_19" "0534853" "0534857" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g400.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g400.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_19-pt5m-I-flat-g400-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 400"
   else
       echo "Failed group 400; see logs/g400.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 400"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 401"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_16-pt5m-B-flat-g401-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 401"

else if ( -d "$batch_dir/working/g401" ) then
   echo "Work folder already exists; inspect logs/g401.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 401: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g401"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g401"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_16" "0534377" "0534382" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g401.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g401.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_16-pt5m-B-flat-g401-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 401"
   else
       echo "Failed group 401; see logs/g401.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 401"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 402"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_16-pt5m-V-flat-g402-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 402"

else if ( -d "$batch_dir/working/g402" ) then
   echo "Work folder already exists; inspect logs/g402.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 402: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g402"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g402"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_16" "0534383" "0534387" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g402.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g402.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_16-pt5m-V-flat-g402-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 402"
   else
       echo "Failed group 402; see logs/g402.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 402"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 404"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_16-pt5m-I-flat-g404-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 404"

else if ( -d "$batch_dir/working/g404" ) then
   echo "Work folder already exists; inspect logs/g404.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 404: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g404"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g404"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_16" "0534393" "0534397" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g404.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g404.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_16-pt5m-I-flat-g404-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 404"
   else
       echo "Failed group 404; see logs/g404.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 404"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 405"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_14-west-14-B-flat-g405-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 405"

else if ( -d "$batch_dir/working/g405" ) then
   echo "Work folder already exists; inspect logs/g405.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 405: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g405"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g405"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "west-14" "19_02_14" "0027" "0030" 5.0 "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_B.fits" >&! "$batch_dir/logs/g405.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_B.fits" "$batch_dir/logs/g405.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_14-west-14-B-flat-g405-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 405"
   else
       echo "Failed group 405; see logs/g405.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 405"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 406"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_14-west-14-V-flat-g406-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 406"

else if ( -d "$batch_dir/working/g406" ) then
   echo "Work folder already exists; inspect logs/g406.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 406: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g406"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g406"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "west-14" "19_02_14" "0031" "0034" 5.0 "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_V.fits" >&! "$batch_dir/logs/g406.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_V.fits" "$batch_dir/logs/g406.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_14-west-14-V-flat-g406-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 406"
   else
       echo "Failed group 406; see logs/g406.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 406"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 407"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_14-west-14-R-flat-g407-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 407"

else if ( -d "$batch_dir/working/g407" ) then
   echo "Work folder already exists; inspect logs/g407.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 407: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g407"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g407"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "west-14" "19_02_14" "0035" "0038" 5.0 "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_R.fits" >&! "$batch_dir/logs/g407.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_R.fits" "$batch_dir/logs/g407.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_14-west-14-R-flat-g407-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 407"
   else
       echo "Failed group 407; see logs/g407.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 407"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 408"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_12-pt5m-B-flat-g408-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 408"

else if ( -d "$batch_dir/working/g408" ) then
   echo "Work folder already exists; inspect logs/g408.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 408: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g408"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g408"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_12" "0533972" "0533977" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g408.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g408.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_12-pt5m-B-flat-g408-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 408"
   else
       echo "Failed group 408; see logs/g408.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 408"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 412"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_11-pt5m-B-flat-g412-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 412"

else if ( -d "$batch_dir/working/g412" ) then
   echo "Work folder already exists; inspect logs/g412.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 412: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g412"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g412"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_11" "0533582" "0533587" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g412.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g412.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_11-pt5m-B-flat-g412-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 412"
   else
       echo "Failed group 412; see logs/g412.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 412"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 413"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_11-pt5m-V-flat-g413-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 413"

else if ( -d "$batch_dir/working/g413" ) then
   echo "Work folder already exists; inspect logs/g413.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 413: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g413"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g413"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_11" "0533588" "0533592" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g413.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g413.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_11-pt5m-V-flat-g413-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 413"
   else
       echo "Failed group 413; see logs/g413.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 413"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 416"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_10-pt5m-B-flat-g416-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 416"

else if ( -d "$batch_dir/working/g416" ) then
   echo "Work folder already exists; inspect logs/g416.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 416: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g416"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g416"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_10" "0533013" "0533018" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g416.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g416.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_10-pt5m-B-flat-g416-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 416"
   else
       echo "Failed group 416; see logs/g416.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 416"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 420"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_09-pt5m-B-flat-g420-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 420"

else if ( -d "$batch_dir/working/g420" ) then
   echo "Work folder already exists; inspect logs/g420.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 420: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g420"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g420"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_09" "0532629" "0532634" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g420.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g420.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_09-pt5m-B-flat-g420-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 420"
   else
       echo "Failed group 420; see logs/g420.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 420"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 424"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_08-pt5m-B-flat-g424-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 424"

else if ( -d "$batch_dir/working/g424" ) then
   echo "Work folder already exists; inspect logs/g424.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 424: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g424"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g424"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_08" "0532281" "0532286" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g424.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g424.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_08-pt5m-B-flat-g424-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 424"
   else
       echo "Failed group 424; see logs/g424.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 424"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 428"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_07-east-14-V-flat-g428-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 428"

else if ( -d "$batch_dir/working/g428" ) then
   echo "Work folder already exists; inspect logs/g428.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 428: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g428"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g428"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_02_07" "0530" "0561" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g428.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g428.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_07-east-14-V-flat-g428-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 428"
   else
       echo "Failed group 428; see logs/g428.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 428"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 429"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_07-east-14-B-flat-g429-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 429"

else if ( -d "$batch_dir/working/g429" ) then
   echo "Work folder already exists; inspect logs/g429.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 429: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g429"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g429"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_02_07" "0562" "0593" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g429.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g429.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_07-east-14-B-flat-g429-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 429"
   else
       echo "Failed group 429; see logs/g429.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 429"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 430"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_06-pt5m-B-flat-g430-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 430"

else if ( -d "$batch_dir/working/g430" ) then
   echo "Work folder already exists; inspect logs/g430.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 430: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g430"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g430"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_06" "0531691" "0531696" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g430.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g430.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_06-pt5m-B-flat-g430-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 430"
   else
       echo "Failed group 430; see logs/g430.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 430"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 434"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_05-pt5m-B-flat-g434-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 434"

else if ( -d "$batch_dir/working/g434" ) then
   echo "Work folder already exists; inspect logs/g434.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 434: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g434"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g434"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_05" "0531380" "0531385" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g434.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g434.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_05-pt5m-B-flat-g434-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 434"
   else
       echo "Failed group 434; see logs/g434.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 434"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 438"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_04-pt5m-B-flat-g438-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 438"

else if ( -d "$batch_dir/working/g438" ) then
   echo "Work folder already exists; inspect logs/g438.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 438: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g438"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g438"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_04" "0531098" "0531103" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g438.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g438.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_04-pt5m-B-flat-g438-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 438"
   else
       echo "Failed group 438; see logs/g438.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 438"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 439"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_04-pt5m-V-flat-g439-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 439"

else if ( -d "$batch_dir/working/g439" ) then
   echo "Work folder already exists; inspect logs/g439.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 439: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g439"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g439"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_04" "0531104" "0531108" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g439.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g439.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_04-pt5m-V-flat-g439-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 439"
   else
       echo "Failed group 439; see logs/g439.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 439"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 442"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_04-west-14-B-flat-g442-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 442"

else if ( -d "$batch_dir/working/g442" ) then
   echo "Work folder already exists; inspect logs/g442.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 442: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g442"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g442"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "west-14" "19_02_04" "0476" "0491" 5.0 "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_B.fits" >&! "$batch_dir/logs/g442.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_B.fits" "$batch_dir/logs/g442.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_04-west-14-B-flat-g442-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 442"
   else
       echo "Failed group 442; see logs/g442.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 442"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 443"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_03-pt5m-B-flat-g443-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 443"

else if ( -d "$batch_dir/working/g443" ) then
   echo "Work folder already exists; inspect logs/g443.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 443: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g443"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g443"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_03" "0530741" "0530746" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g443.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g443.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_03-pt5m-B-flat-g443-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 443"
   else
       echo "Failed group 443; see logs/g443.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 443"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 447"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_02-pt5m-B-flat-g447-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 447"

else if ( -d "$batch_dir/working/g447" ) then
   echo "Work folder already exists; inspect logs/g447.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 447: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g447"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g447"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_02" "0530466" "0530471" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g447.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g447.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_02-pt5m-B-flat-g447-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 447"
   else
       echo "Failed group 447; see logs/g447.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 447"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 449"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_02-west-14-B-flat-g449-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 449"

else if ( -d "$batch_dir/working/g449" ) then
   echo "Work folder already exists; inspect logs/g449.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 449: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g449"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g449"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "west-14" "19_02_02" "0195" "0203" 5.0 "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_B.fits" >&! "$batch_dir/logs/g449.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_B.fits" "$batch_dir/logs/g449.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_02-west-14-B-flat-g449-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 449"
   else
       echo "Failed group 449; see logs/g449.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 449"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 450"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_02-west-14-V-flat-g450-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 450"

else if ( -d "$batch_dir/working/g450" ) then
   echo "Work folder already exists; inspect logs/g450.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 450: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g450"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g450"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "west-14" "19_02_02" "0204" "0207" 5.0 "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_V.fits" >&! "$batch_dir/logs/g450.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_V.fits" "$batch_dir/logs/g450.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_02-west-14-V-flat-g450-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 450"
   else
       echo "Failed group 450; see logs/g450.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 450"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 451"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_02-west-14-R-flat-g451-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 451"

else if ( -d "$batch_dir/working/g451" ) then
   echo "Work folder already exists; inspect logs/g451.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 451: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g451"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g451"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "west-14" "19_02_02" "0208" "0211" 5.0 "/home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_R.fits" >&! "$batch_dir/logs/g451.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_west-14_19_01_17_R.fits" "$batch_dir/logs/g451.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_02-west-14-R-flat-g451-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 451"
   else
       echo "Failed group 451; see logs/g451.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 451"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 452"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_01-pt5m-B-flat-g452-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 452"

else if ( -d "$batch_dir/working/g452" ) then
   echo "Work folder already exists; inspect logs/g452.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 452: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g452"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g452"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_01" "0530319" "0530324" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g452.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g452.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_01-pt5m-B-flat-g452-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 452"
   else
       echo "Failed group 452; see logs/g452.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 452"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 454"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_31-pt5m-B-flat-g454-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 454"

else if ( -d "$batch_dir/working/g454" ) then
   echo "Work folder already exists; inspect logs/g454.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 454: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g454"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g454"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_31" "0530106" "0530111" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g454.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g454.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_31-pt5m-B-flat-g454-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 454"
   else
       echo "Failed group 454; see logs/g454.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 454"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 458"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_30-pt5m-B-flat-g458-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 458"

else if ( -d "$batch_dir/working/g458" ) then
   echo "Work folder already exists; inspect logs/g458.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 458: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g458"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g458"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_30" "0529741" "0529746" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g458.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g458.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_30-pt5m-B-flat-g458-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 458"
   else
       echo "Failed group 458; see logs/g458.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 458"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 462"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_29-far-east-16-V-flat-g462-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 462"

else if ( -d "$batch_dir/working/g462" ) then
   echo "Work folder already exists; inspect logs/g462.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" ) then
   echo "Missing flat for group 462: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits"

else
   mkdir "$batch_dir/working/g462"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g462"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_01_29" "0048" "0063" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" >&! "$batch_dir/logs/g462.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" "$batch_dir/logs/g462.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_29-far-east-16-V-flat-g462-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 462"
   else
       echo "Failed group 462; see logs/g462.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 462"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 463"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_29-far-east-16-B-flat-g463-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 463"

else if ( -d "$batch_dir/working/g463" ) then
   echo "Work folder already exists; inspect logs/g463.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" ) then
   echo "Missing flat for group 463: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits"

else
   mkdir "$batch_dir/working/g463"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g463"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_01_29" "0064" "0079" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" >&! "$batch_dir/logs/g463.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" "$batch_dir/logs/g463.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_29-far-east-16-B-flat-g463-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 463"
   else
       echo "Failed group 463; see logs/g463.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 463"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 464"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_29-far-east-16-r-flat-g464-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 464"

else if ( -d "$batch_dir/working/g464" ) then
   echo "Work folder already exists; inspect logs/g464.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" ) then
   echo "Missing flat for group 464: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits"

else
   mkdir "$batch_dir/working/g464"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g464"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_01_29" "0080" "0087" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" >&! "$batch_dir/logs/g464.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" "$batch_dir/logs/g464.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_29-far-east-16-r-flat-g464-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 464"
   else
       echo "Failed group 464; see logs/g464.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 464"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 465"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_29-pt5m-B-flat-g465-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 465"

else if ( -d "$batch_dir/working/g465" ) then
   echo "Work folder already exists; inspect logs/g465.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 465: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g465"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g465"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_29" "0529382" "0529387" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g465.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g465.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_29-pt5m-B-flat-g465-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 465"
   else
       echo "Failed group 465; see logs/g465.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 465"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 469"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_28-draco2-V-flat-g469-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 469"

else if ( -d "$batch_dir/working/g469" ) then
   echo "Work folder already exists; inspect logs/g469.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" ) then
   echo "Missing flat for group 469: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits"

else
   mkdir "$batch_dir/working/g469"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g469"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "draco2" "19_01_28" "0174" "0182" 5.0 "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" >&! "$batch_dir/logs/g469.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" "$batch_dir/logs/g469.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_28-draco2-V-flat-g469-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 469"
   else
       echo "Failed group 469; see logs/g469.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 469"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 470"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_28-draco2-V-flat-g470-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 470"

else if ( -d "$batch_dir/working/g470" ) then
   echo "Work folder already exists; inspect logs/g470.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" ) then
   echo "Missing flat for group 470: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits"

else
   mkdir "$batch_dir/working/g470"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g470"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "draco2" "19_01_28" "0200" "0215" 5.0 "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" >&! "$batch_dir/logs/g470.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" "$batch_dir/logs/g470.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_28-draco2-V-flat-g470-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 470"
   else
       echo "Failed group 470; see logs/g470.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 470"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 471"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_28-draco2-B-flat-g471-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 471"

else if ( -d "$batch_dir/working/g471" ) then
   echo "Work folder already exists; inspect logs/g471.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_B.fits" ) then
   echo "Missing flat for group 471: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_B.fits"

else
   mkdir "$batch_dir/working/g471"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g471"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "draco2" "19_01_28" "0183" "0191" 5.0 "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_B.fits" >&! "$batch_dir/logs/g471.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_B.fits" "$batch_dir/logs/g471.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_28-draco2-B-flat-g471-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 471"
   else
       echo "Failed group 471; see logs/g471.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 471"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 472"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_28-draco2-r-flat-g472-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 472"

else if ( -d "$batch_dir/working/g472" ) then
   echo "Work folder already exists; inspect logs/g472.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_r.fits" ) then
   echo "Missing flat for group 472: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_r.fits"

else
   mkdir "$batch_dir/working/g472"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g472"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "draco2" "19_01_28" "0192" "0199" 5.0 "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_r.fits" >&! "$batch_dir/logs/g472.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_r.fits" "$batch_dir/logs/g472.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_28-draco2-r-flat-g472-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 472"
   else
       echo "Failed group 472; see logs/g472.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 472"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 473"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_28-pt5m-B-flat-g473-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 473"

else if ( -d "$batch_dir/working/g473" ) then
   echo "Work folder already exists; inspect logs/g473.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 473: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g473"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g473"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_28" "0528986" "0528991" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g473.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g473.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_28-pt5m-B-flat-g473-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 473"
   else
       echo "Failed group 473; see logs/g473.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 473"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 477"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_27-draco2-V-flat-g477-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 477"

else if ( -d "$batch_dir/working/g477" ) then
   echo "Work folder already exists; inspect logs/g477.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" ) then
   echo "Missing flat for group 477: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits"

else
   mkdir "$batch_dir/working/g477"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g477"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "draco2" "19_01_27" "0061" "0062" 5.0 "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" >&! "$batch_dir/logs/g477.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" "$batch_dir/logs/g477.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_27-draco2-V-flat-g477-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 477"
   else
       echo "Failed group 477; see logs/g477.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 477"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 478"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_27-pt5m-B-flat-g478-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 478"

else if ( -d "$batch_dir/working/g478" ) then
   echo "Work folder already exists; inspect logs/g478.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 478: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g478"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g478"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_27" "0528671" "0528676" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g478.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g478.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_27-pt5m-B-flat-g478-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 478"
   else
       echo "Failed group 478; see logs/g478.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 478"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 482"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_26-pt5m-B-flat-g482-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 482"

else if ( -d "$batch_dir/working/g482" ) then
   echo "Work folder already exists; inspect logs/g482.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 482: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g482"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g482"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_26" "0528331" "0528336" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g482.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g482.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_26-pt5m-B-flat-g482-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 482"
   else
       echo "Failed group 482; see logs/g482.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 482"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 486"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_24-pt5m-B-flat-g486-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 486"

else if ( -d "$batch_dir/working/g486" ) then
   echo "Work folder already exists; inspect logs/g486.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 486: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g486"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g486"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_24" "0527765" "0527770" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g486.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g486.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_24-pt5m-B-flat-g486-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 486"
   else
       echo "Failed group 486; see logs/g486.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 486"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 487"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_24-pt5m-V-flat-g487-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 487"

else if ( -d "$batch_dir/working/g487" ) then
   echo "Work folder already exists; inspect logs/g487.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 487: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g487"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g487"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_24" "0527771" "0527775" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g487.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g487.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_24-pt5m-V-flat-g487-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 487"
   else
       echo "Failed group 487; see logs/g487.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 487"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 490"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_23-draco2-V-flat-g490-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 490"

else if ( -d "$batch_dir/working/g490" ) then
   echo "Work folder already exists; inspect logs/g490.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" ) then
   echo "Missing flat for group 490: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits"

else
   mkdir "$batch_dir/working/g490"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g490"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "draco2" "19_01_23" "0313" "0320" 5.0 "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" >&! "$batch_dir/logs/g490.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" "$batch_dir/logs/g490.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_23-draco2-V-flat-g490-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 490"
   else
       echo "Failed group 490; see logs/g490.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 490"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 491"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_23-draco2-B-flat-g491-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 491"

else if ( -d "$batch_dir/working/g491" ) then
   echo "Work folder already exists; inspect logs/g491.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_B.fits" ) then
   echo "Missing flat for group 491: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_B.fits"

else
   mkdir "$batch_dir/working/g491"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g491"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "draco2" "19_01_23" "0321" "0328" 5.0 "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_B.fits" >&! "$batch_dir/logs/g491.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_B.fits" "$batch_dir/logs/g491.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_23-draco2-B-flat-g491-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 491"
   else
       echo "Failed group 491; see logs/g491.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 491"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 492"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_22-far-east-16-B-flat-g492-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 492"

else if ( -d "$batch_dir/working/g492" ) then
   echo "Work folder already exists; inspect logs/g492.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" ) then
   echo "Missing flat for group 492: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits"

else
   mkdir "$batch_dir/working/g492"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g492"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_01_22" "0148" "0152" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" >&! "$batch_dir/logs/g492.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" "$batch_dir/logs/g492.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_22-far-east-16-B-flat-g492-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 492"
   else
       echo "Failed group 492; see logs/g492.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 492"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 493"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_22-far-east-16-V-flat-g493-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 493"

else if ( -d "$batch_dir/working/g493" ) then
   echo "Work folder already exists; inspect logs/g493.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" ) then
   echo "Missing flat for group 493: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits"

else
   mkdir "$batch_dir/working/g493"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g493"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_01_22" "0153" "0156" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" >&! "$batch_dir/logs/g493.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" "$batch_dir/logs/g493.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_22-far-east-16-V-flat-g493-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 493"
   else
       echo "Failed group 493; see logs/g493.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 493"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 494"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_22-far-east-16-r-flat-g494-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 494"

else if ( -d "$batch_dir/working/g494" ) then
   echo "Work folder already exists; inspect logs/g494.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" ) then
   echo "Missing flat for group 494: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits"

else
   mkdir "$batch_dir/working/g494"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g494"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_01_22" "0157" "0161" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" >&! "$batch_dir/logs/g494.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" "$batch_dir/logs/g494.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_22-far-east-16-r-flat-g494-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 494"
   else
       echo "Failed group 494; see logs/g494.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 494"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 495"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_22-pt5m-B-flat-g495-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 495"

else if ( -d "$batch_dir/working/g495" ) then
   echo "Work folder already exists; inspect logs/g495.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 495: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g495"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g495"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_22" "0526884" "0526889" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g495.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g495.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_22-pt5m-B-flat-g495-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 495"
   else
       echo "Failed group 495; see logs/g495.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 495"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 496"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_22-pt5m-V-flat-g496-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 496"

else if ( -d "$batch_dir/working/g496" ) then
   echo "Work folder already exists; inspect logs/g496.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 496: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g496"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g496"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_22" "0526890" "0526894" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g496.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g496.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_22-pt5m-V-flat-g496-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 496"
   else
       echo "Failed group 496; see logs/g496.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 496"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 497"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_22-pt5m-R-flat-g497-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 497"

else if ( -d "$batch_dir/working/g497" ) then
   echo "Work folder already exists; inspect logs/g497.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 497: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g497"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g497"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_22" "0526895" "0526899" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g497.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g497.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_22-pt5m-R-flat-g497-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 497"
   else
       echo "Failed group 497; see logs/g497.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 497"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 498"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_22-pt5m-I-flat-g498-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 498"

else if ( -d "$batch_dir/working/g498" ) then
   echo "Work folder already exists; inspect logs/g498.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 498: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g498"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g498"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_22" "0526900" "0526904" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g498.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g498.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_22-pt5m-I-flat-g498-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 498"
   else
       echo "Failed group 498; see logs/g498.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 498"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 499"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_19-pt5m-B-flat-g499-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 499"

else if ( -d "$batch_dir/working/g499" ) then
   echo "Work folder already exists; inspect logs/g499.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 499: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g499"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g499"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_19" "0526418" "0526423" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g499.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g499.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_19-pt5m-B-flat-g499-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 499"
   else
       echo "Failed group 499; see logs/g499.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 499"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 500"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_19-pt5m-V-flat-g500-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 500"

else if ( -d "$batch_dir/working/g500" ) then
   echo "Work folder already exists; inspect logs/g500.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 500: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g500"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g500"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_19" "0526424" "0526428" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g500.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g500.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_19-pt5m-V-flat-g500-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 500"
   else
       echo "Failed group 500; see logs/g500.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 500"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 504"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_15-pt5m-B-flat-g504-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 504"

else if ( -d "$batch_dir/working/g504" ) then
   echo "Work folder already exists; inspect logs/g504.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 504: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g504"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g504"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_15" "0525696" "0525701" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g504.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g504.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_15-pt5m-B-flat-g504-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 504"
   else
       echo "Failed group 504; see logs/g504.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 504"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 505"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_15-pt5m-V-flat-g505-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 505"

else if ( -d "$batch_dir/working/g505" ) then
   echo "Work folder already exists; inspect logs/g505.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 505: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g505"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g505"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_15" "0525702" "0525706" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g505.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g505.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_15-pt5m-V-flat-g505-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 505"
   else
       echo "Failed group 505; see logs/g505.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 505"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 508"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_14-pt5m-B-flat-g508-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 508"

else if ( -d "$batch_dir/working/g508" ) then
   echo "Work folder already exists; inspect logs/g508.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 508: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g508"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g508"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_14" "0525333" "0525338" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g508.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g508.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_14-pt5m-B-flat-g508-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 508"
   else
       echo "Failed group 508; see logs/g508.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 508"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 512"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_13-pt5m-B-flat-g512-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 512"

else if ( -d "$batch_dir/working/g512" ) then
   echo "Work folder already exists; inspect logs/g512.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 512: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g512"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g512"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_13" "0525086" "0525091" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g512.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g512.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_13-pt5m-B-flat-g512-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 512"
   else
       echo "Failed group 512; see logs/g512.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 512"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 516"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_12-pt5m-B-flat-g516-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 516"

else if ( -d "$batch_dir/working/g516" ) then
   echo "Work folder already exists; inspect logs/g516.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 516: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g516"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g516"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_12" "0524711" "0524716" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g516.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g516.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_12-pt5m-B-flat-g516-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 516"
   else
       echo "Failed group 516; see logs/g516.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 516"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 517"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_12-pt5m-V-flat-g517-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 517"

else if ( -d "$batch_dir/working/g517" ) then
   echo "Work folder already exists; inspect logs/g517.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 517: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g517"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g517"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_12" "0524717" "0524721" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g517.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g517.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_12-pt5m-V-flat-g517-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 517"
   else
       echo "Failed group 517; see logs/g517.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 517"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 520"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_11-pt5m-B-flat-g520-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 520"

else if ( -d "$batch_dir/working/g520" ) then
   echo "Work folder already exists; inspect logs/g520.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 520: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g520"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g520"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_11" "0524242" "0524247" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g520.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g520.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_11-pt5m-B-flat-g520-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 520"
   else
       echo "Failed group 520; see logs/g520.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 520"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 524"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_10_14-pt5m-V-flat-g524-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 524"

else if ( -d "$batch_dir/working/g524" ) then
   echo "Work folder already exists; inspect logs/g524.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 524: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g524"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g524"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_10_14" "0590533" "0590536" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g524.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g524.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_10_14-pt5m-V-flat-g524-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 524"
   else
       echo "Failed group 524; see logs/g524.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 524"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 527"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_25-pt5m-B-flat-g527-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 527"

else if ( -d "$batch_dir/working/g527" ) then
   echo "Work folder already exists; inspect logs/g527.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 527: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g527"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g527"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_25" "0563897" "0563901" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g527.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g527.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_25-pt5m-B-flat-g527-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 527"
   else
       echo "Failed group 527; see logs/g527.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 527"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 531"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_21-pt5m-B-flat-g531-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 531"

else if ( -d "$batch_dir/working/g531" ) then
   echo "Work folder already exists; inspect logs/g531.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 531: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g531"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g531"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_21" "0563128" "0563132" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g531.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g531.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_21-pt5m-B-flat-g531-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 531"
   else
       echo "Failed group 531; see logs/g531.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 531"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 535"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_20-pt5m-B-flat-g535-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 535"

else if ( -d "$batch_dir/working/g535" ) then
   echo "Work folder already exists; inspect logs/g535.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 535: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g535"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g535"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_20" "0562817" "0562821" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g535.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g535.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_20-pt5m-B-flat-g535-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 535"
   else
       echo "Failed group 535; see logs/g535.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 535"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 538"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_16-pt5m-V-flat-g538-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 538"

else if ( -d "$batch_dir/working/g538" ) then
   echo "Work folder already exists; inspect logs/g538.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 538: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g538"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g538"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_16" "0561997" "0562002" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g538.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g538.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_16-pt5m-V-flat-g538-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 538"
   else
       echo "Failed group 538; see logs/g538.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 538"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 539"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_16-pt5m-B-flat-g539-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 539"

else if ( -d "$batch_dir/working/g539" ) then
   echo "Work folder already exists; inspect logs/g539.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 539: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g539"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g539"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_16" "0562003" "0562006" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g539.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g539.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_16-pt5m-B-flat-g539-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 539"
   else
       echo "Failed group 539; see logs/g539.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 539"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 541"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_14-pt5m-B-flat-g541-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 541"

else if ( -d "$batch_dir/working/g541" ) then
   echo "Work folder already exists; inspect logs/g541.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 541: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g541"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g541"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_14" "0561268" "0561272" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g541.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g541.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_14-pt5m-B-flat-g541-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 541"
   else
       echo "Failed group 541; see logs/g541.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 541"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 545"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_12-pt5m-B-flat-g545-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 545"

else if ( -d "$batch_dir/working/g545" ) then
   echo "Work folder already exists; inspect logs/g545.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 545: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g545"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g545"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_12" "0560561" "0560565" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g545.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g545.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_12-pt5m-B-flat-g545-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 545"
   else
       echo "Failed group 545; see logs/g545.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 545"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 548"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_05_14-east-14-V-flat-g548-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 548"

else if ( -d "$batch_dir/working/g548" ) then
   echo "Work folder already exists; inspect logs/g548.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 548: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g548"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g548"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_05_14" "0001" "0019" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g548.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g548.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_05_14-east-14-V-flat-g548-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 548"
   else
       echo "Failed group 548; see logs/g548.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 548"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 549"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_05_05-east-14-V-flat-g549-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 549"

else if ( -d "$batch_dir/working/g549" ) then
   echo "Work folder already exists; inspect logs/g549.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 549: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g549"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g549"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_05_05" "0003" "0014" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g549.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g549.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_05_05-east-14-V-flat-g549-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 549"
   else
       echo "Failed group 549; see logs/g549.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 549"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 550"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_05_05-east-14-B-flat-g550-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 550"

else if ( -d "$batch_dir/working/g550" ) then
   echo "Work folder already exists; inspect logs/g550.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 550: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g550"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g550"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_05_05" "0015" "0026" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g550.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g550.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_05_05-east-14-B-flat-g550-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 550"
   else
       echo "Failed group 550; see logs/g550.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 550"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 551"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_05_05-east-14-R-flat-g551-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 551"

else if ( -d "$batch_dir/working/g551" ) then
   echo "Work folder already exists; inspect logs/g551.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 551: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g551"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g551"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_05_05" "0027" "0038" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g551.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g551.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_05_05-east-14-R-flat-g551-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 551"
   else
       echo "Failed group 551; see logs/g551.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 551"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 552"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_05_03-east-14-V-flat-g552-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 552"

else if ( -d "$batch_dir/working/g552" ) then
   echo "Work folder already exists; inspect logs/g552.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 552: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g552"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g552"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_05_03" "0001" "0008" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g552.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g552.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_05_03-east-14-V-flat-g552-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 552"
   else
       echo "Failed group 552; see logs/g552.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 552"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 553"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_05_03-east-14-B-flat-g553-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 553"

else if ( -d "$batch_dir/working/g553" ) then
   echo "Work folder already exists; inspect logs/g553.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 553: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g553"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g553"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_05_03" "0009" "0020" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g553.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g553.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_05_03-east-14-B-flat-g553-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 553"
   else
       echo "Failed group 553; see logs/g553.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 553"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 554"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_05_03-east-14-R-flat-g554-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 554"

else if ( -d "$batch_dir/working/g554" ) then
   echo "Work folder already exists; inspect logs/g554.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 554: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g554"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g554"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_05_03" "0021" "0023" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g554.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g554.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_05_03-east-14-R-flat-g554-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 554"
   else
       echo "Failed group 554; see logs/g554.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 554"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 555"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_29-east-14-V-flat-g555-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 555"

else if ( -d "$batch_dir/working/g555" ) then
   echo "Work folder already exists; inspect logs/g555.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 555: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g555"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g555"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_29" "0001" "0016" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g555.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g555.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_29-east-14-V-flat-g555-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 555"
   else
       echo "Failed group 555; see logs/g555.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 555"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 556"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_29-east-14-V-flat-g556-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 556"

else if ( -d "$batch_dir/working/g556" ) then
   echo "Work folder already exists; inspect logs/g556.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 556: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g556"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g556"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_29" "0033" "0048" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g556.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g556.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_29-east-14-V-flat-g556-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 556"
   else
       echo "Failed group 556; see logs/g556.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 556"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 557"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_29-east-14-B-flat-g557-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 557"

else if ( -d "$batch_dir/working/g557" ) then
   echo "Work folder already exists; inspect logs/g557.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 557: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g557"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g557"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_29" "0017" "0032" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g557.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g557.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_29-east-14-B-flat-g557-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 557"
   else
       echo "Failed group 557; see logs/g557.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 557"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 558"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_28-east-14-V-flat-g558-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 558"

else if ( -d "$batch_dir/working/g558" ) then
   echo "Work folder already exists; inspect logs/g558.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 558: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g558"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g558"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_28" "0001" "0008" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g558.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g558.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_28-east-14-V-flat-g558-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 558"
   else
       echo "Failed group 558; see logs/g558.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 558"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 559"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_28-east-14-B-flat-g559-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 559"

else if ( -d "$batch_dir/working/g559" ) then
   echo "Work folder already exists; inspect logs/g559.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 559: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g559"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g559"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_28" "0009" "0020" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g559.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g559.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_28-east-14-B-flat-g559-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 559"
   else
       echo "Failed group 559; see logs/g559.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 559"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 560"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_28-east-14-R-flat-g560-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 560"

else if ( -d "$batch_dir/working/g560" ) then
   echo "Work folder already exists; inspect logs/g560.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 560: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g560"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g560"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_28" "0021" "0028" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g560.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g560.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_28-east-14-R-flat-g560-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 560"
   else
       echo "Failed group 560; see logs/g560.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 560"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 561"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_12-east-14-V-flat-g561-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 561"

else if ( -d "$batch_dir/working/g561" ) then
   echo "Work folder already exists; inspect logs/g561.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 561: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g561"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g561"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_12" "0001" "0008" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g561.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g561.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_12-east-14-V-flat-g561-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 561"
   else
       echo "Failed group 561; see logs/g561.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 561"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 562"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_12-east-14-B-flat-g562-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 562"

else if ( -d "$batch_dir/working/g562" ) then
   echo "Work folder already exists; inspect logs/g562.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 562: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g562"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g562"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_12" "0009" "0016" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g562.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g562.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_12-east-14-B-flat-g562-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 562"
   else
       echo "Failed group 562; see logs/g562.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 562"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 563"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_12-east-14-R-flat-g563-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 563"

else if ( -d "$batch_dir/working/g563" ) then
   echo "Work folder already exists; inspect logs/g563.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 563: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g563"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g563"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_12" "0017" "0024" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g563.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g563.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_12-east-14-R-flat-g563-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 563"
   else
       echo "Failed group 563; see logs/g563.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 563"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 564"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_11-east-14-V-flat-g564-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 564"

else if ( -d "$batch_dir/working/g564" ) then
   echo "Work folder already exists; inspect logs/g564.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 564: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g564"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g564"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_11" "0001" "0004" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g564.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g564.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_11-east-14-V-flat-g564-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 564"
   else
       echo "Failed group 564; see logs/g564.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 564"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 565"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_10-east-14-V-flat-g565-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 565"

else if ( -d "$batch_dir/working/g565" ) then
   echo "Work folder already exists; inspect logs/g565.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 565: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g565"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g565"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_10" "0098" "0105" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g565.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g565.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_10-east-14-V-flat-g565-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 565"
   else
       echo "Failed group 565; see logs/g565.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 565"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 566"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_10-east-14-B-flat-g566-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 566"

else if ( -d "$batch_dir/working/g566" ) then
   echo "Work folder already exists; inspect logs/g566.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 566: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g566"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g566"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_10" "0106" "0113" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g566.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g566.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_10-east-14-B-flat-g566-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 566"
   else
       echo "Failed group 566; see logs/g566.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 566"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 567"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_10-east-14-R-flat-g567-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 567"

else if ( -d "$batch_dir/working/g567" ) then
   echo "Work folder already exists; inspect logs/g567.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 567: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g567"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g567"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_10" "0114" "0123" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g567.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g567.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_10-east-14-R-flat-g567-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 567"
   else
       echo "Failed group 567; see logs/g567.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 567"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 568"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_09-east-14-V-flat-g568-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 568"

else if ( -d "$batch_dir/working/g568" ) then
   echo "Work folder already exists; inspect logs/g568.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 568: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g568"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g568"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_09" "0001" "0008" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g568.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g568.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_09-east-14-V-flat-g568-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 568"
   else
       echo "Failed group 568; see logs/g568.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 568"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 569"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_09-east-14-B-flat-g569-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 569"

else if ( -d "$batch_dir/working/g569" ) then
   echo "Work folder already exists; inspect logs/g569.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 569: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g569"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g569"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_09" "0009" "0016" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g569.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g569.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_09-east-14-B-flat-g569-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 569"
   else
       echo "Failed group 569; see logs/g569.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 569"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 570"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_09-east-14-R-flat-g570-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 570"

else if ( -d "$batch_dir/working/g570" ) then
   echo "Work folder already exists; inspect logs/g570.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 570: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g570"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g570"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_09" "0017" "0018" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g570.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g570.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_09-east-14-R-flat-g570-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 570"
   else
       echo "Failed group 570; see logs/g570.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 570"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 571"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_09-east-14-R-flat-g571-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 571"

else if ( -d "$batch_dir/working/g571" ) then
   echo "Work folder already exists; inspect logs/g571.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 571: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g571"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g571"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_09" "0019" "0028" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g571.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g571.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_09-east-14-R-flat-g571-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 571"
   else
       echo "Failed group 571; see logs/g571.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 571"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 572"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_04-east-14-V-flat-g572-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 572"

else if ( -d "$batch_dir/working/g572" ) then
   echo "Work folder already exists; inspect logs/g572.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 572: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g572"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g572"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_04" "0001" "0008" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g572.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g572.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_04-east-14-V-flat-g572-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 572"
   else
       echo "Failed group 572; see logs/g572.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 572"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 573"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_04-east-14-B-flat-g573-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 573"

else if ( -d "$batch_dir/working/g573" ) then
   echo "Work folder already exists; inspect logs/g573.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 573: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g573"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g573"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_04" "0009" "0016" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g573.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g573.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_04-east-14-B-flat-g573-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 573"
   else
       echo "Failed group 573; see logs/g573.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 573"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 574"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_04_04-east-14-R-flat-g574-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 574"

else if ( -d "$batch_dir/working/g574" ) then
   echo "Work folder already exists; inspect logs/g574.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 574: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g574"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g574"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_04_04" "0017" "0024" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g574.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g574.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_04_04-east-14-R-flat-g574-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 574"
   else
       echo "Failed group 574; see logs/g574.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 574"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 575"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_31-east-14-V-flat-g575-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 575"

else if ( -d "$batch_dir/working/g575" ) then
   echo "Work folder already exists; inspect logs/g575.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 575: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g575"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g575"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_31" "0001" "0008" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g575.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g575.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_31-east-14-V-flat-g575-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 575"
   else
       echo "Failed group 575; see logs/g575.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 575"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 576"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_31-east-14-B-flat-g576-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 576"

else if ( -d "$batch_dir/working/g576" ) then
   echo "Work folder already exists; inspect logs/g576.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 576: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g576"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g576"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_31" "0009" "0016" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g576.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g576.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_31-east-14-B-flat-g576-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 576"
   else
       echo "Failed group 576; see logs/g576.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 576"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 577"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_31-east-14-R-flat-g577-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 577"

else if ( -d "$batch_dir/working/g577" ) then
   echo "Work folder already exists; inspect logs/g577.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 577: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g577"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g577"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_31" "0017" "0024" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g577.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g577.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_31-east-14-R-flat-g577-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 577"
   else
       echo "Failed group 577; see logs/g577.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 577"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 578"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_29-east-14-V-flat-g578-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 578"

else if ( -d "$batch_dir/working/g578" ) then
   echo "Work folder already exists; inspect logs/g578.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 578: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g578"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g578"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_29" "0001" "0012" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g578.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g578.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_29-east-14-V-flat-g578-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 578"
   else
       echo "Failed group 578; see logs/g578.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 578"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 579"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_29-east-14-B-flat-g579-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 579"

else if ( -d "$batch_dir/working/g579" ) then
   echo "Work folder already exists; inspect logs/g579.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 579: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g579"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g579"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_29" "0013" "0020" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g579.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g579.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_29-east-14-B-flat-g579-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 579"
   else
       echo "Failed group 579; see logs/g579.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 579"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 580"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_29-east-14-R-flat-g580-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 580"

else if ( -d "$batch_dir/working/g580" ) then
   echo "Work folder already exists; inspect logs/g580.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 580: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g580"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g580"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_29" "0021" "0028" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g580.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g580.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_29-east-14-R-flat-g580-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 580"
   else
       echo "Failed group 580; see logs/g580.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 580"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 581"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_28-east-14-V-flat-g581-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 581"

else if ( -d "$batch_dir/working/g581" ) then
   echo "Work folder already exists; inspect logs/g581.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 581: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g581"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g581"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_28" "0001" "0009" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g581.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g581.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_28-east-14-V-flat-g581-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 581"
   else
       echo "Failed group 581; see logs/g581.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 581"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 582"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_28-east-14-B-flat-g582-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 582"

else if ( -d "$batch_dir/working/g582" ) then
   echo "Work folder already exists; inspect logs/g582.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 582: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g582"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g582"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_28" "0010" "0017" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g582.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g582.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_28-east-14-B-flat-g582-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 582"
   else
       echo "Failed group 582; see logs/g582.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 582"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 583"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_28-east-14-R-flat-g583-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 583"

else if ( -d "$batch_dir/working/g583" ) then
   echo "Work folder already exists; inspect logs/g583.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 583: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g583"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g583"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_28" "0018" "0025" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g583.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g583.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_28-east-14-R-flat-g583-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 583"
   else
       echo "Failed group 583; see logs/g583.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 583"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 584"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_27-east-14-C-flat-g584-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 584"

else if ( -d "$batch_dir/working/g584" ) then
   echo "Work folder already exists; inspect logs/g584.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits" ) then
   echo "Missing flat for group 584: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits"

else
   mkdir "$batch_dir/working/g584"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g584"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_27" "0001" "0001" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits" >&! "$batch_dir/logs/g584.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits" "$batch_dir/logs/g584.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_27-east-14-C-flat-g584-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 584"
   else
       echo "Failed group 584; see logs/g584.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 584"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 585"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_27-east-14-C-flat-g585-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 585"

else if ( -d "$batch_dir/working/g585" ) then
   echo "Work folder already exists; inspect logs/g585.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits" ) then
   echo "Missing flat for group 585: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits"

else
   mkdir "$batch_dir/working/g585"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g585"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_27" "0002" "0009" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits" >&! "$batch_dir/logs/g585.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_C.fits" "$batch_dir/logs/g585.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_27-east-14-C-flat-g585-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 585"
   else
       echo "Failed group 585; see logs/g585.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 585"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 586"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_27-east-14-V-flat-g586-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 586"

else if ( -d "$batch_dir/working/g586" ) then
   echo "Work folder already exists; inspect logs/g586.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 586: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g586"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g586"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_27" "0010" "0017" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g586.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g586.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_27-east-14-V-flat-g586-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 586"
   else
       echo "Failed group 586; see logs/g586.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 586"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 587"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_27-east-14-B-flat-g587-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 587"

else if ( -d "$batch_dir/working/g587" ) then
   echo "Work folder already exists; inspect logs/g587.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 587: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g587"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g587"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_27" "0018" "0025" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g587.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g587.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_27-east-14-B-flat-g587-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 587"
   else
       echo "Failed group 587; see logs/g587.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 587"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 588"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_27-east-14-R-flat-g588-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 588"

else if ( -d "$batch_dir/working/g588" ) then
   echo "Work folder already exists; inspect logs/g588.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 588: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g588"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g588"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_27" "0026" "0037" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g588.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g588.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_27-east-14-R-flat-g588-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 588"
   else
       echo "Failed group 588; see logs/g588.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 588"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 589"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_25-east-14-V-flat-g589-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 589"

else if ( -d "$batch_dir/working/g589" ) then
   echo "Work folder already exists; inspect logs/g589.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 589: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g589"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g589"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_25" "0003" "0003" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g589.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g589.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_25-east-14-V-flat-g589-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 589"
   else
       echo "Failed group 589; see logs/g589.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 589"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 590"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_25-east-14-V-flat-g590-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 590"

else if ( -d "$batch_dir/working/g590" ) then
   echo "Work folder already exists; inspect logs/g590.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" ) then
   echo "Missing flat for group 590: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits"

else
   mkdir "$batch_dir/working/g590"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g590"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_25" "0004" "0011" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" >&! "$batch_dir/logs/g590.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_V.fits" "$batch_dir/logs/g590.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_25-east-14-V-flat-g590-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 590"
   else
       echo "Failed group 590; see logs/g590.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 590"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 591"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_25-east-14-B-flat-g591-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 591"

else if ( -d "$batch_dir/working/g591" ) then
   echo "Work folder already exists; inspect logs/g591.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" ) then
   echo "Missing flat for group 591: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits"

else
   mkdir "$batch_dir/working/g591"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g591"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_25" "0012" "0018" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" >&! "$batch_dir/logs/g591.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_B.fits" "$batch_dir/logs/g591.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_25-east-14-B-flat-g591-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 591"
   else
       echo "Failed group 591; see logs/g591.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 591"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 592"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_03_25-east-14-R-flat-g592-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 592"

else if ( -d "$batch_dir/working/g592" ) then
   echo "Work folder already exists; inspect logs/g592.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" ) then
   echo "Missing flat for group 592: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits"

else
   mkdir "$batch_dir/working/g592"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g592"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "east-14" "19_03_25" "0019" "0026" 5.0 "/home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" >&! "$batch_dir/logs/g592.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_east-14_19_01_17_R.fits" "$batch_dir/logs/g592.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_03_25-east-14-R-flat-g592-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 592"
   else
       echo "Failed group 592; see logs/g592.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 592"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 593"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_02_15-far-east-16-V-flat-g593-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 593"

else if ( -d "$batch_dir/working/g593" ) then
   echo "Work folder already exists; inspect logs/g593.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" ) then
   echo "Missing flat for group 593: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits"

else
   mkdir "$batch_dir/working/g593"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g593"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_02_15" "0086" "0094" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" >&! "$batch_dir/logs/g593.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" "$batch_dir/logs/g593.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_02_15-far-east-16-V-flat-g593-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 593"
   else
       echo "Failed group 593; see logs/g593.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 593"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 594"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_02_15-far-east-16-r-flat-g594-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 594"

else if ( -d "$batch_dir/working/g594" ) then
   echo "Work folder already exists; inspect logs/g594.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" ) then
   echo "Missing flat for group 594: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits"

else
   mkdir "$batch_dir/working/g594"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g594"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_02_15" "0095" "0098" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" >&! "$batch_dir/logs/g594.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" "$batch_dir/logs/g594.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_02_15-far-east-16-r-flat-g594-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 594"
   else
       echo "Failed group 594; see logs/g594.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 594"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 595"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_02_15-far-east-16-B-flat-g595-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 595"

else if ( -d "$batch_dir/working/g595" ) then
   echo "Work folder already exists; inspect logs/g595.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" ) then
   echo "Missing flat for group 595: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits"

else
   mkdir "$batch_dir/working/g595"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g595"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_02_15" "0099" "0101" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" >&! "$batch_dir/logs/g595.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" "$batch_dir/logs/g595.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_02_15-far-east-16-B-flat-g595-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 595"
   else
       echo "Failed group 595; see logs/g595.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 595"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 596"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_02_10-far-east-16-V-flat-g596-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 596"

else if ( -d "$batch_dir/working/g596" ) then
   echo "Work folder already exists; inspect logs/g596.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" ) then
   echo "Missing flat for group 596: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits"

else
   mkdir "$batch_dir/working/g596"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g596"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_02_10" "0072" "0075" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" >&! "$batch_dir/logs/g596.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_V.fits" "$batch_dir/logs/g596.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_02_10-far-east-16-V-flat-g596-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 596"
   else
       echo "Failed group 596; see logs/g596.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 596"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 597"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_02_10-far-east-16-r-flat-g597-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 597"

else if ( -d "$batch_dir/working/g597" ) then
   echo "Work folder already exists; inspect logs/g597.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" ) then
   echo "Missing flat for group 597: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits"

else
   mkdir "$batch_dir/working/g597"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g597"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_02_10" "0076" "0079" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" >&! "$batch_dir/logs/g597.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_r.fits" "$batch_dir/logs/g597.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_02_10-far-east-16-r-flat-g597-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 597"
   else
       echo "Failed group 597; see logs/g597.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 597"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 598"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_02_10-far-east-16-B-flat-g598-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 598"

else if ( -d "$batch_dir/working/g598" ) then
   echo "Work folder already exists; inspect logs/g598.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" ) then
   echo "Missing flat for group 598: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits"

else
   mkdir "$batch_dir/working/g598"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g598"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "far-east-16" "19_02_10" "0080" "0083" 5.0 "/home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" >&! "$batch_dir/logs/g598.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_far-east-16_19_01_30_B.fits" "$batch_dir/logs/g598.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_02_10-far-east-16-B-flat-g598-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 598"
   else
       echo "Failed group 598; see logs/g598.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 598"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 599"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_01_28-draco2-V-flat-g599-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 599"

else if ( -d "$batch_dir/working/g599" ) then
   echo "Work folder already exists; inspect logs/g599.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" ) then
   echo "Missing flat for group 599: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits"

else
   mkdir "$batch_dir/working/g599"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g599"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "draco2" "19_01_28" "0096" "0096" 5.0 "/home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" >&! "$batch_dir/logs/g599.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/master_flat_draco2_19_01_23_V.fits" "$batch_dir/logs/g599.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_01_28-draco2-V-flat-g599-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 599"
   else
       echo "Failed group 599; see logs/g599.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 599"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif

