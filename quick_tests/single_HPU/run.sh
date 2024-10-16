#!/bin/bash

THIS_SCRIPT_PATH=$(cd "$(dirname "$0")" && pwd)
cd "$THIS_SCRIPT_PATH"

export PT_HPU_LAZY_MODE=0
$PYTHON demo.py