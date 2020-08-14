#!/bin/bash

ANA2 2_top_3fm7.pdb -c ecf.cfg
ANA2 2_top_3fm7.pdb -c edf.cfg
ANA2 2_top_3fm7.pdb -c acb.cfg
ANA2 2_top_3fm7.pdb -c adb.cfg

echo
echo "---- sin ICs C y D"
echo

ANA2 het_2_top_3fm7.pdb -c acb.cfg -o 2_vol_acb_het 
ANA2 het_2_top_3fm7.pdb -c adb.cfg -o 2_vol_adb_het
ANA2 het_2_top_3fm7.pdb -c ecf.cfg -o 2_vol_ecf_het
ANA2 het_2_top_3fm7.pdb -c edf.cfg -o 2_vol_edf_het

#ANA2 2_top_3fm7.pdb -c ecf.cfg -f ecf
#ANA2 2_top_3fm7.pdb -c edf.cfg -f edf
#ANA2 2_top_3fm7.pdb -c acb.cfg -f acb
#ANA2 2_top_3fm7.pdb -c adb.cfg -f adb

exit 0
