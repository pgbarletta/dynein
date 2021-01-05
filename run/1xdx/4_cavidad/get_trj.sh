#!/bin/bash

echo "ACB"
ANA2 het_4_top_1xdx.pdb -c acb.cfg -d ../4_pca/4_full_avgfit_1xdx.nc -o 4_vol_acb_trj_het

echo "ADB"
ANA2 het_4_top_1xdx.pdb -c adb.cfg -d ../4_pca/4_full_avgfit_1xdx.nc -o 4_vol_adb_trj_het

exit 0
