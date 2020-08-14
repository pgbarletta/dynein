#!/bin/bash

echo "ACB"
ANA2 het_1_top_3fm7.pdb -c acb.cfg -d ../1_pca/1_full_avgfit_3fm7.nc -o 1_vol_acb_trj_het

echo "ADB"
ANA2 het_1_top_3fm7.pdb -c adb.cfg -d ../1_pca/1_full_avgfit_3fm7.nc -o 1_vol_adb_trj_het

echo "ECF"
ANA2 het_1_top_3fm7.pdb -c ecf.cfg -d ../1_pca/1_full_avgfit_3fm7.nc -o 1_vol_ecf_trj_het

echo "EDF"
ANA2 het_1_top_3fm7.pdb -c edf.cfg -d ../1_pca/1_full_avgfit_3fm7.nc -o 1_vol_edf_trj_het

exit 0
