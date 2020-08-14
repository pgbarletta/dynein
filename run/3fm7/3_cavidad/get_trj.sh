#!/bin/bash

echo "ACB"
ANA2 het_3_top_3fm7.pdb -c acb.cfg -d ../3_pca/3_full_avgfit_3fm7.nc -o 3_vol_acb_trj_het

echo "ADB"
ANA2 het_3_top_3fm7.pdb -c adb.cfg -d ../3_pca/3_full_avgfit_3fm7.nc -o 3_vol_adb_trj_het

echo "ECF"
ANA2 het_3_top_3fm7.pdb -c ecf.cfg -d ../3_pca/3_full_avgfit_3fm7.nc -o 3_vol_ecf_trj_het

echo "EDF"
ANA2 het_3_top_3fm7.pdb -c edf.cfg -d ../3_pca/3_full_avgfit_3fm7.nc -o 3_vol_edf_trj_het

exit 0
