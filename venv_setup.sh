#/bin/bash

cd ~
mkdir .venv
cd .venv
python3 -m venv myPython

alias activate="source ~/.venv/myPython/bin/activate"
export PYTHON=python3

activate
$PYTHON -m pip install -r requirements.txt