#!/bin/sh

set -e

printf "Running autoreconf in ./\n"
autoreconf --force --install --no-recursive --include=BuildTools
cd Cgl
printf "Running autoreconf in ./Cgl/\n"
ln -s ../BuildTools .
autoreconf --force --install --no-recursive --include=BuildTools
rm ./BuildTools
cd ..
