#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/1xdx.prmtop"
inpcrd="../m/mm1xdx.rst7"
restrt="h1xdx.rst7"
refc="../m/mm1xdx.rst7"
mdcrd="h1xdx.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
