#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/lf3f.prmtop"
inpcrd="lf3f.rst7"
restrt="mlf3f.rst7"
refc="lf3f.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
