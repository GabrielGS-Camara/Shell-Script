#!/bin/bash

echo "Número escolhido: $1"

if [[ "$1" -le 0 ]] ; then
    echo "Valor inválido"
else
    while [[ "$1" -gt 0 ]] ; do
        echo "$1"
        $1= (($1 - 1))
    done
fi