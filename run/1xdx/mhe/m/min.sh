#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/1xdx.prmtop"
inpcrd="1xdx.rst7"
restrt="m1xdx.rst7"
refc="1xdx.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
