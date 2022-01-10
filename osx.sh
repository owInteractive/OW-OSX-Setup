#!/usr/bin/env sh

##
#
#    To install CMD + Space bar > Terminal or Iterm2
#    sh -c "$(curl -fsSL https://raw.githubusercontent.com/owinteractive/ow-osx-setup/master/osx.sh)"
#
#    Forked from https://github.com/rogersilvasouza/my-setup/blob/master/osx/post-intall.sh
#    That forked from https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#
#    Works in 10.15, 10.14, 10.13, 10.12, 10.11

printf '\e[1;31mSenha do OS X (Privilégios de Administrador)\e[0m\n'
sudo -v

printf '\e[1;31mDesativar os efeitos sonoros na inicialização\e[0m\n'
sudo nvram SystemAudioVolume=" "

printf '\e[1;31mVerifique se há atualizações de software diariamente, não apenas uma vez por semana\e[0m\n'
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

printf '\e[1;31mDefinir o tamanho do ícone da barra lateral como médio\e[0m\n'
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

printf '\e[1;31mExpanda salvar painel por padrão\e[0m\n'
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

printf '\e[1;31mExpandir painel de impressão por padrão\e[0m\n'
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

printf '\e[1;31mRemova duplicatas no menu Abrir com (consulte também o alias lscleanup)\e[0m\n'
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

printf '\e[1;31mDesative a opção "Tem certeza de que deseja abrir este aplicativo?" diálogo\e[0m\n'
defaults write com.apple.LaunchServices LSQuarantine -bool false

printf '\e[1;31mSalvar capturas de tela nos downloads\e[0m\n'
defaults write com.apple.screencapture location -string "${HOME}/Downloads"

printf '\e[1;31mSalvar capturas de tela no formato JPG (outras opções: BMP, GIF, JPG, PDF, TIFF)\e[0m\n'
defaults write com.apple.screencapture type -string "jpg"

printf '\e[1;31mDesativar sombra nas capturas de tela\e[0m\n'
defaults write com.apple.screencapture disable-shadow -bool true

printf '\e[1;31mListar Arquivos sempre em listview\e[0m\n'
sudo defaults write com.apple.Finder FXPreferredViewStyle Nlsv

printf '\e[1;31mLocalizador: desativar animações de janela e animações Obter informações\e[0m\n'
defaults write com.apple.finder DisableAllAnimations -bool true

printf '\e[1;31mMostrar ícones para discos rígidos, servidores e mídia removível na área de trabalho\e[0m\n'
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop         -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop     -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop     -bool false

printf '\e[1;31mExibir o caminho POSIX completo como o título da janela do Finder\e[0m\n'
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

printf '\e[1;31mDesabilitar backup automatico do Time Machine\e[0m\n'
hash tmutil &> /dev/null && sudo tmutil disablelocal

printf '\e[1;31mAcesso Total ao Teclado (Ex:Ativar a tecla Tab, em caixas de diálogo modais)\e[0m\n'
sudo defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

printf '\e[1;31mHabilitar subpixel e renderização de fontes em LCDs não-Apple\e[0m\n'
sudo defaults write NSGlobalDomain AppleFontSmoothing -int 2

printf '\e[1;31mHabilitar o Dock 2D\e[0m\n'
sudo defaults write com.apple.dock no-glass -bool true

printf '\e[1;31mDesativar transparência na barra de menu\e[0m\n'
sudo defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

printf '\e[1;31mSempre mostrar as barras de rolagem\e[0m\n'
sudo defaults write NSGlobalDomain AppleShowScrollBars -string "Auto"

printf '\e[1;31mDesativar animações de janelas e pastas\e[0m\n'
sudo defaults write com.apple.finder DisableAllAnimations -bool true

printf '\e[1;31mMostrar todas as extensções de arquivo no Finder\e[0m\n'
sudo defaults write NSGlobalDomain AppleShowAllExtensions -bool true

printf '\e[1;31mUse o diretório atual como escopo de pesquisa padrão no Finder\e[0m\n'
sudo defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

printf '\e[1;31mMostrar a barra do caminho no Finder\e[0m\n'
sudo defaults write com.apple.finder ShowPathbar -bool true

printf '\e[1;31mMostrar barra de status no Finder\e[0m\n'
sudo defaults write com.apple.finder ShowStatusBar -bool true

printf '\e[1;31mMostrar luzes indicadoras para os aplicativos abertos no Dock\e[0m\n'
sudo defaults write com.apple.dock show-process-indicators -bool false

printf '\e[1;31mAbrir aplicativos sem animação a partir do Dock\e[0m\n'
sudo defaults write com.apple.dock launchanim -bool false

printf '\e[1;31mDesativar animações ao abrir e fechar janelas\e[0m\n'
sudo defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

printf '\e[1;31mDesabilitar a verificação de imagem de disco\e[0m\n'
sudo defaults write com.apple.frameworks.diskimages skip-verify -bool true
sudo defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
sudo defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

printf '\e[1;31mAutomaticamente abrir uma nova janela do Finder quando um volume estão montado\e[0m\n'
sudo defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
sudo defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
sudo defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

printf '\e[1;31mEvite criar .DS_Store Volumes de rede\e[0m\n'
sudo defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

printf '\e[1;31mDesativar o aviso quando mudar uma extensão de arquivo\e[0m\n'
sudo defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

printf '\e[1;31mHabilitar snap-to-grid para ícones do desktop\e[0m\n'
sudo /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

printf '\e[1;31mHabilitar o aviso antes de esvaziar a Lixeira\e[0m\n'
sudo defaults write com.apple.finder WarnOnEmptyTrash -bool false

printf '\e[1;31mDesativar cache do Safari para os Top Sites\e[0m\n'
sudo defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

printf '\e[1;31mAtivar menu de debug do Safari\e[0m\n'
sudo defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

printf '\e[1;31mDesative o reabrir as janelas quando o desligar o Mac\e[0m\n'
sudo defaults write com.apple.loginwindow TALLogoutSavesState -bool false
sudo defaults write com.apple.loginwindow LoginwindowLaunchesRelaunchApps -bool false

printf '\e[1;31mMostrar a Pasta ~/Library\e[0m\n'
sudo chflags nohidden ~/Library

printf '\e[1;31mMostrar Arquivos Ocultos\e[0m\n'
defaults write com.apple.Finder AppleShowAllFiles YES;
killall -HUP Finder;

printf '\e[1;31mReindex Apps\e[0m\n'
sudo mdutil -E /