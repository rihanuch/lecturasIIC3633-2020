#!/bin/bash

if [ "$1" == "-h" ]; then
  echo "Uso: `basename $0` <número de lectura> <cantidad de papers>"
  exit 0
fi

LECTURAS=$2
NUMERO_LECTURA=$1

mkdir "papers/$NUMERO_LECTURA"

for i in $(seq 1 $LECTURAS)
do
    cp "template.md" "Lectura$NUMERO_LECTURA-$i.md"
    git add "Lectura$NUMERO_LECTURA-$i.md"
done