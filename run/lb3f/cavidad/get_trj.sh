#!/bin/bash

echo "ACB"
ANA2 het_top_lb3f.pdb -c acb.cfg -d ../pca/full_avgfit_lb3f.nc -o vol_acb_trj_het

echo "ADB"
ANA2 het_top_lb3f.pdb -c adb.cfg -d ../pca/full_avgfit_lb3f.nc -o vol_adb_trj_het

exit 0
