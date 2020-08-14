#!/bin/bash

ANA2 2_top_3fm7.pdb -c ecf.cfg -t ch_ecf
ANA2 2_top_3fm7.pdb -c edf.cfg -t ch_edf
ANA2 2_top_3fm7.pdb -c acb.cfg -t ch_acb
ANA2 2_top_3fm7.pdb -c adb.cfg -t ch_adb

exit 0
