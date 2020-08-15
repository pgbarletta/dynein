#!/bin/bash

pdb=lb3f

#
# Despues hay q arreglar ${i}_top_${pdb} agregandoles letras de cadena
# y generer het_${i}_top_${pdb}
#

for i in {1..4}
do
    mkdir ${i}_cavidad
    cd ${i}_cavidad

    cp ../cavidad/*cfg .
    cp ../cavidad/*sh .
    cp ../${i}_pca/${i}_top_${pdb}.pdb .

    sed -i s/top_/${i}_top_/g get_cavities.sh
    sed -i s/top_/${i}_top_/g get_ch.sh
    sed -i s/top_/${i}_top_/g get_trj.sh
    sed -i s/full_/${i}_full_/g get_trj.sh
    sed -i s/pca/${i}_pca/g get_trj.sh
    
    sed -i s/vol_acb_/${i}_vol_acb_/g get_trj.sh
    sed -i s/vol_adb_/${i}_vol_adb_/g get_trj.sh
    sed -i s/vol_ecf_/${i}_vol_ecf_/g get_trj.sh
    sed -i s/vol_edf_/${i}_vol_edf_/g get_trj.sh

    sed -i s/vol_acb_/${i}_vol_acb_/g get_cavities.sh
    sed -i s/vol_adb_/${i}_vol_adb_/g get_cavities.sh
    sed -i s/vol_ecf_/${i}_vol_ecf_/g get_cavities.sh
    sed -i s/vol_edf_/${i}_vol_edf_/g get_cavities.sh

    cd ..
done
