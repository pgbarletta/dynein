#!/bin/bash

echo "ACB"
ANA2 het_2_top_lb3f.pdb -c acb.cfg -d ../2_pca/2_full_avgfit_lb3f.nc -o 2_vol_acb_trj_het

echo "ADB"
ANA2 het_2_top_lb3f.pdb -c adb.cfg -d ../2_pca/2_full_avgfit_lb3f.nc -o 2_vol_adb_trj_het

exit 0
