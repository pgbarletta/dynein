#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/1f95.prmtop"
inpcrd="../m/mm1f95.rst7"
restrt="h1f95.rst7"
refc="../m/mm1f95.rst7"
mdcrd="h1f95.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
