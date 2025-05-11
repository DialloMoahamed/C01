#!/bin/bash
read dossier

count=$(ls "$dossier" | wc -l)
counts=$(echo $count)
echo "Le dossier $dossier contient $counts fichier(s)."
