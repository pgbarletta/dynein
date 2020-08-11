#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/lb3f.prmtop"
inpcrd="../m/mmlb3f.rst7"
restrt="hlb3f.rst7"
refc="../m/mmlb3f.rst7"
mdcrd="hlb3f.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
