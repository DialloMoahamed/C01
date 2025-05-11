#!/bin/bash
a=$1
b=$2
op=$3

if [ "$op" = "+" ]; then
    result=$((a + b))
elif  [ "$op" = "-" ]; then 
    result=$((a - b))
elif  [ "$op" = "*" ]; then 
    result=$((a * b))
elif  [ "$op" = "/" ]; then 
    result=$((a / b))
else
    echo "Opérateur incorect." 
    exit 1   
fi
echo "Résultat : $result"

exit 0

