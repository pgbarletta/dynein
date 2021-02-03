#!/bin/bash

# Extract heat and equil mdout info
perl process_mdout.perl 1pdt.out 2pdt.out 3pdt.out 4pdt.out 5pdt.out

mv summary.ETOT etot.dat
mv summary.EPTOT eptot.dat
mv summary.EKTOT ektot.dat
mv summary.TEMP temp.dat
mv summary.PRES pres.dat
mv summary.VOLUME vol.dat
mv summary.DENSITY density.dat

rm summary*

