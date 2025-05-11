#!/bin/bash
# C'est un script qui affiche l'utilisation du disque de façon lisible

a=$1
b=$2
op=$3

read a b op

if [ "$op" = "+" ]; then
    result=$((a + b))
elif  [ "$op" = "-" ]; then 
    result=$((a - b))
elif  [ "$op" = "*" ]; then 
    result=$((a * b))
elif  [ "$op" = "/" ]; then 
    result=$((a / b))   
fi
echo "Résultat : $result"

exit 0

