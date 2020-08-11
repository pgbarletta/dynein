#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/lb3f.prmtop"
inpcrd="lb3f.rst7"
restrt="mlb3f.rst7"
refc="lb3f.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
