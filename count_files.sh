#!/bin/bash

if [ ! -d "$1" ]; then
  echo "Erreur : $1 n'est pas un dossier."
  exit 1
fi

echo "Le dossier $1 contient $(ls -1 "$1" | wc -l) fichier(s)."