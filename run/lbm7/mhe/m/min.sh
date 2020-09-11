#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/lbm7.prmtop"
inpcrd="lbm7.rst7"
restrt="mlbm7.rst7"
refc="lbm7.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
