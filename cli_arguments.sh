#!/bin/bash

# Afficher les arguments avec des séparateurs personnalisés
while [ $# -gt 0 ]; do
  if [ $# -gt 1 ]; then
    echo -n "$1, "  # Afficher avec une virgule comme séparateur, sauf pour le dernier
  else
    echo "$1"  # Afficher sans séparateur pour le dernier
  fi
  shift
done