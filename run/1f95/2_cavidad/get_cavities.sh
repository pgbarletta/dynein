#!/bin/bash

ANA2 2_top_1f95.pdb -c ecf.cfg
ANA2 2_top_1f95.pdb -c edf.cfg

echo
echo "---- sin ICs C y D"
echo

ANA2 het_2_top_1f95.pdb -c ecf.cfg -o 2_vol_ecf_het 
ANA2 het_2_top_1f95.pdb -c edf.cfg -o 2_vol_edf_het

exit 0
