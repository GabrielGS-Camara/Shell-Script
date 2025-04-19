#!/bin/bash

echo "Escreva a concentração do gás(ppm): "
read C

case $C in
    [0-1][0-9]) echo "Baixo nível de risco";;
    [2-5][0-9]) echo "Moderado nível de risco";;
    [6-8][0-9]) echo "Alto nível de risco";;
    [9][0-9]) echo "Extremo nível de risco";;
    *) echo "Valor fora do limite aceitável pela classificação"
esac