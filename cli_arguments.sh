#!/bin/bash

echo "Entrez vos arguments (séparés par des espaces) :"
read -a arguments

i=1
for argument in "${arguments[@]}"; do
  echo -e "Argument $i: $argument"
  ((i++))
done
