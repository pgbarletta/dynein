#!/bin/bash


echo
echo "---- sin ICs C y D"
echo

ANA2 het_1_top_lfm7.pdb -c ecf.cfg -o 1_vol_ecf_het 
ANA2 het_1_top_lfm7.pdb -c edf.cfg -o 1_vol_edf_het

exit 0
