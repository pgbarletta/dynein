#!/bin/bash


echo
echo "---- sin ICs C y D"
echo

ANA2 het_1_top_1xdx.pdb -c acb.cfg -o 1_vol_acb_het 
ANA2 het_1_top_1xdx.pdb -c adb.cfg -o 1_vol_adb_het

exit 0
