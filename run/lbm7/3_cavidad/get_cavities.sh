#!/bin/bash

ANA2 3_top_lbm7.pdb -c ecf.cfg
ANA2 3_top_lbm7.pdb -c edf.cfg

echo
echo "---- sin ICs C y D"
echo

ANA2 het_3_top_lbm7.pdb -c ecf.cfg -o 3_vol_ecf_het 
ANA2 het_3_top_lbm7.pdb -c edf.cfg -o 3_vol_edf_het

exit 0
