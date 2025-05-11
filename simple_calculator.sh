#!/bin/bash

num1="$1"
num2="$2"
operator="$3"

# Fonction pour vérifier si une chaîne est un nombre entier ou décimal
is_number() {
  local n="$1"
  if [[ "$n" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
    return 0 # C'est un nombre
  else
    return 1 # Ce n'est pas un nombre
  fi
}

# Vérifie si les deux premiers arguments sont des nombres
if ! is_number "$num1" || ! is_number "$num2"; then
  echo "Erreur: '$num1' et '$num2' doivent être des nombres."
  exit 1
fi

result=0

case "$operator" in
  "+")
    result=$(echo "$num1 + $num2" | bc)
    ;;
  "-")
    result=$(echo "$num1 - $num2" | bc)
    ;;
  "*")
    result=$(echo "$num1 * $num2" | bc)
    ;;
  "/")
    if (( $(echo "$num2 == 0" | bc -l) )); then
      echo "Erreur: Division par zéro."
      exit 1
    fi
    result=$(echo "scale=2; $num1 / $num2" | bc -l) # scale=2 pour 2 décimales
    ;;
  *)
    echo "Opérateur non reconnu: '$operator'. Utilisez +, -, *, /."
    exit 1
    ;;
esac

echo "Résultat : $result"