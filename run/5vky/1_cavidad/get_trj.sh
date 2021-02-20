#!/bin/bash

echo "ACB"
ANA2 het_1_top_5vky.pdb -c acb.cfg -d ../1_pca/1_full_avgfit_5vky.nc -o 1_vol_acb_trj_het

echo "ADB"
ANA2 het_1_top_5vky.pdb -c adb.cfg -d ../1_pca/1_full_avgfit_5vky.nc -o 1_vol_adb_trj_het

exit 0
