#!/bin/bash

ANA2 4_top_lb3f.pdb -c acb.cfg
ANA2 4_top_lb3f.pdb -c adb.cfg

echo
echo "---- sin ICs C y D"
echo

ANA2 het_4_top_lb3f.pdb -c acb.cfg -o 4_vol_acb_het 
ANA2 het_4_top_lb3f.pdb -c adb.cfg -o 4_vol_adb_het

exit 0
