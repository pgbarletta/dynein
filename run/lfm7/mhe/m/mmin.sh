#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/lfm7.prmtop"
inpcrd="mlfm7.rst7"
restrt="mmlfm7.rst7"
refc="lfm7.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
