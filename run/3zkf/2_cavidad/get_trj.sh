#!/bin/bash

echo "ACB"
ANA2 het_2_top_3zkf.pdb -c ecf.cfg -d ../2_pca/2_full_avgfit_3zkf.nc -o 2_vol_ecf_trj_het

echo "ADB"
ANA2 het_2_top_3zkf.pdb -c edf.cfg -d ../2_pca/2_full_avgfit_3zkf.nc -o 2_vol_edf_trj_het

exit 0
