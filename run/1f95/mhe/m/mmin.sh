#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/1f95.prmtop"
inpcrd="m1f95.rst7"
restrt="mm1f95.rst7"
refc="1f95.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
