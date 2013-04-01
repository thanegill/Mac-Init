#!/bin/bash

# Color 

Colors() {
Escape="\033";

BlackF="${Escape}[30m"; RedF="${Escape}[31m"; GreenF="${Escape}[32m";
YellowF="${Escape}[33m"; BlueF="${Escape}[34m"; Purplef="${Escape}[35m";
CyanF="${Escape}[36m"; WhiteF="${Escape}[37m";

BlackB="${Escape}[40m"; RedB="${Escape}[41m"; GreenB="${Escape}[42m";
YellowB="${Escape}[43m"; BlueB="${Escape}[44m"; PurpleB="${Escape}[45m";
CyanB="${Escape}[46m"; WhiteB="${Escape}[47m";

BoldOn="${Escape}[1m"; BoldOff="${Escape}[22m";
ItalicsOn="${Escape}[3m"; ItalicsOff="${Escape}[23m";
UnderlineOn="${Escape}[4m"; UnderlineOff="${Escape}[24m";
BlinkOn="${Escape}[5m"; BlinkOff="${Escape}[25m";
InvertOn="${Escape}[7m"; InvertOff="${Escape}[27m";

Reset="${Escape}[0m";
}

# Start

clear

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

brew doctor

brew update && brew upgrade

brew install git wget hub zsh nmap vim gnat sqlite mercurial

chsh -s '/bin/zsh'

# Install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh


# #Install Python
# brew install python

# pip install --upgrade distribute
# pip install --upgrade pip
# pip install virtualenv


# #Install RVM and ruby
# curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enabled


# #Link Sublime Text 2
# sudo ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/bin/subl
