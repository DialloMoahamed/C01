#!/bin/bash
read -a arguments

i=1
for argument in "${arguments[@]}"; do
  echo "Argument $i: $argument"
  ((i++))
done
