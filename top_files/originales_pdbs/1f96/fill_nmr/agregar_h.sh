#!/bin/bash

pdb=1f96

for i in {1..20}
do
    pdb4amber -i ${pdb}_${i}.pdb -o h${pdb}_${i}.pdb --reduce
done

rm *renum* *sslink reduce_info.log *nonprot.pdb
