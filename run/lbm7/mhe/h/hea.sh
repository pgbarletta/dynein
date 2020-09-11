#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/lbm7.prmtop"
inpcrd="../m/mmlbm7.rst7"
restrt="hlbm7.rst7"
refc="../m/mmlbm7.rst7"
mdcrd="hlbm7.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
