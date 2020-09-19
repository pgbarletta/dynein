#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/lfm7.prmtop"
inpcrd="lfm7.rst7"
restrt="mlfm7.rst7"
refc="lfm7.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
