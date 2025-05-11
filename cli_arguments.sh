#!/bin/bash
# Script qui affiche les arguments un par un

i=1
for arg in "$@"; do
    echo "Argument $i: $arg"
    ((i++))
done
