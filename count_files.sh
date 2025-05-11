#!/bin/bash

directory="$1"

# Vérifie si le répertoire existe et est un répertoire
if [ ! -d "$directory" ]; then
  echo "Erreur: '$directory' n'est pas un répertoire valide."
  exit 1
fi

# Compte le nombre de fichiers (les entrées qui ne sont pas des répertoires)
file_count=$(find "$directory" -maxdepth 1 -type f | wc -l)

echo "Le dossier '$directory' contient $file_count fichier(s)."