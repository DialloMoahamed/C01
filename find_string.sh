#!/bin/bash

read fichier
read mot

if grep -q "$mot" "$fichier" ; then
  echo "La chaîne '$mot' a été trouvée dans $fichier."
else
  echo "La chaîne '$mot' n'a pas été trouvée dans $fichier."
fi