#!/bin/bash

echo "ACB"
ANA2 het_2_top_3fm7.pdb -c acb.cfg -d ../2_pca/2_full_avgfit_3fm7.nc -o 2_vol_acb_trj_het

echo "ADB"
ANA2 het_2_top_3fm7.pdb -c adb.cfg -d ../2_pca/2_full_avgfit_3fm7.nc -o 2_vol_adb_trj_het

echo "ECF"
ANA2 het_2_top_3fm7.pdb -c ecf.cfg -d ../2_pca/2_full_avgfit_3fm7.nc -o 2_vol_ecf_trj_het

echo "EDF"
ANA2 het_2_top_3fm7.pdb -c edf.cfg -d ../2_pca/2_full_avgfit_3fm7.nc -o 2_vol_edf_trj_het

exit 0
