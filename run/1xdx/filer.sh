#!/bin/bash

pdb=1xdx

for i in {1..4}
do
    mkdir ${i}_pca
    cd ${i}_pca

    cp ../pca/fit_avg_cpp .
    cp ../pca/get_top_cpp .
    cp ../pca/pca_cpp .
    cp ../pca/rms_cpp .



    sed -i s/full_/${i}_full_/g pca_cpp
    sed -i s/full_/${i}_full_/g rms_cpp
    sed -i s/full_/${i}_full_/g get_top_cpp
    sed -i s/full_/${i}_full_/g fit_avg_cpp

    sed -i s/avg_/${i}_avg_/g pca_cpp
    sed -i s/avg_/${i}_avg_/g rms_cpp
    sed -i s/avg_/${i}_avg_/g get_top_cpp
    sed -i s/avg_/${i}_avg_/g fit_avg_cpp

    sed -i s/modes/${i}_modes/g pca_cpp
    sed -i s/pdt/${i}_pdt/g pca_cpp
    sed -i s/pdt/${i}_pdt/g fit_avg_cpp
    sed -i s/top_3f/${i}_top_3f/g get_top_cpp
    sed -i s/rmsd_/${i}_rmsd_/g rms_cpp
   
    cpptraj < pca_cpp
    cpptraj < fit_avg_cpp
    cpptraj < rms_cpp
 
    cd ..
done
