#!/bin/bash


echo
echo "---- sin ICs C y D"
echo

ANA2 het_top_1xdx.pdb -c acb.cfg -o vol_acb_het 
ANA2 het_top_1xdx.pdb -c adb.cfg -o vol_adb_het

exit 0
