#!/bin/bash
# ls -p "$1" : liste le contenu du dossier, avec / ajouté à la fin des dossiers
# grep -v / : enlève les lignes contenant / → on garde seulement les fichiers
# wc -l : compte le nombre de lignes, donc le nombre de fichiers
# $(...) : exécute la commande et stocke le résultat dans la variable count
# ls -1 permet de lister les fichiers dans le répertoire, un par ligne
# wc -l permet de dénombrer les lignes de la sortie standard

count=$(ls -l "$1" | grep "^-" | wc -l)
echo "Le dossier $1 contient $count fichier(s)."