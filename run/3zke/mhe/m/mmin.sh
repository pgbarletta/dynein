#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/3zke.prmtop"
inpcrd="m3zke.rst7"
restrt="mm3zke.rst7"
refc="3zke.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
