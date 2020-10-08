#!/bin/bash

ANA2 top_1f95.pdb -c ecf.cfg
ANA2 top_1f95.pdb -c edf.cfg

echo
echo "---- sin ICs C y D"
echo

ANA2 het_top_1f95.pdb -c ecf.cfg -o vol_ecf_het 
ANA2 het_top_1f95.pdb -c edf.cfg -o vol_edf_het

exit 0
