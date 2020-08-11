#!/bin/bash

ANA2 top_lb3f.pdb -c acb.cfg
ANA2 top_lb3f.pdb -c adb.cfg

echo
echo "---- sin ICs C y D"
echo

ANA2 het_top_lb3f.pdb -c acb.cfg -o vol_acb_het 
ANA2 het_top_lb3f.pdb -c adb.cfg -o vol_adb_het

exit 0
