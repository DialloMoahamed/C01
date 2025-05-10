#!/bin/bash
# Script de calculatrice simple

a=$1
b=$2
op=$3

case $op in
  +) result=$((a + b)) ;;
  -) result=$((a - b)) ;;
  \*) result=$((a * b)) ;;
  /)  result=$((a / b)) ;;
esac

echo "Résultat : $result"