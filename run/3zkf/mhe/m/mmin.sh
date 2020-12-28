#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/3zkf.prmtop"
inpcrd="m3zkf.rst7"
restrt="mm3zkf.rst7"
refc="3zkf.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
