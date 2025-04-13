#!bin/bash

set -e

echo "Please select a configuration:"
echo "[debug/release/distribution]"

read -p "" userConfig

sudo make config=$userConfig

sudo chmod -R 777 .
