#!/bin/bash

ANA2 top_3zke.pdb -c ecf.cfg
ANA2 top_3zke.pdb -c edf.cfg

echo
echo "---- sin ICs C y D"
echo

ANA2 het_top_3zke.pdb -c ecf.cfg -o vol_ecf_het 
ANA2 het_top_3zke.pdb -c edf.cfg -o vol_edf_het

exit 0
