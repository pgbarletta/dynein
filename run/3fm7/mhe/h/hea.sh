#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/3fm7.prmtop"
inpcrd="../m/mm3fm7.rst7"
restrt="h3fm7.rst7"
refc="../m/mm3fm7.rst7"
mdcrd="h3fm7.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
