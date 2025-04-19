#!/bin/sh
echo "Insira o nome do usuario:"
read NOME
echo "Insira o sobrenome do usuario:"
read SOBRENOME
echo "Informe o ano de nascimento:"
read ANONASC
echo "Informe o numero de telefone do usuario:"
read NUMERO
echo "Informe o e-mail do usuario"
read EMAIL

echo "\nEscolha uma das opções a seguir:\n"
echo "1.Nome completo"
echo "2.Ano de nascimento"
echo "3.Telefone"
echo "4.Endereço de email"
read OPCAO

case $OPCAO in 
    1) echo "$NOME $SOBRENOME";;
    2) echo "$ANONASC";;
    3) echo "$NUMERO";;
    4) echo "$EMAIL";;
    *) echo "Opçao inexistente, insira outro"
esac
