# 🐚 Piscine Codeloccol – Fiche d’exercices C01

Thème : Scripts Shell Intermédiaires
Objectif pédagogique : Approfondir la manipulation de la ligne de commande à l’aide de scripts Bash plus complexes.
L’apprenant·e sera amené·e à traiter des données, utiliser des arguments et des opérations logiques, et structurer progressivement son raisonnement algorithmique.

# 🛠 Compétences visées :

- Gérer les arguments en ligne de commande

- Utiliser des opérations conditionnelles

- Lire des fichiers et en extraire de l’information

- Effectuer des calculs simples via des scripts Bash

# Scripts Shell - Niveau Intermédiaire

Ce dossier contient une série de scripts Bash conçus pour pratiquer la manipulation de la ligne de commande à un niveau intermédiaire.

## Contenu des scripts

1. **count_files.sh**
   - Compte le nombre de fichiers (non dossiers) dans un répertoire donné.
   - Usage : `./count_files.sh <nom_du_dossier>`

2. **find_string.sh**
   - Recherche une chaîne de caractères dans un fichier.
   - Usage : `./find_string.sh <fichier> <chaîne>`

3. **cli_arguments.sh**
   - Affiche chaque argument passé en ligne de commande ligne par ligne.
   - Usage : `./cli_arguments.sh arg1 arg2 ...`

4. **show_disk_usage.sh**
   - Affiche l’utilisation du disque avec `df -h`.
   - Usage : `./show_disk_usage.sh`

5. **simple_calculator.sh**
   - Effectue une opération arithmétique simple entre deux nombres.
   - Usage : `./simple_calculator.sh <nb1> <nb2> <opérateur>` (opérateurs : +, -, *, /)

## Instructions

- Tous les scripts sont en Bash (`#!/bin/bash`).
- Assurez-vous qu'ils sont exécutables avec `chmod +x <nom_du_script>.sh`.
- Exécutez les scripts depuis le terminal.

