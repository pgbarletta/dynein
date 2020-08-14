#!/bin/bash

ANA2 1_top_3fm7.pdb -c ecf.cfg
ANA2 1_top_3fm7.pdb -c edf.cfg
ANA2 1_top_3fm7.pdb -c acb.cfg
ANA2 1_top_3fm7.pdb -c adb.cfg

echo
echo "---- sin ICs C y D"
echo

ANA2 het_1_top_3fm7.pdb -c acb.cfg -o 1_vol_acb_het 
ANA2 het_1_top_3fm7.pdb -c adb.cfg -o 1_vol_adb_het
ANA2 het_1_top_3fm7.pdb -c ecf.cfg -o 1_vol_ecf_het
ANA2 het_1_top_3fm7.pdb -c edf.cfg -o 1_vol_edf_het

#ANA2 1_top_3fm7.pdb -c ecf.cfg -f ecf
#ANA2 1_top_3fm7.pdb -c edf.cfg -f edf
#ANA2 1_top_3fm7.pdb -c acb.cfg -f acb
#ANA2 1_top_3fm7.pdb -c adb.cfg -f adb

exit 0
