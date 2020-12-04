#!/bin/bash

echo "ACB"
ANA2 het_top_3zke.pdb -c ecf.cfg -d ../pca/full_avgfit_3zke.nc -o vol_ecf_trj_het

echo "ADB"
ANA2 het_top_3zke.pdb -c edf.cfg -d ../pca/full_avgfit_3zke.nc -o vol_edf_trj_het

exit 0
