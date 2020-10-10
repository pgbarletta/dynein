#!/bin/bash

echo "ACB"
ANA2 het_2_top_1f95.pdb -c ecf.cfg -d ../2_pca/2_full_avgfit_1f95.nc -o 2_vol_ecf_trj_het

echo "ADB"
ANA2 het_2_top_1f95.pdb -c edf.cfg -d ../2_pca/2_full_avgfit_1f95.nc -o 2_vol_edf_trj_het

exit 0
