#!/bin/bash

echo "ACB"
ANA2 het_3_top_lb3f.pdb -c acb.cfg -d ../3_pca/3_full_avgfit_lb3f.nc -o 3_vol_acb_trj_het

echo "ADB"
ANA2 het_3_top_lb3f.pdb -c adb.cfg -d ../3_pca/3_full_avgfit_lb3f.nc -o 3_vol_adb_trj_het

exit 0
