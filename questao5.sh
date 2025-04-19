#!/bin/sh

echo "Escreva o nome de um arquivo aqui: "
read ARQUIVO 

if [ -e $ARQUIVO ] ; then
    if [ stat "$ARQUIVO" -gt 100 ] ; then
        echo "O arquivo é maior que 100 bytes"
    else
        echo "O arquivo é menor que 100 bytes"
    fi
else
    echo "Não existe um arquivo com este nome!"
fi