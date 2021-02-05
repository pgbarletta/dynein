#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/5vky.prmtop"
inpcrd="../m/mm5vky.rst7"
restrt="h5vky.rst7"
refc="../m/mm5vky.rst7"
mdcrd="h5vky.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
