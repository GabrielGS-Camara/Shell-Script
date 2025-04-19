#!/bin/sh

if [ -d $1 ] ; then
    echo "$1 é um diretório"
elif [ -e $1 ] ; then
    echo "$1 é um arquivo"
else
    echo "$1 não é arquivo e nem diretório"
    exit 1
fi