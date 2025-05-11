#!/bin/bash
# Script qui recherche une chaîne dans un fichier

FILE="$1"
STRING="$2"

# Vérifie que le fichier existe
if [ ! -f "$FILE" ]; then
    echo "Erreur : le fichier '$FILE' n'existe pas."
    exit 1
fi

# Recherche la chaîne
if grep -q "$STRING" "$FILE"; then
    echo "La chaîne '$STRING' a été trouvée dans $FILE."
else
    echo "La chaîne '$STRING' n'a pas été trouvée dans $FILE."
fi
