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


echo "Processing group 211"

if ( -e "$batch_dir/output_mosaics/at2019np-19_06_18-pt5m-V-flat-g211-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 211"

else if ( -d "$batch_dir/working/g211" ) then
   echo "Work folder already exists; inspect logs/g211.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 211: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g211"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g211"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_18" "0562233" "0562237" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g211.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g211.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_06_18-pt5m-V-flat-g211-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 211"
   else
       echo "Failed group 211; see logs/g211.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 211"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 212"

if ( -e "$batch_dir/output_mosaics/at2019np-19_06_18-pt5m-R-flat-g212-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 212"

else if ( -d "$batch_dir/working/g212" ) then
   echo "Work folder already exists; inspect logs/g212.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 212: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g212"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g212"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_18" "0562238" "0562242" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g212.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g212.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_06_18-pt5m-R-flat-g212-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 212"
   else
       echo "Failed group 212; see logs/g212.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 212"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 213"

if ( -e "$batch_dir/output_mosaics/at2019np-19_06_18-pt5m-I-flat-g213-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 213"

else if ( -d "$batch_dir/working/g213" ) then
   echo "Work folder already exists; inspect logs/g213.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 213: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g213"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g213"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_18" "0562243" "0562247" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g213.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g213.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_06_18-pt5m-I-flat-g213-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 213"
   else
       echo "Failed group 213; see logs/g213.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 213"
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


echo "Processing group 215"

if ( -e "$batch_dir/output_mosaics/at2019np-19_06_04-pt5m-V-flat-g215-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 215"

else if ( -d "$batch_dir/working/g215" ) then
   echo "Work folder already exists; inspect logs/g215.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 215: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g215"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g215"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_04" "0558321" "0558325" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g215.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g215.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_06_04-pt5m-V-flat-g215-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 215"
   else
       echo "Failed group 215; see logs/g215.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 215"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 216"

if ( -e "$batch_dir/output_mosaics/at2019np-19_06_04-pt5m-R-flat-g216-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 216"

else if ( -d "$batch_dir/working/g216" ) then
   echo "Work folder already exists; inspect logs/g216.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 216: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g216"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g216"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_04" "0558326" "0558330" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g216.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g216.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_06_04-pt5m-R-flat-g216-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 216"
   else
       echo "Failed group 216; see logs/g216.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 216"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 217"

if ( -e "$batch_dir/output_mosaics/at2019np-19_06_04-pt5m-I-flat-g217-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 217"

else if ( -d "$batch_dir/working/g217" ) then
   echo "Work folder already exists; inspect logs/g217.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 217: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g217"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g217"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_04" "0558331" "0558335" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g217.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g217.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_06_04-pt5m-I-flat-g217-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 217"
   else
       echo "Failed group 217; see logs/g217.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 217"
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


echo "Processing group 219"

if ( -e "$batch_dir/output_mosaics/at2019np-19_06_01-pt5m-V-flat-g219-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 219"

else if ( -d "$batch_dir/working/g219" ) then
   echo "Work folder already exists; inspect logs/g219.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 219: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g219"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g219"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_01" "0557522" "0557522" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g219.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g219.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_06_01-pt5m-V-flat-g219-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 219"
   else
       echo "Failed group 219; see logs/g219.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 219"
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


echo "Processing group 221"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_29-pt5m-V-flat-g221-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 221"

else if ( -d "$batch_dir/working/g221" ) then
   echo "Work folder already exists; inspect logs/g221.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 221: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g221"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g221"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_29" "0556376" "0556380" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g221.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g221.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_29-pt5m-V-flat-g221-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 221"
   else
       echo "Failed group 221; see logs/g221.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 221"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 222"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_29-pt5m-R-flat-g222-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 222"

else if ( -d "$batch_dir/working/g222" ) then
   echo "Work folder already exists; inspect logs/g222.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 222: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g222"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g222"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_29" "0556381" "0556385" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g222.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g222.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_29-pt5m-R-flat-g222-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 222"
   else
       echo "Failed group 222; see logs/g222.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 222"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 223"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_29-pt5m-I-flat-g223-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 223"

else if ( -d "$batch_dir/working/g223" ) then
   echo "Work folder already exists; inspect logs/g223.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 223: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g223"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g223"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_29" "0556386" "0556390" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g223.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g223.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_29-pt5m-I-flat-g223-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 223"
   else
       echo "Failed group 223; see logs/g223.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 223"
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


echo "Processing group 225"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_16-pt5m-V-flat-g225-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 225"

else if ( -d "$batch_dir/working/g225" ) then
   echo "Work folder already exists; inspect logs/g225.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 225: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g225"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g225"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_16" "0554899" "0554903" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g225.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g225.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_16-pt5m-V-flat-g225-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 225"
   else
       echo "Failed group 225; see logs/g225.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 225"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 226"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_16-pt5m-R-flat-g226-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 226"

else if ( -d "$batch_dir/working/g226" ) then
   echo "Work folder already exists; inspect logs/g226.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 226: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g226"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g226"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_16" "0554904" "0554908" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g226.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g226.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_16-pt5m-R-flat-g226-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 226"
   else
       echo "Failed group 226; see logs/g226.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 226"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 227"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_16-pt5m-I-flat-g227-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 227"

else if ( -d "$batch_dir/working/g227" ) then
   echo "Work folder already exists; inspect logs/g227.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 227: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g227"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g227"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_16" "0554909" "0554913" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g227.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g227.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_16-pt5m-I-flat-g227-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 227"
   else
       echo "Failed group 227; see logs/g227.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 227"
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


echo "Processing group 233"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_14-pt5m-V-flat-g233-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 233"

else if ( -d "$batch_dir/working/g233" ) then
   echo "Work folder already exists; inspect logs/g233.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 233: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g233"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g233"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_14" "0554279" "0554283" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g233.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g233.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_14-pt5m-V-flat-g233-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 233"
   else
       echo "Failed group 233; see logs/g233.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 233"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 234"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_14-pt5m-R-flat-g234-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 234"

else if ( -d "$batch_dir/working/g234" ) then
   echo "Work folder already exists; inspect logs/g234.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 234: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g234"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g234"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_14" "0554284" "0554288" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g234.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g234.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_14-pt5m-R-flat-g234-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 234"
   else
       echo "Failed group 234; see logs/g234.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 234"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 235"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_14-pt5m-I-flat-g235-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 235"

else if ( -d "$batch_dir/working/g235" ) then
   echo "Work folder already exists; inspect logs/g235.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 235: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g235"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g235"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_14" "0554289" "0554293" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g235.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g235.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_14-pt5m-I-flat-g235-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 235"
   else
       echo "Failed group 235; see logs/g235.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 235"
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


echo "Processing group 237"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_09-pt5m-V-flat-g237-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 237"

else if ( -d "$batch_dir/working/g237" ) then
   echo "Work folder already exists; inspect logs/g237.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 237: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g237"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g237"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_09" "0553017" "0553021" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g237.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g237.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_09-pt5m-V-flat-g237-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 237"
   else
       echo "Failed group 237; see logs/g237.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 237"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 238"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_09-pt5m-R-flat-g238-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 238"

else if ( -d "$batch_dir/working/g238" ) then
   echo "Work folder already exists; inspect logs/g238.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 238: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g238"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g238"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_09" "0553022" "0553026" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g238.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g238.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_09-pt5m-R-flat-g238-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 238"
   else
       echo "Failed group 238; see logs/g238.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 238"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 239"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_09-pt5m-I-flat-g239-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 239"

else if ( -d "$batch_dir/working/g239" ) then
   echo "Work folder already exists; inspect logs/g239.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 239: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g239"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g239"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_09" "0553027" "0553031" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g239.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g239.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_09-pt5m-I-flat-g239-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 239"
   else
       echo "Failed group 239; see logs/g239.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 239"
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


echo "Processing group 241"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_08-pt5m-V-flat-g241-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 241"

else if ( -d "$batch_dir/working/g241" ) then
   echo "Work folder already exists; inspect logs/g241.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 241: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g241"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g241"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_08" "0552677" "0552681" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g241.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g241.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_08-pt5m-V-flat-g241-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 241"
   else
       echo "Failed group 241; see logs/g241.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 241"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 242"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_08-pt5m-R-flat-g242-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 242"

else if ( -d "$batch_dir/working/g242" ) then
   echo "Work folder already exists; inspect logs/g242.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 242: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g242"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g242"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_08" "0552682" "0552686" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g242.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g242.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_08-pt5m-R-flat-g242-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 242"
   else
       echo "Failed group 242; see logs/g242.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 242"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 243"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_08-pt5m-I-flat-g243-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 243"

else if ( -d "$batch_dir/working/g243" ) then
   echo "Work folder already exists; inspect logs/g243.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 243: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g243"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g243"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_08" "0552687" "0552691" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g243.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g243.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_08-pt5m-I-flat-g243-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 243"
   else
       echo "Failed group 243; see logs/g243.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 243"
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


echo "Processing group 245"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_07-pt5m-V-flat-g245-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 245"

else if ( -d "$batch_dir/working/g245" ) then
   echo "Work folder already exists; inspect logs/g245.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 245: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g245"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g245"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_07" "0552446" "0552450" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g245.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g245.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_07-pt5m-V-flat-g245-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 245"
   else
       echo "Failed group 245; see logs/g245.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 245"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 246"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_07-pt5m-R-flat-g246-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 246"

else if ( -d "$batch_dir/working/g246" ) then
   echo "Work folder already exists; inspect logs/g246.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 246: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g246"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g246"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_07" "0552451" "0552455" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g246.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g246.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_07-pt5m-R-flat-g246-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 246"
   else
       echo "Failed group 246; see logs/g246.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 246"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 247"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_07-pt5m-I-flat-g247-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 247"

else if ( -d "$batch_dir/working/g247" ) then
   echo "Work folder already exists; inspect logs/g247.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 247: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g247"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g247"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_07" "0552456" "0552460" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g247.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g247.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_07-pt5m-I-flat-g247-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 247"
   else
       echo "Failed group 247; see logs/g247.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 247"
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


echo "Processing group 249"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_05-pt5m-V-flat-g249-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 249"

else if ( -d "$batch_dir/working/g249" ) then
   echo "Work folder already exists; inspect logs/g249.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 249: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g249"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g249"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_05" "0551868" "0551872" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g249.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g249.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_05-pt5m-V-flat-g249-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 249"
   else
       echo "Failed group 249; see logs/g249.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 249"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 250"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_05-pt5m-R-flat-g250-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 250"

else if ( -d "$batch_dir/working/g250" ) then
   echo "Work folder already exists; inspect logs/g250.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 250: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g250"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g250"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_05" "0551873" "0551877" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g250.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g250.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_05-pt5m-R-flat-g250-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 250"
   else
       echo "Failed group 250; see logs/g250.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 250"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 251"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_05-pt5m-I-flat-g251-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 251"

else if ( -d "$batch_dir/working/g251" ) then
   echo "Work folder already exists; inspect logs/g251.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 251: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g251"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g251"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_05" "0551878" "0551882" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g251.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g251.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_05-pt5m-I-flat-g251-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 251"
   else
       echo "Failed group 251; see logs/g251.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 251"
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


echo "Processing group 253"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_04-pt5m-V-flat-g253-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 253"

else if ( -d "$batch_dir/working/g253" ) then
   echo "Work folder already exists; inspect logs/g253.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 253: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g253"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g253"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_04" "0551591" "0551595" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g253.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g253.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_04-pt5m-V-flat-g253-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 253"
   else
       echo "Failed group 253; see logs/g253.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 253"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 254"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_04-pt5m-R-flat-g254-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 254"

else if ( -d "$batch_dir/working/g254" ) then
   echo "Work folder already exists; inspect logs/g254.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 254: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g254"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g254"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_04" "0551596" "0551600" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g254.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g254.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_04-pt5m-R-flat-g254-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 254"
   else
       echo "Failed group 254; see logs/g254.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 254"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 255"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_04-pt5m-I-flat-g255-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 255"

else if ( -d "$batch_dir/working/g255" ) then
   echo "Work folder already exists; inspect logs/g255.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 255: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g255"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g255"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_04" "0551601" "0551605" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g255.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g255.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_04-pt5m-I-flat-g255-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 255"
   else
       echo "Failed group 255; see logs/g255.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 255"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 256"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_03-pt5m-B-flat-g256-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 256"

else if ( -d "$batch_dir/working/g256" ) then
   echo "Work folder already exists; inspect logs/g256.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 256: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g256"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g256"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_03" "0551317" "0551322" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g256.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g256.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_03-pt5m-B-flat-g256-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 256"
   else
       echo "Failed group 256; see logs/g256.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 256"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 257"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_03-pt5m-V-flat-g257-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 257"

else if ( -d "$batch_dir/working/g257" ) then
   echo "Work folder already exists; inspect logs/g257.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 257: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g257"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g257"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_03" "0551323" "0551327" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g257.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g257.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_03-pt5m-V-flat-g257-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 257"
   else
       echo "Failed group 257; see logs/g257.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 257"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 258"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_03-pt5m-R-flat-g258-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 258"

else if ( -d "$batch_dir/working/g258" ) then
   echo "Work folder already exists; inspect logs/g258.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 258: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g258"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g258"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_03" "0551328" "0551332" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g258.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g258.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_03-pt5m-R-flat-g258-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 258"
   else
       echo "Failed group 258; see logs/g258.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 258"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 259"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_03-pt5m-I-flat-g259-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 259"

else if ( -d "$batch_dir/working/g259" ) then
   echo "Work folder already exists; inspect logs/g259.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 259: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g259"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g259"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_03" "0551333" "0551337" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g259.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g259.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_03-pt5m-I-flat-g259-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 259"
   else
       echo "Failed group 259; see logs/g259.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 259"
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


echo "Processing group 261"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_02-pt5m-V-flat-g261-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 261"

else if ( -d "$batch_dir/working/g261" ) then
   echo "Work folder already exists; inspect logs/g261.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 261: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g261"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g261"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_02" "0550986" "0550990" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g261.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g261.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_02-pt5m-V-flat-g261-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 261"
   else
       echo "Failed group 261; see logs/g261.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 261"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 262"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_02-pt5m-R-flat-g262-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 262"

else if ( -d "$batch_dir/working/g262" ) then
   echo "Work folder already exists; inspect logs/g262.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 262: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g262"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g262"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_02" "0550991" "0550995" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g262.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g262.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_02-pt5m-R-flat-g262-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 262"
   else
       echo "Failed group 262; see logs/g262.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 262"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 263"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_02-pt5m-I-flat-g263-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 263"

else if ( -d "$batch_dir/working/g263" ) then
   echo "Work folder already exists; inspect logs/g263.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 263: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g263"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g263"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_02" "0550996" "0551000" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g263.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g263.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_02-pt5m-I-flat-g263-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 263"
   else
       echo "Failed group 263; see logs/g263.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 263"
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


echo "Processing group 265"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_01-pt5m-V-flat-g265-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 265"

else if ( -d "$batch_dir/working/g265" ) then
   echo "Work folder already exists; inspect logs/g265.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 265: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g265"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g265"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_01" "0550724" "0550728" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g265.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g265.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_01-pt5m-V-flat-g265-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 265"
   else
       echo "Failed group 265; see logs/g265.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 265"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 266"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_01-pt5m-R-flat-g266-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 266"

else if ( -d "$batch_dir/working/g266" ) then
   echo "Work folder already exists; inspect logs/g266.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 266: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g266"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g266"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_01" "0550729" "0550733" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g266.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g266.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_01-pt5m-R-flat-g266-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 266"
   else
       echo "Failed group 266; see logs/g266.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 266"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 267"

if ( -e "$batch_dir/output_mosaics/at2019np-19_05_01-pt5m-I-flat-g267-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 267"

else if ( -d "$batch_dir/working/g267" ) then
   echo "Work folder already exists; inspect logs/g267.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 267: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g267"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g267"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_05_01" "0550734" "0550738" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g267.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g267.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_05_01-pt5m-I-flat-g267-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 267"
   else
       echo "Failed group 267; see logs/g267.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 267"
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


echo "Processing group 269"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_30-pt5m-V-flat-g269-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 269"

else if ( -d "$batch_dir/working/g269" ) then
   echo "Work folder already exists; inspect logs/g269.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 269: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g269"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g269"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_30" "0550403" "0550407" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g269.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g269.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_30-pt5m-V-flat-g269-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 269"
   else
       echo "Failed group 269; see logs/g269.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 269"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 270"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_30-pt5m-R-flat-g270-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 270"

else if ( -d "$batch_dir/working/g270" ) then
   echo "Work folder already exists; inspect logs/g270.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 270: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g270"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g270"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_30" "0550408" "0550412" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g270.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g270.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_30-pt5m-R-flat-g270-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 270"
   else
       echo "Failed group 270; see logs/g270.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 270"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 271"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_30-pt5m-I-flat-g271-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 271"

else if ( -d "$batch_dir/working/g271" ) then
   echo "Work folder already exists; inspect logs/g271.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 271: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g271"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g271"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_30" "0550413" "0550417" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g271.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g271.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_30-pt5m-I-flat-g271-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 271"
   else
       echo "Failed group 271; see logs/g271.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 271"
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


echo "Processing group 273"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_27-pt5m-V-flat-g273-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 273"

else if ( -d "$batch_dir/working/g273" ) then
   echo "Work folder already exists; inspect logs/g273.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 273: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g273"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g273"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_27" "0549656" "0549660" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g273.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g273.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_27-pt5m-V-flat-g273-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 273"
   else
       echo "Failed group 273; see logs/g273.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 273"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 274"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_27-pt5m-R-flat-g274-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 274"

else if ( -d "$batch_dir/working/g274" ) then
   echo "Work folder already exists; inspect logs/g274.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 274: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g274"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g274"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_27" "0549661" "0549665" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g274.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g274.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_27-pt5m-R-flat-g274-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 274"
   else
       echo "Failed group 274; see logs/g274.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 274"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 275"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_27-pt5m-I-flat-g275-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 275"

else if ( -d "$batch_dir/working/g275" ) then
   echo "Work folder already exists; inspect logs/g275.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 275: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g275"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g275"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_27" "0549666" "0549670" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g275.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g275.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_27-pt5m-I-flat-g275-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 275"
   else
       echo "Failed group 275; see logs/g275.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 275"
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


echo "Processing group 277"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_25-pt5m-V-flat-g277-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 277"

else if ( -d "$batch_dir/working/g277" ) then
   echo "Work folder already exists; inspect logs/g277.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 277: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g277"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g277"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_25" "0549027" "0549031" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g277.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g277.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_25-pt5m-V-flat-g277-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 277"
   else
       echo "Failed group 277; see logs/g277.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 277"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 278"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_25-pt5m-R-flat-g278-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 278"

else if ( -d "$batch_dir/working/g278" ) then
   echo "Work folder already exists; inspect logs/g278.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 278: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g278"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g278"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_25" "0549032" "0549036" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g278.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g278.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_25-pt5m-R-flat-g278-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 278"
   else
       echo "Failed group 278; see logs/g278.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 278"
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


echo "Processing group 281"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_24-pt5m-V-flat-g281-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 281"

else if ( -d "$batch_dir/working/g281" ) then
   echo "Work folder already exists; inspect logs/g281.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 281: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g281"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g281"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_24" "0548685" "0548689" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g281.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g281.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_24-pt5m-V-flat-g281-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 281"
   else
       echo "Failed group 281; see logs/g281.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 281"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 282"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_24-pt5m-R-flat-g282-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 282"

else if ( -d "$batch_dir/working/g282" ) then
   echo "Work folder already exists; inspect logs/g282.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 282: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g282"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g282"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_24" "0548690" "0548694" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g282.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g282.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_24-pt5m-R-flat-g282-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 282"
   else
       echo "Failed group 282; see logs/g282.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 282"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 283"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_24-pt5m-I-flat-g283-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 283"

else if ( -d "$batch_dir/working/g283" ) then
   echo "Work folder already exists; inspect logs/g283.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 283: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g283"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g283"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_24" "0548695" "0548699" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g283.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g283.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_24-pt5m-I-flat-g283-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 283"
   else
       echo "Failed group 283; see logs/g283.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 283"
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


echo "Processing group 286"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_20-pt5m-V-flat-g286-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 286"

else if ( -d "$batch_dir/working/g286" ) then
   echo "Work folder already exists; inspect logs/g286.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 286: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g286"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g286"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_20" "0548120" "0548124" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g286.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g286.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_20-pt5m-V-flat-g286-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 286"
   else
       echo "Failed group 286; see logs/g286.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 286"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 287"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_20-pt5m-R-flat-g287-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 287"

else if ( -d "$batch_dir/working/g287" ) then
   echo "Work folder already exists; inspect logs/g287.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 287: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g287"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g287"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_20" "0548125" "0548129" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g287.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g287.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_20-pt5m-R-flat-g287-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 287"
   else
       echo "Failed group 287; see logs/g287.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 287"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 288"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_20-pt5m-I-flat-g288-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 288"

else if ( -d "$batch_dir/working/g288" ) then
   echo "Work folder already exists; inspect logs/g288.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 288: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g288"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g288"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_20" "0548130" "0548134" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g288.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g288.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_20-pt5m-I-flat-g288-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 288"
   else
       echo "Failed group 288; see logs/g288.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 288"
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


echo "Processing group 291"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_17-pt5m-R-flat-g291-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 291"

else if ( -d "$batch_dir/working/g291" ) then
   echo "Work folder already exists; inspect logs/g291.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 291: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g291"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g291"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_17" "0547753" "0547757" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g291.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g291.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_17-pt5m-R-flat-g291-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 291"
   else
       echo "Failed group 291; see logs/g291.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 291"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 292"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_17-pt5m-I-flat-g292-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 292"

else if ( -d "$batch_dir/working/g292" ) then
   echo "Work folder already exists; inspect logs/g292.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 292: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g292"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g292"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_17" "0547758" "0547762" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g292.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g292.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_17-pt5m-I-flat-g292-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 292"
   else
       echo "Failed group 292; see logs/g292.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 292"
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


echo "Processing group 294"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_10-pt5m-V-flat-g294-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 294"

else if ( -d "$batch_dir/working/g294" ) then
   echo "Work folder already exists; inspect logs/g294.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 294: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g294"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g294"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_10" "0546650" "0546654" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g294.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g294.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_10-pt5m-V-flat-g294-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 294"
   else
       echo "Failed group 294; see logs/g294.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 294"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 295"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_10-pt5m-R-flat-g295-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 295"

else if ( -d "$batch_dir/working/g295" ) then
   echo "Work folder already exists; inspect logs/g295.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 295: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g295"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g295"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_10" "0546655" "0546659" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g295.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g295.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_10-pt5m-R-flat-g295-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 295"
   else
       echo "Failed group 295; see logs/g295.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 295"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 296"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_10-pt5m-I-flat-g296-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 296"

else if ( -d "$batch_dir/working/g296" ) then
   echo "Work folder already exists; inspect logs/g296.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 296: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g296"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g296"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_10" "0546660" "0546664" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g296.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g296.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_10-pt5m-I-flat-g296-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 296"
   else
       echo "Failed group 296; see logs/g296.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 296"
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


echo "Processing group 298"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_09-pt5m-V-flat-g298-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 298"

else if ( -d "$batch_dir/working/g298" ) then
   echo "Work folder already exists; inspect logs/g298.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 298: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g298"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g298"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_09" "0546344" "0546348" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g298.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g298.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_09-pt5m-V-flat-g298-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 298"
   else
       echo "Failed group 298; see logs/g298.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 298"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 299"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_09-pt5m-R-flat-g299-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 299"

else if ( -d "$batch_dir/working/g299" ) then
   echo "Work folder already exists; inspect logs/g299.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 299: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g299"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g299"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_09" "0546349" "0546353" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g299.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g299.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_09-pt5m-R-flat-g299-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 299"
   else
       echo "Failed group 299; see logs/g299.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 299"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 300"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_09-pt5m-I-flat-g300-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 300"

else if ( -d "$batch_dir/working/g300" ) then
   echo "Work folder already exists; inspect logs/g300.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 300: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g300"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g300"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_09" "0546354" "0546358" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g300.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g300.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_09-pt5m-I-flat-g300-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 300"
   else
       echo "Failed group 300; see logs/g300.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 300"
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


echo "Processing group 302"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_08-pt5m-V-flat-g302-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 302"

else if ( -d "$batch_dir/working/g302" ) then
   echo "Work folder already exists; inspect logs/g302.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 302: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g302"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g302"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_08" "0546030" "0546034" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g302.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g302.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_08-pt5m-V-flat-g302-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 302"
   else
       echo "Failed group 302; see logs/g302.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 302"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 303"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_08-pt5m-R-flat-g303-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 303"

else if ( -d "$batch_dir/working/g303" ) then
   echo "Work folder already exists; inspect logs/g303.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 303: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g303"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g303"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_08" "0546035" "0546039" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g303.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g303.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_08-pt5m-R-flat-g303-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 303"
   else
       echo "Failed group 303; see logs/g303.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 303"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 304"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_08-pt5m-I-flat-g304-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 304"

else if ( -d "$batch_dir/working/g304" ) then
   echo "Work folder already exists; inspect logs/g304.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 304: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g304"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g304"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_08" "0546040" "0546044" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g304.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g304.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_08-pt5m-I-flat-g304-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 304"
   else
       echo "Failed group 304; see logs/g304.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 304"
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


echo "Processing group 306"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_07-pt5m-V-flat-g306-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 306"

else if ( -d "$batch_dir/working/g306" ) then
   echo "Work folder already exists; inspect logs/g306.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 306: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g306"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g306"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_07" "0545703" "0545707" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g306.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g306.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_07-pt5m-V-flat-g306-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 306"
   else
       echo "Failed group 306; see logs/g306.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 306"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 307"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_07-pt5m-R-flat-g307-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 307"

else if ( -d "$batch_dir/working/g307" ) then
   echo "Work folder already exists; inspect logs/g307.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 307: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g307"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g307"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_07" "0545708" "0545712" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g307.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g307.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_07-pt5m-R-flat-g307-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 307"
   else
       echo "Failed group 307; see logs/g307.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 307"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 308"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_07-pt5m-I-flat-g308-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 308"

else if ( -d "$batch_dir/working/g308" ) then
   echo "Work folder already exists; inspect logs/g308.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 308: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g308"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g308"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_07" "0545713" "0545717" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g308.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g308.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_07-pt5m-I-flat-g308-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 308"
   else
       echo "Failed group 308; see logs/g308.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 308"
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


echo "Processing group 310"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_04-pt5m-V-flat-g310-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 310"

else if ( -d "$batch_dir/working/g310" ) then
   echo "Work folder already exists; inspect logs/g310.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 310: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g310"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g310"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_04" "0545551" "0545555" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g310.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g310.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_04-pt5m-V-flat-g310-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 310"
   else
       echo "Failed group 310; see logs/g310.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 310"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 311"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_04-pt5m-R-flat-g311-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 311"

else if ( -d "$batch_dir/working/g311" ) then
   echo "Work folder already exists; inspect logs/g311.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 311: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g311"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g311"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_04" "0545556" "0545560" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g311.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g311.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_04-pt5m-R-flat-g311-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 311"
   else
       echo "Failed group 311; see logs/g311.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 311"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 312"

if ( -e "$batch_dir/output_mosaics/at2019np-19_04_04-pt5m-I-flat-g312-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 312"

else if ( -d "$batch_dir/working/g312" ) then
   echo "Work folder already exists; inspect logs/g312.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 312: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g312"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g312"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_04_04" "0545561" "0545563" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g312.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g312.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_04_04-pt5m-I-flat-g312-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 312"
   else
       echo "Failed group 312; see logs/g312.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 312"
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


echo "Processing group 322"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_23-pt5m-V-flat-g322-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 322"

else if ( -d "$batch_dir/working/g322" ) then
   echo "Work folder already exists; inspect logs/g322.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 322: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g322"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g322"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_23" "0545073" "0545077" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g322.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g322.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_23-pt5m-V-flat-g322-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 322"
   else
       echo "Failed group 322; see logs/g322.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 322"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 323"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_23-pt5m-R-flat-g323-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 323"

else if ( -d "$batch_dir/working/g323" ) then
   echo "Work folder already exists; inspect logs/g323.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 323: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g323"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g323"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_23" "0545078" "0545082" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g323.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g323.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_23-pt5m-R-flat-g323-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 323"
   else
       echo "Failed group 323; see logs/g323.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 323"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 324"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_23-pt5m-I-flat-g324-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 324"

else if ( -d "$batch_dir/working/g324" ) then
   echo "Work folder already exists; inspect logs/g324.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 324: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g324"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g324"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_23" "0545083" "0545087" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g324.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g324.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_23-pt5m-I-flat-g324-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 324"
   else
       echo "Failed group 324; see logs/g324.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 324"
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


echo "Processing group 326"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_20-pt5m-V-flat-g326-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 326"

else if ( -d "$batch_dir/working/g326" ) then
   echo "Work folder already exists; inspect logs/g326.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 326: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g326"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g326"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_20" "0543830" "0543834" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g326.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g326.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_20-pt5m-V-flat-g326-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 326"
   else
       echo "Failed group 326; see logs/g326.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 326"
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


echo "Processing group 328"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_20-pt5m-I-flat-g328-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 328"

else if ( -d "$batch_dir/working/g328" ) then
   echo "Work folder already exists; inspect logs/g328.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 328: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g328"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g328"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_20" "0543840" "0543844" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g328.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g328.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_20-pt5m-I-flat-g328-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 328"
   else
       echo "Failed group 328; see logs/g328.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 328"
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


echo "Processing group 335"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_15-pt5m-R-flat-g335-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 335"

else if ( -d "$batch_dir/working/g335" ) then
   echo "Work folder already exists; inspect logs/g335.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 335: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g335"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g335"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_15" "0542316" "0542320" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g335.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g335.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_15-pt5m-R-flat-g335-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 335"
   else
       echo "Failed group 335; see logs/g335.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 335"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 336"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_15-pt5m-I-flat-g336-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 336"

else if ( -d "$batch_dir/working/g336" ) then
   echo "Work folder already exists; inspect logs/g336.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 336: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g336"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g336"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_15" "0542321" "0542325" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g336.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g336.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_15-pt5m-I-flat-g336-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 336"
   else
       echo "Failed group 336; see logs/g336.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 336"
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


echo "Processing group 339"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_13-pt5m-R-flat-g339-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 339"

else if ( -d "$batch_dir/working/g339" ) then
   echo "Work folder already exists; inspect logs/g339.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 339: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g339"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g339"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_13" "0541895" "0541899" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g339.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g339.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_13-pt5m-R-flat-g339-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 339"
   else
       echo "Failed group 339; see logs/g339.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 339"
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


echo "Processing group 343"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_12-pt5m-R-flat-g343-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 343"

else if ( -d "$batch_dir/working/g343" ) then
   echo "Work folder already exists; inspect logs/g343.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 343: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g343"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g343"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_12" "0541383" "0541387" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g343.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g343.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_12-pt5m-R-flat-g343-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 343"
   else
       echo "Failed group 343; see logs/g343.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 343"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 344"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_12-pt5m-I-flat-g344-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 344"

else if ( -d "$batch_dir/working/g344" ) then
   echo "Work folder already exists; inspect logs/g344.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 344: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g344"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g344"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_12" "0541388" "0541392" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g344.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g344.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_12-pt5m-I-flat-g344-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 344"
   else
       echo "Failed group 344; see logs/g344.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 344"
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


echo "Processing group 346"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_11-pt5m-V-flat-g346-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 346"

else if ( -d "$batch_dir/working/g346" ) then
   echo "Work folder already exists; inspect logs/g346.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 346: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g346"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g346"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_11" "0541075" "0541079" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g346.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g346.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_11-pt5m-V-flat-g346-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 346"
   else
       echo "Failed group 346; see logs/g346.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 346"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 347"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_11-pt5m-R-flat-g347-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 347"

else if ( -d "$batch_dir/working/g347" ) then
   echo "Work folder already exists; inspect logs/g347.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 347: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g347"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g347"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_11" "0541080" "0541084" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g347.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g347.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_11-pt5m-R-flat-g347-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 347"
   else
       echo "Failed group 347; see logs/g347.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 347"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 348"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_11-pt5m-I-flat-g348-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 348"

else if ( -d "$batch_dir/working/g348" ) then
   echo "Work folder already exists; inspect logs/g348.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 348: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g348"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g348"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_11" "0541085" "0541089" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g348.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g348.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_11-pt5m-I-flat-g348-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 348"
   else
       echo "Failed group 348; see logs/g348.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 348"
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


echo "Processing group 350"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_10-pt5m-V-flat-g350-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 350"

else if ( -d "$batch_dir/working/g350" ) then
   echo "Work folder already exists; inspect logs/g350.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 350: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g350"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g350"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_10" "0540635" "0540639" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g350.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g350.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_10-pt5m-V-flat-g350-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 350"
   else
       echo "Failed group 350; see logs/g350.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 350"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 351"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_10-pt5m-R-flat-g351-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 351"

else if ( -d "$batch_dir/working/g351" ) then
   echo "Work folder already exists; inspect logs/g351.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 351: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g351"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g351"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_10" "0540640" "0540644" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g351.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g351.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_10-pt5m-R-flat-g351-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 351"
   else
       echo "Failed group 351; see logs/g351.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 351"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 352"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_10-pt5m-I-flat-g352-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 352"

else if ( -d "$batch_dir/working/g352" ) then
   echo "Work folder already exists; inspect logs/g352.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 352: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g352"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g352"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_10" "0540645" "0540649" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g352.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g352.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_10-pt5m-I-flat-g352-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 352"
   else
       echo "Failed group 352; see logs/g352.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 352"
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


echo "Processing group 356"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_04-pt5m-R-flat-g356-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 356"

else if ( -d "$batch_dir/working/g356" ) then
   echo "Work folder already exists; inspect logs/g356.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 356: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g356"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g356"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_04" "0539922" "0539926" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g356.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g356.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_04-pt5m-R-flat-g356-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 356"
   else
       echo "Failed group 356; see logs/g356.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 356"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 357"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_04-pt5m-I-flat-g357-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 357"

else if ( -d "$batch_dir/working/g357" ) then
   echo "Work folder already exists; inspect logs/g357.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 357: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g357"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g357"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_04" "0539927" "0539931" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g357.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g357.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_04-pt5m-I-flat-g357-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 357"
   else
       echo "Failed group 357; see logs/g357.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 357"
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


echo "Processing group 359"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_02-pt5m-V-flat-g359-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 359"

else if ( -d "$batch_dir/working/g359" ) then
   echo "Work folder already exists; inspect logs/g359.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 359: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g359"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g359"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_02" "0539241" "0539245" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g359.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g359.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_02-pt5m-V-flat-g359-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 359"
   else
       echo "Failed group 359; see logs/g359.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 359"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 360"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_02-pt5m-R-flat-g360-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 360"

else if ( -d "$batch_dir/working/g360" ) then
   echo "Work folder already exists; inspect logs/g360.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 360: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g360"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g360"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_02" "0539246" "0539250" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g360.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g360.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_02-pt5m-R-flat-g360-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 360"
   else
       echo "Failed group 360; see logs/g360.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 360"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 361"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_02-pt5m-I-flat-g361-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 361"

else if ( -d "$batch_dir/working/g361" ) then
   echo "Work folder already exists; inspect logs/g361.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 361: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g361"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g361"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_02" "0539251" "0539255" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g361.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g361.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_02-pt5m-I-flat-g361-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 361"
   else
       echo "Failed group 361; see logs/g361.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 361"
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


echo "Processing group 363"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_01-pt5m-V-flat-g363-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 363"

else if ( -d "$batch_dir/working/g363" ) then
   echo "Work folder already exists; inspect logs/g363.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 363: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g363"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g363"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_01" "0538872" "0538876" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g363.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g363.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_01-pt5m-V-flat-g363-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 363"
   else
       echo "Failed group 363; see logs/g363.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 363"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 364"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_01-pt5m-R-flat-g364-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 364"

else if ( -d "$batch_dir/working/g364" ) then
   echo "Work folder already exists; inspect logs/g364.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 364: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g364"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g364"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_01" "0538877" "0538881" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g364.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g364.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_01-pt5m-R-flat-g364-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 364"
   else
       echo "Failed group 364; see logs/g364.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 364"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 365"

if ( -e "$batch_dir/output_mosaics/at2019np-19_03_01-pt5m-I-flat-g365-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 365"

else if ( -d "$batch_dir/working/g365" ) then
   echo "Work folder already exists; inspect logs/g365.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 365: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g365"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g365"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_03_01" "0538882" "0538886" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g365.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g365.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_03_01-pt5m-I-flat-g365-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 365"
   else
       echo "Failed group 365; see logs/g365.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 365"
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


echo "Processing group 368"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_28-pt5m-R-flat-g368-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 368"

else if ( -d "$batch_dir/working/g368" ) then
   echo "Work folder already exists; inspect logs/g368.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 368: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g368"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g368"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_28" "0538456" "0538460" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g368.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g368.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_28-pt5m-R-flat-g368-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 368"
   else
       echo "Failed group 368; see logs/g368.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 368"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 369"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_28-pt5m-I-flat-g369-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 369"

else if ( -d "$batch_dir/working/g369" ) then
   echo "Work folder already exists; inspect logs/g369.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 369: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g369"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g369"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_28" "0538461" "0538465" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g369.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g369.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_28-pt5m-I-flat-g369-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 369"
   else
       echo "Failed group 369; see logs/g369.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 369"
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


echo "Processing group 371"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_26-pt5m-V-flat-g371-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 371"

else if ( -d "$batch_dir/working/g371" ) then
   echo "Work folder already exists; inspect logs/g371.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 371: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g371"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g371"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_26" "0537003" "0537007" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g371.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g371.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_26-pt5m-V-flat-g371-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 371"
   else
       echo "Failed group 371; see logs/g371.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 371"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 372"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_26-pt5m-R-flat-g372-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 372"

else if ( -d "$batch_dir/working/g372" ) then
   echo "Work folder already exists; inspect logs/g372.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 372: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g372"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g372"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_26" "0537008" "0537012" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g372.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g372.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_26-pt5m-R-flat-g372-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 372"
   else
       echo "Failed group 372; see logs/g372.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 372"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 373"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_26-pt5m-I-flat-g373-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 373"

else if ( -d "$batch_dir/working/g373" ) then
   echo "Work folder already exists; inspect logs/g373.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 373: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g373"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g373"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_26" "0537013" "0537017" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g373.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g373.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_26-pt5m-I-flat-g373-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 373"
   else
       echo "Failed group 373; see logs/g373.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 373"
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


echo "Processing group 379"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_24-pt5m-V-flat-g379-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 379"

else if ( -d "$batch_dir/working/g379" ) then
   echo "Work folder already exists; inspect logs/g379.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 379: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g379"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g379"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_24" "0536515" "0536519" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g379.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g379.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_24-pt5m-V-flat-g379-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 379"
   else
       echo "Failed group 379; see logs/g379.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 379"
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


echo "Processing group 381"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_24-pt5m-I-flat-g381-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 381"

else if ( -d "$batch_dir/working/g381" ) then
   echo "Work folder already exists; inspect logs/g381.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 381: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g381"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g381"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_24" "0536525" "0536529" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g381.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g381.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_24-pt5m-I-flat-g381-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 381"
   else
       echo "Failed group 381; see logs/g381.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 381"
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


echo "Processing group 383"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_23-pt5m-V-flat-g383-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 383"

else if ( -d "$batch_dir/working/g383" ) then
   echo "Work folder already exists; inspect logs/g383.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 383: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g383"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g383"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_23" "0536108" "0536112" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g383.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g383.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_23-pt5m-V-flat-g383-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 383"
   else
       echo "Failed group 383; see logs/g383.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 383"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 384"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_23-pt5m-R-flat-g384-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 384"

else if ( -d "$batch_dir/working/g384" ) then
   echo "Work folder already exists; inspect logs/g384.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 384: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g384"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g384"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_23" "0536113" "0536117" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g384.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g384.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_23-pt5m-R-flat-g384-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 384"
   else
       echo "Failed group 384; see logs/g384.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 384"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 385"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_23-pt5m-I-flat-g385-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 385"

else if ( -d "$batch_dir/working/g385" ) then
   echo "Work folder already exists; inspect logs/g385.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 385: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g385"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g385"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_23" "0536118" "0536122" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g385.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g385.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_23-pt5m-I-flat-g385-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 385"
   else
       echo "Failed group 385; see logs/g385.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 385"
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


echo "Processing group 388"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_22-pt5m-R-flat-g388-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 388"

else if ( -d "$batch_dir/working/g388" ) then
   echo "Work folder already exists; inspect logs/g388.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 388: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g388"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g388"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_22" "0535736" "0535740" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g388.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g388.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_22-pt5m-R-flat-g388-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 388"
   else
       echo "Failed group 388; see logs/g388.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 388"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 389"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_22-pt5m-I-flat-g389-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 389"

else if ( -d "$batch_dir/working/g389" ) then
   echo "Work folder already exists; inspect logs/g389.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 389: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g389"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g389"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_22" "0535741" "0535745" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g389.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g389.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_22-pt5m-I-flat-g389-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 389"
   else
       echo "Failed group 389; see logs/g389.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 389"
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


echo "Processing group 403"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_16-pt5m-R-flat-g403-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 403"

else if ( -d "$batch_dir/working/g403" ) then
   echo "Work folder already exists; inspect logs/g403.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 403: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g403"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g403"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_16" "0534388" "0534392" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g403.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g403.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_16-pt5m-R-flat-g403-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 403"
   else
       echo "Failed group 403; see logs/g403.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 403"
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


echo "Processing group 409"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_12-pt5m-V-flat-g409-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 409"

else if ( -d "$batch_dir/working/g409" ) then
   echo "Work folder already exists; inspect logs/g409.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 409: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g409"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g409"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_12" "0533978" "0533982" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g409.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g409.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_12-pt5m-V-flat-g409-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 409"
   else
       echo "Failed group 409; see logs/g409.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 409"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 410"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_12-pt5m-R-flat-g410-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 410"

else if ( -d "$batch_dir/working/g410" ) then
   echo "Work folder already exists; inspect logs/g410.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 410: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g410"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g410"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_12" "0533983" "0533987" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g410.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g410.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_12-pt5m-R-flat-g410-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 410"
   else
       echo "Failed group 410; see logs/g410.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 410"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 411"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_12-pt5m-I-flat-g411-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 411"

else if ( -d "$batch_dir/working/g411" ) then
   echo "Work folder already exists; inspect logs/g411.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 411: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g411"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g411"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_12" "0533988" "0533992" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g411.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g411.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_12-pt5m-I-flat-g411-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 411"
   else
       echo "Failed group 411; see logs/g411.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 411"
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


echo "Processing group 414"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_11-pt5m-R-flat-g414-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 414"

else if ( -d "$batch_dir/working/g414" ) then
   echo "Work folder already exists; inspect logs/g414.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 414: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g414"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g414"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_11" "0533593" "0533597" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g414.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g414.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_11-pt5m-R-flat-g414-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 414"
   else
       echo "Failed group 414; see logs/g414.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 414"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 415"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_11-pt5m-I-flat-g415-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 415"

else if ( -d "$batch_dir/working/g415" ) then
   echo "Work folder already exists; inspect logs/g415.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 415: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g415"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g415"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_11" "0533598" "0533602" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g415.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g415.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_11-pt5m-I-flat-g415-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 415"
   else
       echo "Failed group 415; see logs/g415.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 415"
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


echo "Processing group 417"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_10-pt5m-V-flat-g417-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 417"

else if ( -d "$batch_dir/working/g417" ) then
   echo "Work folder already exists; inspect logs/g417.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 417: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g417"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g417"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_10" "0533019" "0533023" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g417.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g417.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_10-pt5m-V-flat-g417-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 417"
   else
       echo "Failed group 417; see logs/g417.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 417"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 418"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_10-pt5m-R-flat-g418-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 418"

else if ( -d "$batch_dir/working/g418" ) then
   echo "Work folder already exists; inspect logs/g418.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 418: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g418"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g418"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_10" "0533024" "0533028" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g418.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g418.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_10-pt5m-R-flat-g418-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 418"
   else
       echo "Failed group 418; see logs/g418.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 418"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 419"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_10-pt5m-I-flat-g419-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 419"

else if ( -d "$batch_dir/working/g419" ) then
   echo "Work folder already exists; inspect logs/g419.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 419: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g419"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g419"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_10" "0533029" "0533033" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g419.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g419.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_10-pt5m-I-flat-g419-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 419"
   else
       echo "Failed group 419; see logs/g419.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 419"
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


echo "Processing group 421"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_09-pt5m-V-flat-g421-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 421"

else if ( -d "$batch_dir/working/g421" ) then
   echo "Work folder already exists; inspect logs/g421.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 421: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g421"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g421"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_09" "0532635" "0532639" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g421.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g421.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_09-pt5m-V-flat-g421-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 421"
   else
       echo "Failed group 421; see logs/g421.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 421"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 422"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_09-pt5m-R-flat-g422-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 422"

else if ( -d "$batch_dir/working/g422" ) then
   echo "Work folder already exists; inspect logs/g422.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 422: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g422"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g422"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_09" "0532640" "0532644" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g422.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g422.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_09-pt5m-R-flat-g422-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 422"
   else
       echo "Failed group 422; see logs/g422.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 422"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 423"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_09-pt5m-I-flat-g423-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 423"

else if ( -d "$batch_dir/working/g423" ) then
   echo "Work folder already exists; inspect logs/g423.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 423: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g423"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g423"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_09" "0532645" "0532649" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g423.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g423.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_09-pt5m-I-flat-g423-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 423"
   else
       echo "Failed group 423; see logs/g423.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 423"
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


echo "Processing group 425"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_08-pt5m-V-flat-g425-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 425"

else if ( -d "$batch_dir/working/g425" ) then
   echo "Work folder already exists; inspect logs/g425.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 425: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g425"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g425"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_08" "0532287" "0532291" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g425.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g425.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_08-pt5m-V-flat-g425-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 425"
   else
       echo "Failed group 425; see logs/g425.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 425"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 426"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_08-pt5m-R-flat-g426-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 426"

else if ( -d "$batch_dir/working/g426" ) then
   echo "Work folder already exists; inspect logs/g426.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 426: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g426"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g426"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_08" "0532292" "0532296" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g426.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g426.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_08-pt5m-R-flat-g426-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 426"
   else
       echo "Failed group 426; see logs/g426.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 426"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 427"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_08-pt5m-I-flat-g427-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 427"

else if ( -d "$batch_dir/working/g427" ) then
   echo "Work folder already exists; inspect logs/g427.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 427: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g427"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g427"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_08" "0532297" "0532301" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g427.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g427.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_08-pt5m-I-flat-g427-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 427"
   else
       echo "Failed group 427; see logs/g427.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 427"
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


echo "Processing group 431"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_06-pt5m-V-flat-g431-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 431"

else if ( -d "$batch_dir/working/g431" ) then
   echo "Work folder already exists; inspect logs/g431.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 431: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g431"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g431"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_06" "0531697" "0531701" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g431.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g431.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_06-pt5m-V-flat-g431-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 431"
   else
       echo "Failed group 431; see logs/g431.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 431"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 432"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_06-pt5m-R-flat-g432-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 432"

else if ( -d "$batch_dir/working/g432" ) then
   echo "Work folder already exists; inspect logs/g432.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 432: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g432"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g432"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_06" "0531702" "0531706" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g432.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g432.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_06-pt5m-R-flat-g432-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 432"
   else
       echo "Failed group 432; see logs/g432.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 432"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 433"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_06-pt5m-I-flat-g433-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 433"

else if ( -d "$batch_dir/working/g433" ) then
   echo "Work folder already exists; inspect logs/g433.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 433: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g433"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g433"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_06" "0531707" "0531711" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g433.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g433.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_06-pt5m-I-flat-g433-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 433"
   else
       echo "Failed group 433; see logs/g433.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 433"
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


echo "Processing group 435"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_05-pt5m-V-flat-g435-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 435"

else if ( -d "$batch_dir/working/g435" ) then
   echo "Work folder already exists; inspect logs/g435.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 435: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g435"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g435"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_05" "0531386" "0531390" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g435.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g435.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_05-pt5m-V-flat-g435-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 435"
   else
       echo "Failed group 435; see logs/g435.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 435"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 436"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_05-pt5m-R-flat-g436-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 436"

else if ( -d "$batch_dir/working/g436" ) then
   echo "Work folder already exists; inspect logs/g436.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 436: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g436"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g436"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_05" "0531391" "0531395" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g436.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g436.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_05-pt5m-R-flat-g436-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 436"
   else
       echo "Failed group 436; see logs/g436.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 436"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 437"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_05-pt5m-I-flat-g437-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 437"

else if ( -d "$batch_dir/working/g437" ) then
   echo "Work folder already exists; inspect logs/g437.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 437: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g437"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g437"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_05" "0531396" "0531400" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g437.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g437.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_05-pt5m-I-flat-g437-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 437"
   else
       echo "Failed group 437; see logs/g437.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 437"
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


echo "Processing group 440"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_04-pt5m-R-flat-g440-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 440"

else if ( -d "$batch_dir/working/g440" ) then
   echo "Work folder already exists; inspect logs/g440.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 440: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g440"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g440"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_04" "0531109" "0531113" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g440.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g440.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_04-pt5m-R-flat-g440-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 440"
   else
       echo "Failed group 440; see logs/g440.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 440"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 441"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_04-pt5m-I-flat-g441-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 441"

else if ( -d "$batch_dir/working/g441" ) then
   echo "Work folder already exists; inspect logs/g441.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 441: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g441"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g441"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_04" "0531114" "0531118" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g441.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g441.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_04-pt5m-I-flat-g441-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 441"
   else
       echo "Failed group 441; see logs/g441.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 441"
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


echo "Processing group 444"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_03-pt5m-V-flat-g444-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 444"

else if ( -d "$batch_dir/working/g444" ) then
   echo "Work folder already exists; inspect logs/g444.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 444: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g444"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g444"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_03" "0530747" "0530751" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g444.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g444.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_03-pt5m-V-flat-g444-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 444"
   else
       echo "Failed group 444; see logs/g444.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 444"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 445"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_03-pt5m-R-flat-g445-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 445"

else if ( -d "$batch_dir/working/g445" ) then
   echo "Work folder already exists; inspect logs/g445.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 445: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g445"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g445"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_03" "0530752" "0530756" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g445.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g445.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_03-pt5m-R-flat-g445-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 445"
   else
       echo "Failed group 445; see logs/g445.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 445"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 446"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_03-pt5m-I-flat-g446-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 446"

else if ( -d "$batch_dir/working/g446" ) then
   echo "Work folder already exists; inspect logs/g446.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 446: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g446"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g446"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_03" "0530757" "0530761" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g446.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g446.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_03-pt5m-I-flat-g446-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 446"
   else
       echo "Failed group 446; see logs/g446.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 446"
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


echo "Processing group 448"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_02-pt5m-V-flat-g448-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 448"

else if ( -d "$batch_dir/working/g448" ) then
   echo "Work folder already exists; inspect logs/g448.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 448: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g448"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g448"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_02" "0530472" "0530474" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g448.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g448.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_02-pt5m-V-flat-g448-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 448"
   else
       echo "Failed group 448; see logs/g448.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 448"
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


echo "Processing group 453"

if ( -e "$batch_dir/output_mosaics/at2019np-19_02_01-pt5m-V-flat-g453-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 453"

else if ( -d "$batch_dir/working/g453" ) then
   echo "Work folder already exists; inspect logs/g453.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 453: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g453"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g453"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_02_01" "0530325" "0530328" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g453.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g453.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_02_01-pt5m-V-flat-g453-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 453"
   else
       echo "Failed group 453; see logs/g453.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 453"
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


echo "Processing group 455"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_31-pt5m-V-flat-g455-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 455"

else if ( -d "$batch_dir/working/g455" ) then
   echo "Work folder already exists; inspect logs/g455.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 455: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g455"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g455"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_31" "0530112" "0530116" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g455.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g455.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_31-pt5m-V-flat-g455-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 455"
   else
       echo "Failed group 455; see logs/g455.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 455"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 456"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_31-pt5m-R-flat-g456-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 456"

else if ( -d "$batch_dir/working/g456" ) then
   echo "Work folder already exists; inspect logs/g456.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 456: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g456"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g456"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_31" "0530117" "0530121" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g456.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g456.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_31-pt5m-R-flat-g456-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 456"
   else
       echo "Failed group 456; see logs/g456.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 456"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 457"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_31-pt5m-I-flat-g457-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 457"

else if ( -d "$batch_dir/working/g457" ) then
   echo "Work folder already exists; inspect logs/g457.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 457: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g457"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g457"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_31" "0530122" "0530126" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g457.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g457.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_31-pt5m-I-flat-g457-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 457"
   else
       echo "Failed group 457; see logs/g457.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 457"
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


echo "Processing group 459"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_30-pt5m-V-flat-g459-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 459"

else if ( -d "$batch_dir/working/g459" ) then
   echo "Work folder already exists; inspect logs/g459.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 459: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g459"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g459"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_30" "0529747" "0529751" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g459.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g459.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_30-pt5m-V-flat-g459-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 459"
   else
       echo "Failed group 459; see logs/g459.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 459"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 460"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_30-pt5m-R-flat-g460-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 460"

else if ( -d "$batch_dir/working/g460" ) then
   echo "Work folder already exists; inspect logs/g460.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 460: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g460"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g460"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_30" "0529752" "0529756" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g460.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g460.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_30-pt5m-R-flat-g460-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 460"
   else
       echo "Failed group 460; see logs/g460.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 460"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 461"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_30-pt5m-I-flat-g461-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 461"

else if ( -d "$batch_dir/working/g461" ) then
   echo "Work folder already exists; inspect logs/g461.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 461: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g461"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g461"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_30" "0529757" "0529761" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g461.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g461.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_30-pt5m-I-flat-g461-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 461"
   else
       echo "Failed group 461; see logs/g461.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 461"
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


echo "Processing group 466"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_29-pt5m-V-flat-g466-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 466"

else if ( -d "$batch_dir/working/g466" ) then
   echo "Work folder already exists; inspect logs/g466.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 466: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g466"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g466"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_29" "0529388" "0529392" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g466.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g466.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_29-pt5m-V-flat-g466-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 466"
   else
       echo "Failed group 466; see logs/g466.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 466"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 467"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_29-pt5m-R-flat-g467-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 467"

else if ( -d "$batch_dir/working/g467" ) then
   echo "Work folder already exists; inspect logs/g467.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 467: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g467"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g467"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_29" "0529393" "0529397" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g467.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g467.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_29-pt5m-R-flat-g467-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 467"
   else
       echo "Failed group 467; see logs/g467.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 467"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 468"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_29-pt5m-I-flat-g468-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 468"

else if ( -d "$batch_dir/working/g468" ) then
   echo "Work folder already exists; inspect logs/g468.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 468: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g468"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g468"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_29" "0529398" "0529402" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g468.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g468.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_29-pt5m-I-flat-g468-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 468"
   else
       echo "Failed group 468; see logs/g468.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 468"
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


echo "Processing group 474"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_28-pt5m-V-flat-g474-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 474"

else if ( -d "$batch_dir/working/g474" ) then
   echo "Work folder already exists; inspect logs/g474.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 474: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g474"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g474"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_28" "0528992" "0528996" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g474.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g474.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_28-pt5m-V-flat-g474-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 474"
   else
       echo "Failed group 474; see logs/g474.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 474"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 475"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_28-pt5m-R-flat-g475-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 475"

else if ( -d "$batch_dir/working/g475" ) then
   echo "Work folder already exists; inspect logs/g475.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 475: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g475"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g475"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_28" "0528997" "0529001" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g475.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g475.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_28-pt5m-R-flat-g475-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 475"
   else
       echo "Failed group 475; see logs/g475.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 475"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 476"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_28-pt5m-I-flat-g476-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 476"

else if ( -d "$batch_dir/working/g476" ) then
   echo "Work folder already exists; inspect logs/g476.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 476: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g476"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g476"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_28" "0529002" "0529006" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g476.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g476.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_28-pt5m-I-flat-g476-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 476"
   else
       echo "Failed group 476; see logs/g476.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 476"
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


echo "Processing group 479"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_27-pt5m-V-flat-g479-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 479"

else if ( -d "$batch_dir/working/g479" ) then
   echo "Work folder already exists; inspect logs/g479.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 479: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g479"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g479"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_27" "0528677" "0528681" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g479.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g479.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_27-pt5m-V-flat-g479-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 479"
   else
       echo "Failed group 479; see logs/g479.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 479"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 480"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_27-pt5m-R-flat-g480-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 480"

else if ( -d "$batch_dir/working/g480" ) then
   echo "Work folder already exists; inspect logs/g480.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 480: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g480"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g480"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_27" "0528682" "0528686" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g480.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g480.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_27-pt5m-R-flat-g480-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 480"
   else
       echo "Failed group 480; see logs/g480.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 480"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 481"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_27-pt5m-I-flat-g481-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 481"

else if ( -d "$batch_dir/working/g481" ) then
   echo "Work folder already exists; inspect logs/g481.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 481: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g481"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g481"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_27" "0528687" "0528691" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g481.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g481.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_27-pt5m-I-flat-g481-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 481"
   else
       echo "Failed group 481; see logs/g481.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 481"
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


echo "Processing group 483"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_26-pt5m-V-flat-g483-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 483"

else if ( -d "$batch_dir/working/g483" ) then
   echo "Work folder already exists; inspect logs/g483.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 483: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g483"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g483"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_26" "0528337" "0528341" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g483.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g483.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_26-pt5m-V-flat-g483-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 483"
   else
       echo "Failed group 483; see logs/g483.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 483"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 484"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_26-pt5m-R-flat-g484-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 484"

else if ( -d "$batch_dir/working/g484" ) then
   echo "Work folder already exists; inspect logs/g484.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 484: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g484"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g484"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_26" "0528342" "0528346" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g484.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g484.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_26-pt5m-R-flat-g484-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 484"
   else
       echo "Failed group 484; see logs/g484.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 484"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 485"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_26-pt5m-I-flat-g485-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 485"

else if ( -d "$batch_dir/working/g485" ) then
   echo "Work folder already exists; inspect logs/g485.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 485: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g485"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g485"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_26" "0528347" "0528351" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g485.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g485.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_26-pt5m-I-flat-g485-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 485"
   else
       echo "Failed group 485; see logs/g485.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 485"
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


echo "Processing group 488"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_24-pt5m-R-flat-g488-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 488"

else if ( -d "$batch_dir/working/g488" ) then
   echo "Work folder already exists; inspect logs/g488.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 488: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g488"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g488"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_24" "0527776" "0527780" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g488.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g488.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_24-pt5m-R-flat-g488-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 488"
   else
       echo "Failed group 488; see logs/g488.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 488"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 489"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_24-pt5m-I-flat-g489-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 489"

else if ( -d "$batch_dir/working/g489" ) then
   echo "Work folder already exists; inspect logs/g489.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 489: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g489"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g489"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_24" "0527781" "0527785" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g489.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g489.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_24-pt5m-I-flat-g489-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 489"
   else
       echo "Failed group 489; see logs/g489.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 489"
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


echo "Processing group 501"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_19-pt5m-R-flat-g501-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 501"

else if ( -d "$batch_dir/working/g501" ) then
   echo "Work folder already exists; inspect logs/g501.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 501: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g501"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g501"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_19" "0526429" "0526433" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g501.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g501.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_19-pt5m-R-flat-g501-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 501"
   else
       echo "Failed group 501; see logs/g501.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 501"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 502"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_19-pt5m-I-flat-g502-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 502"

else if ( -d "$batch_dir/working/g502" ) then
   echo "Work folder already exists; inspect logs/g502.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 502: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g502"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g502"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_19" "0526434" "0526438" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g502.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g502.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_19-pt5m-I-flat-g502-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 502"
   else
       echo "Failed group 502; see logs/g502.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 502"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 503"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_18-pt5m-B-flat-g503-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 503"

else if ( -d "$batch_dir/working/g503" ) then
   echo "Work folder already exists; inspect logs/g503.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" ) then
   echo "Missing flat for group 503: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g503"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g503"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_18" "0526147" "0526148" 5.0 "/home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" >&! "$batch_dir/logs/g503.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Bflatnorm2x2.fits" "$batch_dir/logs/g503.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_18-pt5m-B-flat-g503-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 503"
   else
       echo "Failed group 503; see logs/g503.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 503"
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


echo "Processing group 506"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_15-pt5m-R-flat-g506-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 506"

else if ( -d "$batch_dir/working/g506" ) then
   echo "Work folder already exists; inspect logs/g506.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 506: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g506"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g506"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_15" "0525707" "0525711" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g506.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g506.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_15-pt5m-R-flat-g506-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 506"
   else
       echo "Failed group 506; see logs/g506.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 506"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 507"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_15-pt5m-I-flat-g507-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 507"

else if ( -d "$batch_dir/working/g507" ) then
   echo "Work folder already exists; inspect logs/g507.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 507: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g507"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g507"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_15" "0525712" "0525716" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g507.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g507.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_15-pt5m-I-flat-g507-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 507"
   else
       echo "Failed group 507; see logs/g507.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 507"
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


echo "Processing group 509"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_14-pt5m-V-flat-g509-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 509"

else if ( -d "$batch_dir/working/g509" ) then
   echo "Work folder already exists; inspect logs/g509.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 509: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g509"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g509"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_14" "0525339" "0525343" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g509.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g509.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_14-pt5m-V-flat-g509-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 509"
   else
       echo "Failed group 509; see logs/g509.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 509"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 510"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_14-pt5m-R-flat-g510-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 510"

else if ( -d "$batch_dir/working/g510" ) then
   echo "Work folder already exists; inspect logs/g510.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 510: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g510"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g510"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_14" "0525344" "0525348" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g510.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g510.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_14-pt5m-R-flat-g510-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 510"
   else
       echo "Failed group 510; see logs/g510.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 510"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 511"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_14-pt5m-I-flat-g511-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 511"

else if ( -d "$batch_dir/working/g511" ) then
   echo "Work folder already exists; inspect logs/g511.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 511: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g511"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g511"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_14" "0525349" "0525353" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g511.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g511.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_14-pt5m-I-flat-g511-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 511"
   else
       echo "Failed group 511; see logs/g511.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 511"
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


echo "Processing group 513"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_13-pt5m-V-flat-g513-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 513"

else if ( -d "$batch_dir/working/g513" ) then
   echo "Work folder already exists; inspect logs/g513.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 513: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g513"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g513"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_13" "0525092" "0525096" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g513.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g513.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_13-pt5m-V-flat-g513-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 513"
   else
       echo "Failed group 513; see logs/g513.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 513"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 514"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_13-pt5m-R-flat-g514-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 514"

else if ( -d "$batch_dir/working/g514" ) then
   echo "Work folder already exists; inspect logs/g514.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 514: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g514"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g514"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_13" "0525097" "0525101" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g514.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g514.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_13-pt5m-R-flat-g514-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 514"
   else
       echo "Failed group 514; see logs/g514.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 514"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 515"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_13-pt5m-I-flat-g515-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 515"

else if ( -d "$batch_dir/working/g515" ) then
   echo "Work folder already exists; inspect logs/g515.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 515: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g515"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g515"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_13" "0525102" "0525106" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g515.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g515.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_13-pt5m-I-flat-g515-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 515"
   else
       echo "Failed group 515; see logs/g515.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 515"
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


echo "Processing group 518"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_12-pt5m-R-flat-g518-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 518"

else if ( -d "$batch_dir/working/g518" ) then
   echo "Work folder already exists; inspect logs/g518.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 518: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g518"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g518"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_12" "0524722" "0524726" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g518.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g518.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_12-pt5m-R-flat-g518-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 518"
   else
       echo "Failed group 518; see logs/g518.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 518"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 519"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_12-pt5m-I-flat-g519-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 519"

else if ( -d "$batch_dir/working/g519" ) then
   echo "Work folder already exists; inspect logs/g519.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 519: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g519"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g519"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_12" "0524727" "0524731" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g519.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g519.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_12-pt5m-I-flat-g519-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 519"
   else
       echo "Failed group 519; see logs/g519.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 519"
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


echo "Processing group 521"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_11-pt5m-V-flat-g521-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 521"

else if ( -d "$batch_dir/working/g521" ) then
   echo "Work folder already exists; inspect logs/g521.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 521: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g521"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g521"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_11" "0524248" "0524252" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g521.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g521.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_11-pt5m-V-flat-g521-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 521"
   else
       echo "Failed group 521; see logs/g521.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 521"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 522"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_11-pt5m-R-flat-g522-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 522"

else if ( -d "$batch_dir/working/g522" ) then
   echo "Work folder already exists; inspect logs/g522.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 522: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g522"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g522"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_11" "0524253" "0524257" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g522.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g522.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_11-pt5m-R-flat-g522-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 522"
   else
       echo "Failed group 522; see logs/g522.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 522"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 523"

if ( -e "$batch_dir/output_mosaics/at2019np-19_01_11-pt5m-I-flat-g523-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 523"

else if ( -d "$batch_dir/working/g523" ) then
   echo "Work folder already exists; inspect logs/g523.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 523: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g523"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g523"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_01_11" "0524258" "0524258" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g523.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g523.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/at2019np-19_01_11-pt5m-I-flat-g523-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 523"
   else
       echo "Failed group 523; see logs/g523.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 523"
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


echo "Processing group 525"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_27-pt5m-V-flat-g525-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 525"

else if ( -d "$batch_dir/working/g525" ) then
   echo "Work folder already exists; inspect logs/g525.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 525: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g525"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g525"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_27" "0564573" "0564574" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g525.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g525.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_27-pt5m-V-flat-g525-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 525"
   else
       echo "Failed group 525; see logs/g525.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 525"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 526"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_25-pt5m-V-flat-g526-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 526"

else if ( -d "$batch_dir/working/g526" ) then
   echo "Work folder already exists; inspect logs/g526.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 526: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g526"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g526"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_25" "0563891" "0563896" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g526.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g526.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_25-pt5m-V-flat-g526-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 526"
   else
       echo "Failed group 526; see logs/g526.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 526"
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


echo "Processing group 528"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_25-pt5m-R-flat-g528-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 528"

else if ( -d "$batch_dir/working/g528" ) then
   echo "Work folder already exists; inspect logs/g528.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 528: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g528"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g528"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_25" "0563902" "0563906" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g528.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g528.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_25-pt5m-R-flat-g528-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 528"
   else
       echo "Failed group 528; see logs/g528.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 528"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 529"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_25-pt5m-I-flat-g529-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 529"

else if ( -d "$batch_dir/working/g529" ) then
   echo "Work folder already exists; inspect logs/g529.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 529: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g529"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g529"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_25" "0563907" "0563911" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g529.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g529.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_25-pt5m-I-flat-g529-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 529"
   else
       echo "Failed group 529; see logs/g529.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 529"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 530"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_21-pt5m-V-flat-g530-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 530"

else if ( -d "$batch_dir/working/g530" ) then
   echo "Work folder already exists; inspect logs/g530.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 530: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g530"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g530"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_21" "0563122" "0563127" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g530.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g530.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_21-pt5m-V-flat-g530-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 530"
   else
       echo "Failed group 530; see logs/g530.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 530"
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


echo "Processing group 532"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_21-pt5m-R-flat-g532-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 532"

else if ( -d "$batch_dir/working/g532" ) then
   echo "Work folder already exists; inspect logs/g532.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 532: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g532"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g532"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_21" "0563133" "0563137" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g532.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g532.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_21-pt5m-R-flat-g532-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 532"
   else
       echo "Failed group 532; see logs/g532.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 532"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 533"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_21-pt5m-I-flat-g533-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 533"

else if ( -d "$batch_dir/working/g533" ) then
   echo "Work folder already exists; inspect logs/g533.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 533: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g533"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g533"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_21" "0563138" "0563142" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g533.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g533.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_21-pt5m-I-flat-g533-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 533"
   else
       echo "Failed group 533; see logs/g533.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 533"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 534"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_20-pt5m-V-flat-g534-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 534"

else if ( -d "$batch_dir/working/g534" ) then
   echo "Work folder already exists; inspect logs/g534.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 534: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g534"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g534"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_20" "0562811" "0562816" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g534.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g534.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_20-pt5m-V-flat-g534-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 534"
   else
       echo "Failed group 534; see logs/g534.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 534"
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


echo "Processing group 536"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_20-pt5m-R-flat-g536-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 536"

else if ( -d "$batch_dir/working/g536" ) then
   echo "Work folder already exists; inspect logs/g536.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 536: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g536"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g536"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_20" "0562822" "0562826" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g536.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g536.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_20-pt5m-R-flat-g536-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 536"
   else
       echo "Failed group 536; see logs/g536.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 536"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 537"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_20-pt5m-I-flat-g537-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 537"

else if ( -d "$batch_dir/working/g537" ) then
   echo "Work folder already exists; inspect logs/g537.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 537: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g537"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g537"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_20" "0562827" "0562831" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g537.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g537.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_20-pt5m-I-flat-g537-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 537"
   else
       echo "Failed group 537; see logs/g537.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 537"
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


echo "Processing group 540"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_14-pt5m-V-flat-g540-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 540"

else if ( -d "$batch_dir/working/g540" ) then
   echo "Work folder already exists; inspect logs/g540.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 540: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g540"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g540"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_14" "0561262" "0561267" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g540.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g540.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_14-pt5m-V-flat-g540-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 540"
   else
       echo "Failed group 540; see logs/g540.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 540"
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


echo "Processing group 542"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_14-pt5m-R-flat-g542-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 542"

else if ( -d "$batch_dir/working/g542" ) then
   echo "Work folder already exists; inspect logs/g542.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 542: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g542"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g542"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_14" "0561273" "0561277" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g542.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g542.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_14-pt5m-R-flat-g542-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 542"
   else
       echo "Failed group 542; see logs/g542.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 542"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 543"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_14-pt5m-I-flat-g543-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 543"

else if ( -d "$batch_dir/working/g543" ) then
   echo "Work folder already exists; inspect logs/g543.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 543: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g543"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g543"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_14" "0561278" "0561282" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g543.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g543.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_14-pt5m-I-flat-g543-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 543"
   else
       echo "Failed group 543; see logs/g543.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 543"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 544"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_12-pt5m-V-flat-g544-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 544"

else if ( -d "$batch_dir/working/g544" ) then
   echo "Work folder already exists; inspect logs/g544.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" ) then
   echo "Missing flat for group 544: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g544"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g544"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_12" "0560555" "0560560" 5.0 "/home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" >&! "$batch_dir/logs/g544.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Vflatnorm2x2.fits" "$batch_dir/logs/g544.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_12-pt5m-V-flat-g544-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 544"
   else
       echo "Failed group 544; see logs/g544.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 544"
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


echo "Processing group 546"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_12-pt5m-R-flat-g546-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 546"

else if ( -d "$batch_dir/working/g546" ) then
   echo "Work folder already exists; inspect logs/g546.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" ) then
   echo "Missing flat for group 546: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g546"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g546"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_12" "0560566" "0560570" 5.0 "/home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" >&! "$batch_dir/logs/g546.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Rflatnorm2x2.fits" "$batch_dir/logs/g546.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_12-pt5m-R-flat-g546-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 546"
   else
       echo "Failed group 546; see logs/g546.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 546"
   endif

   cd "$batch_dir"
   if ( $status != 0 ) exit 1
endif


echo "Processing group 547"

if ( -e "$batch_dir/output_mosaics/sn2019np-19_06_12-pt5m-I-flat-g547-mosaic.fits" ) then
   echo "Output already exists; not overwriting group 547"

else if ( -d "$batch_dir/working/g547" ) then
   echo "Work folder already exists; inspect logs/g547.log"

else if ( ! -f "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" ) then
   echo "Missing flat for group 547: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits"

else
   mkdir "$batch_dir/working/g547"
   if ( $status != 0 ) exit 1

   cd "$batch_dir/working/g547"
   if ( $status != 0 ) exit 1

   python /mnt/64bin/stackX2.py "pt5m" "19_06_12" "0560571" "0560575" 5.0 "/home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" >&! "$batch_dir/logs/g547.log"
   set stack_status = $status

   grep -q N_ASTARS amosaic.fits >& /dev/null
   set astrom_status = $status

   grep -q -F "Flatfield found: /home/astrolab/SNe/flatfields/2019_Iflatnorm2x2.fits" "$batch_dir/logs/g547.log" >& /dev/null
   set flat_status = $status

   if ( $stack_status == 0 && $astrom_status == 0 && $flat_status == 0 ) then
       cp amosaic.fits "$batch_dir/output_mosaics/sn2019np-19_06_12-pt5m-I-flat-g547-mosaic.fits"
       if ( $status != 0 ) exit 1

       echo "Saved group 547"
   else
       echo "Failed group 547; see logs/g547.log"
       if ( $flat_status != 0 ) echo "Flat was not applied in group 547"
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

