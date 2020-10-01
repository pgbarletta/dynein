#!/bin/bash

echo "ACB"
ANA2 het_4_top_lfm7.pdb -c ecf.cfg -d ../4_pca/4_full_avgfit_lfm7.nc -o 4_vol_ecf_trj_het

echo "ADB"
ANA2 het_4_top_lfm7.pdb -c edf.cfg -d ../4_pca/4_full_avgfit_lfm7.nc -o 4_vol_edf_trj_het

exit 0
