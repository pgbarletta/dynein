#!/bin/bash

pdb=1f96

mkdir -p m/outputs
mkdir -p h/outputs
mkdir -p e/outputs

cp ../../${pdb}/mhe/m/outputs/*sh m/outputs

cp ../../${pdb}/mhe/h/outputs/mdout.sh h/outputs/
cp ../../${pdb}/mhe/h/outputs/process_mdout.perl h/outputs/

cp ../../${pdb}/mhe/e/outputs/mdout.sh e/outputs
cp ../../${pdb}/mhe/e/outputs/process_mdout.perl e/outputs/

exit 0
