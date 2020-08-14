#!/bin/bash

echo "ACB"
#ANA2 het_top_3fm7.pdb -c acb.cfg -d ../pca/full_avgfit_3fm7.nc -o vol_acb_trj_het

echo "ADB"
ANA2 het_top_3fm7.pdb -c adb.cfg -d ../pca/full_avgfit_3fm7.nc -o vol_adb_trj_het

echo "ECF"
ANA2 het_top_3fm7.pdb -c ecf.cfg -d ../pca/full_avgfit_3fm7.nc -o vol_ecf_trj_het

echo "EDF"
ANA2 het_top_3fm7.pdb -c edf.cfg -d ../pca/full_avgfit_3fm7.nc -o vol_edf_trj_het

exit 0
