#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/3zkf.prmtop"
inpcrd="../m/mm3zkf.rst7"
restrt="h3zkf.rst7"
refc="../m/mm3zkf.rst7"
mdcrd="h3zkf.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
