#!/bin/bash
# grep : permet de rechercher des chaînes de caractères spécifiques (ou des modèles plus complexes avec des expressions régulières) dans des fichiers. 
# -q (quiet ou silent) : empêche toute sortie à l'écran
# La commande grep -q en shell est utilisée pour chercher un motif dans un texte, sans afficher le résultat, mais en se basant uniquement sur le code de retour (succès ou échec).

read fichier
read mot

if grep -q "$mot" "$fichier" ; then
  echo "La chaîne '$mot' a été trouvée dans $fichier."
else
  echo "La chaîne '$mot' n'a pas été trouvée dans $fichier."
fi