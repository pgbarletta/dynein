#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/lb3f.prmtop"
inpcrd="mlb3f.rst7"
restrt="mmlb3f.rst7"
refc="lb3f.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
