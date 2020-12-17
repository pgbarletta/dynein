#!/bin/bash

echo "ACB"
ANA2 het_4_top_3zke.pdb -c ecf.cfg -d ../4_pca/4_full_avgfit_3zke.nc -o 4_vol_ecf_trj_het

echo "ADB"
ANA2 het_4_top_3zke.pdb -c edf.cfg -d ../4_pca/4_full_avgfit_3zke.nc -o 4_vol_edf_trj_het

exit 0
