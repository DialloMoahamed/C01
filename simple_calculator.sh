#!/bin/bash

# Vérifie qu'il y a suffisamment de paramètres
if [ $# -ne 3 ]; then
  echo "Usage: $0 <nombre1> <opérateur> <nombre2>"
  exit 1
fi

nombre1=$1
operateur=$2
nombre2=$3

# Vérifie que l'opérateur est valide
if [[ $operateur != "+" && $operateur != "-" && $operateur != "*" && $operateur != "/" ]]; then
  echo "Opérateur invalide"
  exit 1
fi

# Effectue le calcul
if [[ $operateur == "+" ]]; then
  resultat=$(( $nombre1 + $nombre2 ))
elif [[ $operateur == "-" ]]; then
  resultat=$(( $nombre1 - $nombre2 ))
elif [[ $operateur == "*" ]]; then
  resultat=$(( $nombre1 * $nombre2 ))
elif [[ $operateur == "/" ]]; then
  # Vérification pour éviter une division par zéro
  if [ $nombre2 -eq 0 ]; then
    echo "Division par zéro interdite"
    exit 1
  fi
  resultat=$(( $nombre1 / $nombre2 ))
fi

echo "Résultat: $resultat"