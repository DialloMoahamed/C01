#!/bin/bash
# La commande read -a en shell est utilisée pour lire une ligne d’entrée et la diviser en un tableau (array) de mots
read -a arguments

i=1
for argument in "${arguments[@]}"; do
  echo "Argument $i: $argument"
  ((i++))
done
