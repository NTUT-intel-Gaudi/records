#!/bin/bash

#PCA bandwidth test
./hl_qual -c all -rmod serial -t 20 -p -b

#Power stress test
./hl_qual -c all -rmod parallel -t 20 -s -l extreme