#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/1f96.prmtop"
inpcrd="../m/mm1f96.rst7"
restrt="h1f96.rst7"
refc="../m/mm1f96.rst7"
mdcrd="h1f96.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
