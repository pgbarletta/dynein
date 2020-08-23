#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/almacen/pbarletta/dynein/top_files/lf3f.prmtop"
inpcrd="mlf3f.rst7"
restrt="mmlf3f.rst7"
refc="lf3f.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
