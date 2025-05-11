#!/bin/bash
# Script qui affiche les arguments un par un

# Vérifie s’il y a des arguments
if [ $# -eq 0 ]; then
    echo "Usage: $0 arg1 [arg2 ...]"
    exit 1
fi

i=1
for arg in "$@"; do
    echo "Argument $i: $arg"
    ((i++))
done
