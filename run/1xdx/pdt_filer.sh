#!/bin/bash

pdb1=1f95
pdb2=1xdx

for i in {1..4}
do
    cp -r pdt/outputs ${i}_pdt/
    cd ${i}_pdt/outputs

    rm *out *dat
    mv ../*out .

    cd ../../
done
