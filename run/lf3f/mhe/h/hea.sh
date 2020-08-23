#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/lf3f.prmtop"
inpcrd="../m/mmlf3f.rst7"
restrt="hlf3f.rst7"
refc="../m/mmlf3f.rst7"
mdcrd="hlf3f.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
