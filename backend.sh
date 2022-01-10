#!/usr/bin/env sh

##
#    To install CMD + Space bar > Terminal or Iterm2
#    sh -c "$(curl -fsSL https://raw.githubusercontent.com/owinteractive/ow-osx-setup/master/backend.sh)"
#

## Dar permissão para instalar os programas
printf '\e[1;31mSenha do OS X (Privilégios de Administrador)\e[0m\n'
sudo -v

## Gerenciar de pacotes do OSX
printf '\e[1;31mInstalar Homebrew (obrigatório) - Gerenciador de pacotes - (S)im/(N)ão\e[0m\n'
read homebrew

case "$homebrew" in
    s|S|Sim|"")
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    ;;
    n|N|Não|"")
        printf '\e[1;31mVocê não instalou o Homebrew, ele é obrigatório para dar continuidade na instalação de outros programas.\e[0m\n'
        exit 1
    ;;
esac

## É Apple Silicon?
printf '\e[1;31mEstá em um computador com Apple Silicon (Apple M1)? (S)im/(N)ão\e[0m\n'
read silicon

case "$silicon" in
    s|S|Sim|"")
        softwareupdate -install-rosetta && /usr/sbin/softwareupdate -install-rosetta -agree-to-license
    ;;
esac

## Interpretador de Javascript no Servidor
printf '\e[1;31mInstalar Node.js - Interpretador JS no servidor - (S)im/(N)ão\e[0m\n'
read node

case "$node" in
    s|S|Sim|"")
        brew install node@14 && brew link --force --overwrite node@14
    ;;
esac

## Facilita na troca de versão do Node na máquina
printf '\e[1;31mInstalar n - Gerenciamento de versões do Node.js - (S)im/(N)ão\e[0m\n'
read npmn

case "$npmn" in
    s|S|Sim|"")
        npm i -g n
    ;;
esac

## Framework do terminal
printf '\e[1;31mInstalar Oh my ZSH - Gerenciamento das configurações do interpretador de comandos Zsh - (S)im/(N)ão\e[0m\n'
read zsh

case "$zsh" in
    s|S|Sim|"")
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ;;
esac

## Navegador do Google
printf '\e[1;31mInstalar Google Chrome - Navegador Web - (S)im/(N)ão\e[0m\n'
read googlechrome

case "$googlechrome" in
    s|S|Sim|"")
        brew cask install google-chrome
    ;;
esac

## Editor de texto da Microsoft
printf '\e[1;31mInstalar VSCode - Editor de texto - (S)im/(N)ão\e[0m\n'
read vscode

case "$vscode" in
    s|S|Sim|"")
        brew cask install visual-studio-code
    ;;
esac

## Comunicador / Bate Papo
printf '\e[1;31mInstalar Discord - Aplicativo para comunicação - (S)im/(N)ão\e[0m\n'
read discord

case "$discord" in
    s|S|Sim|"")
        brew cask install discord
    ;;
esac

## Spotify
printf '\e[1;31mInstalar Spotify - Serviço de streaming musical - (S)im/(N)ão\e[0m\n'
read spotify

case "$spotify" in
    s|S|Sim|"")
        brew cask install spotify
    ;;
esac

## Framework do GIT
printf '\e[1;31mInstalar GIT Flow - Gerenciamento de Branchs - (S)im/(N)ão\e[0m\n'
read gitflow

case "$gitflow" in
    s|S|Sim|"")
        brew install git-flow-avh
    ;;
esac

## Interface gráfica do GIT
printf '\e[1;31mInstalar Sourcetree - Git GUI - (S)im/(N)ão\e[0m\n'
read sourcetree

case "$sourcetree" in
    s|S|Sim|"")
        brew cask install sourcetree
    ;;
esac

## SGBDI utilizado junto com o MySQL/MariaDB
printf '\e[1;31mInstalar Sequel Ace - Sistema de gerenciamento de banco de dados - (S)im/(N)ão\e[0m\n'
read sequelace

case "$sequelace" in
    s|S|Sim|"")
        brew install --cask sequel-ace
    ;;
esac

## Postman client HTTP
printf '\e[1;31mInstalar Postman - Cliente HTTP - (S)im/(N)ão\e[0m\n'
read postman

case "$postman" in
    s|S|Sim|"")
        brew cask install postman
    ;;
esac

## Docker
printf '\e[1;31mInstalar Docker - Virtualização - (S)im/(N)ão\e[0m\n'
read docker

case "$docker" in
    s|S|Sim|"")
        brew install --cask docker
    ;;
esac

## Forticlient VPN
printf '\e[1;31mInstalar Forticlient - Serviço de VPN - (S)im/(N)ão\e[0m\n'
read forticlient

case "$forticlient" in
    s|S|Sim|"")
        brew install --cask forticlient
    ;;
esac