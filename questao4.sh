#!/bin/sh

echo "Procure o arquivo aqui: "
read ARQUIVO

if [ -e $ARQUIVO ] ; then
    echo "Existe um arquivo com este nome!"
else
    echo "Não existe um arquivo com este nome!"
fi