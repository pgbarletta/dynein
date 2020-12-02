#!/bin/bash

pdb1=1f95
pdb2=1f96

for i in {1..4}
do
    cp -r pdt/outputs ${i}_pdt/
    cd ${i}_pdt/outputs

    rm *out
    mv ../*out .

    cd ../../
done
