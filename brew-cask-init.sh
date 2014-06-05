#! /bin/bash

# brew-cask-init.sh
#
# Installs brew cask, ie applications
#

trap 'exit $?' SIGINT

# Install brew cask
brew tap caskroom/cask
brew install brew-cask


# gdb requires further actions to make it work. See `brew info gdb`.' \
installs=( \
'alfred' \
'font-inconsolata' \
'istat-menus' \
'viscosity' \
'bettertouchtool' \
'font-inconsolata-dz' \
'keyremap4macbook' \
'vlc' \
'carbon-copy-cloner' \
'gfxcardstatus' \
'steam' \
'wireshark' \
'cleanmymac' \
'google-chrome' \
'sublime-text' \
'xquartz' \
'divvy' \
'hazel' \
'the-unarchiver' \
'dropbox' \
'imagealpha' \
'transmission' \
'flux' \
'imageoptim' \
)

for install in "${installs[@]}"; do
    brew cask install $install
done

brew cask cleanup

