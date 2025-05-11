#!/bin/bash

count=$(ls -l "$1"| wc -l | tr -s " " " " )
echo "Le dossier $1 contient $count fichier(s)."
