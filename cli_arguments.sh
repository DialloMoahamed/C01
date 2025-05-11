#!/bin/bash

echo "--- Using \$@ (all arguments) ---"
i=1
for arg in "$@"; do
  echo "Argument $i: $arg"
  i=$((i + 1))
done

echo "\n--- Using \$1 and shift ---"
count=1
while [ $# -gt 0 ]; do
  echo "Argument $count (\$1): $1"
  shift
  count=$((count + 1))
done

echo "\n--- No more arguments left ---"