#QUESTAO 1#
#!/bin/sh

if [ -d $1 ] ; then
    echo "$1 é um diretório"
elif [ -e $1 ] ; then
    echo "$1 é um arquivo"
else
    echo "$1 não é arquivo e nem diretório"
    exit 1
fi



#QUESTAO 2#
#!/bin/sh

F=$(((9 * $1 + 160)/5))

echo "A temperatura em graus Fahrenheit é $F"



#QUESTAO 3#
#!/bin/bash

echo "Número escolhido: $1"

if [[ "$1" -le 0 ]] ; then
    echo "Valor inválido"
else
    while [[ "$1" -gt 0 ]] ; do
        echo "$1"
        $1=(($1 - 1))
    done
fi


#QUESTAO 4#
#!/bin/sh

echo "Procure o arquivo aqui: "
read ARQUIVO

if [ -e $ARQUIVO ] ; then
    echo "Existe um arquivo com este nome!"
else
    echo "Não existe um arquivo com este nome!"
fi



#QUESTAO 5#
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



#QUESTAO 6#
#!/bin/sh

echo "Escolha um mês: "
read MONTH
echo "Escolha um ano: "
read YEAR 

cal $MONTH $YEAR



#QUESTAO 7#
#!/bin/bash

until [ "$NUMERO" -lt 100 -o "$NUMERO" -gt 200 ] ; do
    echo "Escreva um valor inteiro: "
    read NUMERO
done



#QUESTAO 8#
#!/bin/bash

NUMERO=101

while [ "$NUMERO" -ge 100 -a "$NUMERO" -le 200 ] ; do
    echo "Escreva um valor inteiro: "
    read NUMERO
done



#QUESTAO 9#
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



#QUESTAO 10#
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