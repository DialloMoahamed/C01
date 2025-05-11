#!/bin/bash

echo "Le dossier $1 contient $(ls -1 "$1" | wc -l) fichier(s)."
