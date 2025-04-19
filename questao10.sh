#!/bin/bash

echo "Escreva a concentração do gás(ppm): "
read C

if [[ "$C" -lt 0 ]] ; then
    echo "Número fora dos limites da classificação"

elif [ "$C" -ge 0 -a "$C" -lt 20 ] ; then
    echo "Baixo nível de risco"

elif [ 20 -le "$C" -a "$C" -lt 60 ] ; then
    echo "Moderado nível de risco"

elif [ 60 -le "$C" -a "$C" -lt 90 ] ; then
    echo "Alto nível de risco"

elif [ "$C" -ge 90 -a "$C" -le 99 ] ; then
    echo "Extremo nível de risco"

else [[ "$C" -ge 100 ]]
    echo "Número fora dos limites da classificação"
    
fi