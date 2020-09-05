#!/bin/bash

echo
echo "---- sin ICs C y D"
echo

ANA2 het_2_top_lf3f.pdb -c acb.cfg -o 2_vol_acb_het 
ANA2 het_2_top_lf3f.pdb -c adb.cfg -o 2_vol_adb_het

exit 0
