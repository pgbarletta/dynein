#!/bin/bash


echo
echo "---- sin ICs C y D"
echo

ANA2 het_2_top_1xdx.pdb -c acb.cfg -o 2_vol_acb_het 
ANA2 het_2_top_1xdx.pdb -c adb.cfg -o 2_vol_adb_het

exit 0
