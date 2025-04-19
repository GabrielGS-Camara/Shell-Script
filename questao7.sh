#!/bin/bash

until [ "$NUMERO" -lt 100 -o "$NUMERO" -gt 200 ] ; do
    echo "Escreva um valor inteiro: "
    read NUMERO
done