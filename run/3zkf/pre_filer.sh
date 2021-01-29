#!/bin/bash

pdb1=3zke
pdb2=3zkf
range1=188
range2=188

mkdir pca
mkdir cavidad

sed s/${pdb1}/${pdb2}/g ../${pdb1}/pca/fit_avg_cpp > pca/fit_avg_cpp
sed s/${pdb1}/${pdb2}/g ../${pdb1}/pca/get_top_cpp > pca/get_top_cpp
sed s/${pdb1}/${pdb2}/g ../${pdb1}/pca/pca_cpp > pca/pca_cpp
sed s/${pdb1}/${pdb2}/g ../${pdb1}/pca/rms_cpp > pca/rms_cpp

sed -i s/${range1}/${range2}/g pca/fit_avg_cpp
sed -i s/${range1}/${range2}/g pca/get_top_cpp
sed -i s/${range1}/${range2}/g pca/pca_cpp
sed -i s/${range1}/${range2}/g pca/rms_cpp

sed s/${pdb1}/${pdb2}/g ../${pdb1}/cavidad/get_ch.sh > cavidad/get_ch.sh
sed s/${pdb1}/${pdb2}/g ../${pdb1}/cavidad/get_cavities.sh > cavidad/get_cavities.sh
sed s/${pdb1}/${pdb2}/g ../${pdb1}/cavidad/get_trj.sh > cavidad/get_trj.sh
chmod +x ./cavidad/*sh
cp ../${pdb1}/cavidad/*cfg ./cavidad/

cd pca
cpptraj < pca_cpp
cpptraj < fit_avg_cpp
cpptraj < rms_cpp 
cd ..

exit 0
