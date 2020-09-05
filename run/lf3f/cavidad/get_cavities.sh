#!/bin/bash

echo
echo "---- sin ICs C y D"
echo

ANA2 het_top_lf3f.pdb -c acb.cfg -o vol_acb_het 
ANA2 het_top_lf3f.pdb -c adb.cfg -o vol_adb_het

exit 0
