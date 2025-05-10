#!/bin/bash
# Ce script qui prend deux nombres et un opérateur (+, -, *, /) puis effectue l'opération
nombre1=$1
nombre2=$2
operateur=$3

# Effectue le calcul
if [[ $operateur == "+" ]]; then
  resultat=$(( $nombre1 + $nombre2 ))
elif [[ $operateur == "-" ]]; then
  resultat=$(( $nombre1 - $nombre2 ))
elif [[ $operateur == "*" ]]; then
  resultat=$(( $nombre1 * $nombre2 ))
else 
    resultat=$(( $nombre1 / $nombre2 ))
fi    

echo "Résultat : $resultat"