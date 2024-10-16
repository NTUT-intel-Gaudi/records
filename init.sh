#!/bin/sh

THIS_SCRIPT_PATH=$(cd "$(dirname "$0")" && pwd)
cd THIS_SCRIPT_PATH


if [ -f "requirements.txt" ]; then
    python3 -m pip install -r requirements.txt
else
    echo "No requirements.txt file found."
fi