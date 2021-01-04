#!/bin/bash

echo "ACB"
ANA2 het_2_top_1xdx.pdb -c acb.cfg -d ../2_pca/2_full_avgfit_1xdx.nc -o 2_vol_acb_trj_het

echo "ADB"
ANA2 het_2_top_1xdx.pdb -c adb.cfg -d ../2_pca/2_full_avgfit_1xdx.nc -o 2_vol_adb_trj_het

exit 0
