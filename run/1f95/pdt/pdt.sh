#!/bin/bash
export CUDA_VISIBLE_DEVICES="0"

for i in `cat step.list`
do
    echo "Step:" $i
    k=`expr $i - 1`

    mdin=pdt.in
    mdout=${i}pdt.out
    prmtop=/home/almacen/pbarletta/dynein/top_files/1f95.prmtop
    inpcrd=${k}p1f95.rst7
    restrt=${i}p1f95.rst7
    mdcrd=${i}p1f95.nc

    if [ $i == 1 ]
    then
        inpcrd=../mhe/e/75e1f95.rst7

        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done step:" $i
    else
        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done step:" $i
    fi
done
