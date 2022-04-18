#!/bin/bash

#####	NAME:				        git-install.sh
#####	VERSION:				    0.1
#####	DESCRIPTION:			    Install git and perform global settings
#####	CREATION DATE:	            20/12/2020
#####	WRITTEN BY:		            Pedro Emanuel de A.S de Almeida
#####	E-MAIL:				        pedroemanuel5296@gmail.com
#####	OS TESTING:	                Kubuntu (KDE NEON), Ubuntu, MacOS (Catalina) 
#####	LICENSES:			        MIT
#####	PROJECT REPOSITORY:			https://github.com/Pedroemanuelavelar/auto-install-and-configurate-for-git

##----- Variáveis ------##
GIT_VERSION=$(git --version | awk '{ print $3 }')
GIT_HUB_USERNAME="your_username_here"
GIT_HUB_EMAIL="your_email_here"

if command -v git &> /dev/null
then
    echo "git já está instalado no sistema"
    exit
fi

## Dá acesso ao root enquanto o programa estiver rodando ##
sudo su

## Guarda o nome do usuário e o email 
echo 'Digite seu nome de usuário do GitHub: '
read GIT_HUB_USERNAME

echo $'\nAgora '$GIT_HUB_USERNAME$' digite seu e-mail: '
read GIT_HUB_EMAIL

if ! [[ uname == "Darwin "]]; then
sh ./install-debian.sh
else
sh ./install-macos.sh
fi

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

