#!/bin/bash
export CUDA_VISIBLE_DEVICES="0"
i=0
starting_mdin="0equ.in"

for step in `cat step.list`
do

    i=`expr $i + 1`
    k=`expr $i - 1`

    echo "Step:" $i

	mdin=${i}equ.in
	mdout=${i}equ.out
	prmtop=/home/almacen/pbarletta/dynein/top_files/lf3f.prmtop
	inpcrd=${k}elf3f.rst7
	restrt=${i}elf3f.rst7
	mdcrd=${i}elf3f.nc

    if [ $i == 1 ]
    then
        inpcrd=../h/hlf3f.rst7
        refc=../h/hlf3f.rst7
		restrt=${i}elf3f.rst7

        # On the 1st step: mdin = starting_mdin
    	sed "s/10\.0/${step}/" $starting_mdin > $mdin

        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd
        echo "Done step:" $i
    elif [[ $i == 75 || $i == 76 ]]
    then
        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done last step:" $i
	else
    	refc=${k}elf3f.rst7

        # On the 1st step: mdin = starting_mdin
        sed "s/10\.0/${step}/" $starting_mdin > $mdin

	    pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd
	    echo "Done step:" $i
    fi
done
