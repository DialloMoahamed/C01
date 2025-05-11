#!/bin/bash

# Vérifie qu’un argument est fourni
if [ -z "$1" ]; then
    echo "Usage: $0 <nom_du_dossier>"
    exit 1
fi

# Vérifie que l'argument est un dossier
if [ ! -d "$1" ]; then
    echo "Erreur: '$1' n'est pas un dossier."
    exit 1
fi

# Compte les fichiers (non récursif)
count=$(find "$1" -maxdepth 1 -type f | wc -l)

# Gestion du pluriel
if [ "$count" -eq 1 ]; then
    mot="fichier"
else
    mot="fichiers"
fi

# Affichage propre
echo "Le dossier $1 contient $count $mot."
