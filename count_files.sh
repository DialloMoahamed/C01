#!/bin/bash
# ls | wc -l :compte le nombre de fichiers dans un répertoire
# ls : liste les fichiers et dossiers du répertoire courant
# | : Prends ce que ls affiche et envoie-le à wc -l pour traitement.
# wc -l : 
read dossier

count=$(ls "$dossier" | wc -l)
counts=$(echo $count)
echo "Le dossier $dossier contient $counts fichier(s)."
