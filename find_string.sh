#!/bin/bash

# Vérifie si la chaîne à rechercher et le fichier sont fournis en arguments
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <string> <file>"
  exit 1
fi

search_string="$1"
file="$2"

# Vérifie si le fichier existe et est un fichier régulier
if [ ! -f "$file" ]; then
  echo "Erreur: '$file' n'est pas un fichier valide."
  exit 1
fi

# Recherche la chaîne dans le fichier en utilisant grep
if grep -q "$search_string" "$file"; then
  echo "La chaîne '$search_string' a été trouvée dans $file."
else
  echo "La chaîne '$search_string' n'a pas été trouvée dans $file."
fi