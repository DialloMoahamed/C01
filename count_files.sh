#!/bin/bash
# Script qui compte le nombre de fichiers dans un répertoire

# Vérifie que l'utilisateur a passé un argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <nom_du_dossier>"
    exit 1
fi

FOLDER="$1"

# Vérifie si le répertoire existe
if [ ! -d "$FOLDER" ]; then
    echo "Erreur : '$FOLDER' n'est pas un répertoire valide."
    exit 1
fi

# Compte les fichiers (uniquement les fichiers, pas les dossiers)
FILE_COUNT=$(find "$FOLDER" -type f | wc -l)

echo "Le dossier $FOLDER contient $FILE_COUNT fichier(s)."
