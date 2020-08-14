#!/bin/bash

ANA2 top_3fm7.pdb -c ecf.cfg
ANA2 top_3fm7.pdb -c edf.cfg
ANA2 top_3fm7.pdb -c acb.cfg
ANA2 top_3fm7.pdb -c adb.cfg

echo
echo "---- sin ICs C y D"
echo

ANA2 het_top_3fm7.pdb -c acb.cfg -o vol_acb_het 
ANA2 het_top_3fm7.pdb -c adb.cfg -o vol_adb_het
ANA2 het_top_3fm7.pdb -c ecf.cfg -o vol_ecf_het
ANA2 het_top_3fm7.pdb -c edf.cfg -o vol_edf_het

#ANA2 top_3fm7.pdb -c ecf.cfg -f ecf
#ANA2 top_3fm7.pdb -c edf.cfg -f edf
#ANA2 top_3fm7.pdb -c acb.cfg -f acb
#ANA2 top_3fm7.pdb -c adb.cfg -f adb

exit 0
