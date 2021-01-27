#!/bin/bash

echo "ACB"
ANA2 het_top_3zkf.pdb -c ecf.cfg -d ../pca/full_avgfit_3zkf.nc -o vol_ecf_trj_het

echo "ADB"
ANA2 het_top_3zkf.pdb -c edf.cfg -d ../pca/full_avgfit_3zkf.nc -o vol_edf_trj_het

exit 0
