#!/bin/bash
# Script pour rechercher une chaîne de caractères dans un fichier
if [ $# -ne 2 ]; then
  echo "Usage: $0 <fichier> <chaine>"
  exit 1
fi

if grep -q "$2" "$1"; then
  echo "La chaîne '$2' a été trouvée dans $1."
else
  echo "La chaîne '$2' n'a pas été trouvée dans $1."
fi 

