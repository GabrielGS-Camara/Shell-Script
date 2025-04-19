#!/bin/bash

NUMERO=101

while [ "$NUMERO" -ge 100 -a "$NUMERO" -le 200 ] ; do
    echo "Escreva um valor inteiro: "
    read NUMERO
done