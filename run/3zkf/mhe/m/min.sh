#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/3zkf.prmtop"
inpcrd="3zkf.rst7"
restrt="m3zkf.rst7"
refc="3zkf.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
