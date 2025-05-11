#!/bin/bash

# Vérifie que l'argument est un dossier
if [ ! -d "$1" ]; then
    echo "Erreur: '$1' n'est pas un dossier."
    exit 1
fi

count=$(find "$1" -maxdepth 1 -type f | wc -l | tr -d ' ')
echo "Le dossier $1 contient $count fichier(s)."

