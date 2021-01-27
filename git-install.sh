#!/bin/bash

##----- Variáveis ------##
GIT_VERSION=$(git --version | awk '{ print $3 }')
GIT_HUB_USERNAME="Pedroemanuelavelar"
GIT_HUB_EMAIL="pedroemanuel5296@gmail.com"

## Atualiza a lista de Repositórios ##
sudo apt-get update

echo $'\nAtualizado a lista de repositórios!\n'

## Atualiza o sistema ##
sudo apt-get upgrade -y

echo $'\n\nSistema atualizado!\n\n'

## Instala o git ##
sudo apt-get install git -y 

echo $'\n\ngit instalado com sucesso! Na versao: '$GIT_VERSION$'\n'

echo $'Instalação concluida!\n' 

## Configuração do git ##
git config --global user.name "$GIT_HUB_USERNAME" 

echo $'\n\nOlá' $GIT_HUB_USERNAME,
echo $'seu username foi configurado com sucesso!\n\n'

git config --global user.email "$GIT_HUB_EMAIL"

echo $'\n\n'$GIT_HUB_USERNAME, 
echo $'seu e-mail foi configurado com sucesso!\n\n'

echo $'Confira suas informacoes:\n'
git config --list 

echo $'\n\nConfigurações realizadas corretamente, fim do script!\n\n'

echo $'\n\ngit instalado e configurado na versão:' $GIT_VERSION

    
exit 0

