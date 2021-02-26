#!/bin/bash


echo
echo "---- sin ICs C y D"
echo

ANA2 het_4_top_5vky.pdb -c acb.cfg -o 4_vol_acb_het 
ANA2 het_4_top_5vky.pdb -c adb.cfg -o 4_vol_adb_het

exit 0
