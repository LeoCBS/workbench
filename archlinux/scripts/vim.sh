#!/bin/sh
set -o errexit
set -o nounset

echo "Installing my vim"
cd ../../my.vim

make
