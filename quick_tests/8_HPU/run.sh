#!/bin/bash

export PT_HPU_LAZY_MODE=0
mpirun --allow-run-as-root -np 8 $PYTHON demo.py