#!/bin/bash

export PT_HPU_LAZY_MODE=0
mpirun -np 8 $PYTHON demo.py