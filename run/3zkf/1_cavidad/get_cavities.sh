#!/bin/bash

ANA2 1_top_3zkf.pdb -c ecf.cfg
ANA2 1_top_3zkf.pdb -c edf.cfg

echo
echo "---- sin ICs C y D"
echo

ANA2 het_1_top_3zkf.pdb -c ecf.cfg -o 1_vol_ecf_het 
ANA2 het_1_top_3zkf.pdb -c edf.cfg -o 1_vol_edf_het

exit 0
