#!/usr/bin/env sh

##
#
#    To install CMD + Space bar > Terminal or Iterm2
#    curl -sL https://raw.githubusercontent.com/owinteractive/ow-osx-setup/master/backend.sh | sh
#
#    Works in 10.15.*

printf '\e[1;31mSenha do OS X (Privilégios de Admistrador)\e[0m\n'
sudo -v


printf '\e[1;31mInstalar Homebrew (Vulgo Brew) - (S)im/(N)ão\e[0m\n'
read homebrew

case "$homebrew" in
    s|S|Sim|"")
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    ;;
    n|N|Nao|Não)
        echo "..."
    ;;
    *)
        echo "Opção inválida"
    ;;
esac

printf '\e[1;31mInstalar VSCode - (S)im/(N)ão\e[0m\n'
read vscode

case "$vscode" in
    s|S|Sim|"")
        brew cask install visual-studio-code
    ;;
    n|N|Nao|Não)
        echo "..."
    ;;
    *)
        echo "Opção inválida"
    ;;
esac