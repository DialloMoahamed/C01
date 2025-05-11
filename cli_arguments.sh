#!/bin/bash
# Script pour afficher chaque argument ligne par ligne
# for arg in "$@": Boucle qui itère sur chaque argument passé au script.
# arg: Variable qui prend la valeur de chaque argument dans chaque itération.
# $@: Variable qui contient tous les arguments passés au script.
# echo "$arg": Affiche l'argument courant sur une nouvelle ligne
i=1
for arg in "$@" "$shift"; do
  echo "Argument $i: $arg"
  ((i++))
done