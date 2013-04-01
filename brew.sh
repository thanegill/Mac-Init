#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# brew install coreutils
# echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
# brew install findutils

# Install SCV
brew install git mecurial

# Install zsh 5
brew install zsh

# Install others
brew install wget
brew install lynx
brew install hub
brew install nmap
brew install 


# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew tap josegonzalez/homebrew-php
brew install php54

# These two formulae didn’t work well last time I tried them:
#brew install homebrew/dupes/vim
#brew install homebrew/dupes/screen

# Install everything else
brew install ack
#brew install exiv2
brew install git
#brew install imagemagick
brew install lynx
brew install node
brew install rename
brew install rhino
brew install tree
brew install webkit2png

brew tap homebrew/versions
brew install lua52

# Remove outdated versions from the cellar
brew cleanup
