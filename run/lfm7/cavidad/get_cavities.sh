#!/bin/bash


echo
echo "---- sin ICs C y D"
echo

ANA2 het_top_lfm7.pdb -c ecf.cfg -o vol_ecf_het 
ANA2 het_top_lfm7.pdb -c edf.cfg -o vol_edf_het

exit 0
