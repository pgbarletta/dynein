#!/bin/bash

echo "ACB"
ANA2 het_1_top_lfm7.pdb -c ecf.cfg -d ../1_pca/1_full_avgfit_lfm7.nc -o 1_vol_ecf_trj_het

echo "ADB"
ANA2 het_1_top_lfm7.pdb -c edf.cfg -d ../1_pca/1_full_avgfit_lfm7.nc -o 1_vol_edf_trj_het

exit 0
