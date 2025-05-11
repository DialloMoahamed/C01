#!/bin/bash

count=$(find "$1" -maxdepth 1 -type f | wc -l | tr -d ' ')
echo "Le dossier $1 contient $count fichier(s)."

