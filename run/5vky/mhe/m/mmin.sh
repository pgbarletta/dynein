#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/5vky.prmtop"
inpcrd="m5vky.rst7"
restrt="mm5vky.rst7"
refc="5vky.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
