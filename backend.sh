#!/usr/bin/env sh

##
#
#    To install CMD + Space bar > Terminal or Iterm2
#    curl -sL https://raw.githubusercontent.com/owinteractive/ow-osx-setup/master/backend.sh | sh
#
#    Works in 10.15.*

## Dar permissão para instalar os programas
printf '\e[1;31mSenha do OS X (Privilégios de Admistrador)\e[0m\n'
sudo -v

## Gerenciar de pacotes do OSX
printf '\e[1;31mInstalar Homebrew (Vulgo Brew) - (S)im/(N)ão\e[0m\n'
read homebrew

case "$homebrew" in
    s|S|Sim|"")
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    ;;
    *)
        echo "..."
    ;;
esac

## Framework do GIT
printf '\e[1;31mInstalar GIT Flow - (S)im/(N)ão\e[0m\n'
read gitflow

case "$gitflow" in
    s|S|Sim|"")
        brew install git-flow-avh
    ;;
    *)
        echo "..."
    ;;
esac

## Navegador do Google
printf '\e[1;31mInstalar Google Chrome - (S)im/(N)ão\e[0m\n'
read googlechrome

case "$googlechrome" in
    s|S|Sim|"")
        brew cask install google-chrome
    ;;
    *)
        echo "..."
    ;;
esac

## Editor de Código da Microsoft
printf '\e[1;31mInstalar VSCode - (S)im/(N)ão\e[0m\n'
read vscode

case "$vscode" in
    s|S|Sim|"")
        brew cask install visual-studio-code
    ;;
    *)
        echo "..."
    ;;
esac

## SGBDI utilizado junto com o MySQL/MariaDB
printf '\e[1;31mInstalar Sequel Pro - (S)im/(N)ão\e[0m\n'
read sequelpro

case "$sequelpro" in
    s|S|Sim|"")
        brew cask install sequel-pro
    ;;
    *)
        echo "..."
    ;;
esac

## Virtualização e Orquestração de ambientes
printf '\e[1;31mInstalar Docker - (S)im/(N)ão\e[0m\n'
read captain

case "$captain" in
    s|S|Sim|"")
        brew cask install docker
    ;;
    *)
        echo "..."
    ;;
esac

## Visualizador de máquinas do docker
printf '\e[1;31mInstalar Captain - (S)im/(N)ão\e[0m\n'
read captain

case "$captain" in
    s|S|Sim|"")
        brew cask install captain
    ;;
    *)
        echo "..."
    ;;
esac

## Gerenciador de terminal com outras features
printf '\e[1;31mInstalar Iterm2 - (S)im/(N)ão\e[0m\n'
read iterm2

case "$iterm2" in
    s|S|Sim|"")
        brew cask install iterm2
    ;;
    *)
        echo "..."
    ;;
esac

## Comunicador / Bate Papo
printf '\e[1;31mInstalar Slack - (S)im/(N)ão\e[0m\n'
read slack

case "$slack" in
    s|S|Sim|"")
        brew install slack
    ;;
    *)
        echo "..."
    ;;
esac

## Interface gráfica do GIT
printf '\e[1;31mInstalar Sourcetree - (S)im/(N)ão\e[0m\n'
read sourcetree

case "$sourcetree" in
    s|S|Sim|"")
        brew install sourcetree
    ;;
    *)
        echo "..."
    ;;
esac

## Interpretador de Javascript
printf '\e[1;31mInstalar Node - (S)im/(N)ão\e[0m\n'
read node

case "$node" in
    s|S|Sim|"")
        brew install node
    ;;
    *)
        echo "..."
    ;;
esac

## Facilita na Troca de PHP na máquina
printf '\e[1;31mInstalar NPM - SwitchPHP - (S)im/(N)ão\e[0m\n'
read npmswitchphp

case "$npmswitchphp" in
    s|S|Sim|"")
        npm i -g switch-php
    ;;
    *)
        echo "..."
    ;;
esac

## Facilita na Troca de versão do Node na máquina
printf '\e[1;31mInstalar NPM - N - (S)im/(N)ão\e[0m\n'
read npmn

case "$npmn" in
    s|S|Sim|"")
        npm i -g n
    ;;
    *)
        echo "..."
    ;;
esac
