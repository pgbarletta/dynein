#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/3fm7.prmtop"
inpcrd="3fm7.rst7"
restrt="m3fm7.rst7"
refc="3fm7.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
