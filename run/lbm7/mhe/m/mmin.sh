#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/lbm7.prmtop"
inpcrd="mlbm7.rst7"
restrt="mmlbm7.rst7"
refc="lbm7.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
