#!/bin/bash
echo "Entrez le nom d'un dossier :"
read dossier

count=$(ls -l "$dossier" | wc -l)
counts=$(echo $count)
echo "Le dossier $dossier contient $counts fichier(s)."
