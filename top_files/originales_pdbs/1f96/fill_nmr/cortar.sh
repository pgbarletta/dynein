#!/bin/bash

pdb=1f96

for i in {1..20}
do
    for j in {1461..1534}
    do
        sed -i "/^ATOM   ${j}/d" ${pdb}_${i}.pdb
    done

    sed -i "s/TER    1535      LYS C 188/TER/g" ${pdb}_${i}.pdb

    for j in {1604..1677}
    do
        sed -i "/^ATOM   ${j}/d" ${pdb}_${i}.pdb
    done

    sed -i "s/TER    1678      LYS D 206/TER/g" ${pdb}_${i}.pdb
done
