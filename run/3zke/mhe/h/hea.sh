#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/3zke.prmtop"
inpcrd="../m/mm3zke.rst7"
restrt="h3zke.rst7"
refc="../m/mm3zke.rst7"
mdcrd="h3zke.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
