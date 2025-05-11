#!/bin/bash

echo "Le dossier $1 contient $(find "$1" -maxdepth 1 -type f | wc -l) fichier(s)."
