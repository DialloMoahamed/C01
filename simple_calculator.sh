#!/bin/bash
# Script calculatrice simple

# Vérifie le nombre d'arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <nombre1> <nombre2> <opérateur>"
    echo "Opérateurs supportés : + - * /"
    exit 1
fi

N1=$1
N2=$2
OP=$3

# Vérifie que N1 et N2 sont bien des nombres
if ! [[ "$N1" =~ ^-?[0-9]+([.][0-9]+)?$ ]] || ! [[ "$N2" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
    echo "Erreur : les deux premiers arguments doivent être des nombres."
    exit 1
fi

# Effectue l'opération
case "$OP" in
    +) RESULT=$(echo "$N1 + $N2" | bc -l) ;;
    -) RESULT=$(echo "$N1 - $N2" | bc -l) ;;
    \*) RESULT=$(echo "$N1 * $N2" | bc -l) ;;
    /)
        if [ "$N2" == "0" ]; then
            echo "Erreur : division par zéro."
            exit 1
        fi
        RESULT=$(echo "$N1 / $N2" | bc -l)
        ;;
    *)
        echo "Erreur : opérateur non supporté. Utilisez + - * /"
        exit 1
        ;;
esac

echo "Résultat : $RESULT"
