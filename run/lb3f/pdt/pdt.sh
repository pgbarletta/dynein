#!/bin/bash
export CUDA_VISIBLE_DEVICES="0"

for i in `cat step.list`
do
    echo "Step:" $i
    k=`expr $i - 1`

    mdin=pdt.in
    mdout=${i}pdt.out
    prmtop=/home/almacen/pbarletta/dynein/top_files/lb3f.prmtop
    inpcrd=${k}plb3f.rst7
    restrt=${i}plb3f.rst7
    mdcrd=${i}plb3f.nc

    if [ $i == 1 ]
    then
        inpcrd=../mhe/e/75elb3f.rst7

        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done step:" $i
    else
        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done step:" $i
    fi
done
