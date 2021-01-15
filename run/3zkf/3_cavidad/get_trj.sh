#!/bin/bash

echo "ACB"
ANA2 het_3_top_3zkf.pdb -c ecf.cfg -d ../3_pca/3_full_avgfit_3zkf.nc -o 3_vol_ecf_trj_het

echo "ADB"
ANA2 het_3_top_3zkf.pdb -c edf.cfg -d ../3_pca/3_full_avgfit_3zkf.nc -o 3_vol_edf_trj_het

exit 0
