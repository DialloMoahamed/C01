#!/bin/bash

# Vérifie qu’un argument est fourni
if [ -z "$1" ]; then
    echo "Usage : $0 <nom_du_dossier>"
    exit 1
fi

# Vérifie que l'argument est bien un dossier
if [ ! -d "$1" ]; then
    echo "Erreur : '$1' n'est pas un dossier."
    exit 1
fi

# Compte uniquement les fichiers (pas les sous-dossiers)
nb_fichiers=$(find "$1" -maxdepth 1 -type f | wc -l)

# Affiche le résultat
echo "Le dossier $1 contient $nb_fichiers fichier(s)."
