#!/bin/bash

echo "ACB"
ANA2 het_1_top_3zkf.pdb -c ecf.cfg -d ../1_pca/1_full_avgfit_3zkf.nc -o 1_vol_ecf_trj_het

echo "ADB"
ANA2 het_1_top_3zkf.pdb -c edf.cfg -d ../1_pca/1_full_avgfit_3zkf.nc -o 1_vol_edf_trj_het

exit 0
