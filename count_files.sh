#!/bin/bash

count=$(ls -p "$1" | grep -v / | wc -l | tr -d ' ')
echo "Le dossier $1 contient $count fichier(s)."
