#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/1xdx.prmtop"
inpcrd="m1xdx.rst7"
restrt="mm1xdx.rst7"
refc="1xdx.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
