#!/bin/bash

echo "ACB"
ANA2 het_3_top_1f95.pdb -c ecf.cfg -d ../3_pca/3_full_avgfit_1f95.nc -o 3_vol_ecf_trj_het

echo "ADB"
ANA2 het_3_top_1f95.pdb -c edf.cfg -d ../3_pca/3_full_avgfit_1f95.nc -o 3_vol_edf_trj_het

exit 0
