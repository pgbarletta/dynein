#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/5vky.prmtop"
inpcrd="5vky.rst7"
restrt="m5vky.rst7"
refc="5vky.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
