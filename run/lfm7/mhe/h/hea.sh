#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/lfm7.prmtop"
inpcrd="../m/mmlfm7.rst7"
restrt="hlfm7.rst7"
refc="../m/mmlfm7.rst7"
mdcrd="hlfm7.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
