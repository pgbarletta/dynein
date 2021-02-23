#!/bin/bash

echo "ACB"
ANA2 het_top_5vky.pdb -c acb.cfg -d ../pca/full_avgfit_5vky.nc -o vol_acb_trj_het

echo "ADB"
ANA2 het_top_5vky.pdb -c adb.cfg -d ../pca/full_avgfit_5vky.nc -o vol_adb_trj_het

exit 0
