#!/bin/bash
export CUDA_VISIBLE_DEVICES="0"

for i in `cat step.list`
do
    echo "Step:" $i
    k=`expr $i - 1`

    mdin=pdt.in
    mdout=${i}pdt.out
    prmtop=/home/almacen/pbarletta/dynein/top_files/1f96.prmtop
    inpcrd=${k}p4_1f96.rst7
    restrt=${i}p4_1f96.rst7
    mdcrd=${i}p4_1f96.nc

    if [ $i == 0 ]
    then
        inpcrd=4_1f96.rst7
        mdin=pre_pdt.in

        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done step:" $i
    else
        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done step:" $i
    fi
done
