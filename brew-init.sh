#! /bin/bash

# brew-init.sh
#
# Installs and replace coreutils for osx
#

trap 'exit $?' SIGINT

taps=( \
'homebrew/dupesi' \
)

installs=( \
'coreutils' \
'binutils' \
'diffutils' \
'ed --default-names' \
'findutils --default-names' \
'gawk' \
'gnu-indent --default-names' \
'gnu-sed --default-names' \
'gnu-tar --default-names' \
'gnu-which --default-names' \
'gnutls --default-names' \
'grep --default-names' \
'gzip' \
'screen' \
'watch' \
'wdiff --with-gettext' \
'wget' \
'bash' \
'emacs' \
'gdb' \
'gpatch' \
'm4' \
'make' \
'nano' \
'file-formula' \
'git' \
'less' \
'openssh --with-brewed-openssl' \
'python --with-brewed-openssl' \
'rsync' \
'svn' \
'unzip' \
'vim --override-system-vi' \
'macvim --override-system-vim --custom-system-icons' \
'zsh' \
)

for tap in "${taps[@]}"; do
    brew tap $tap
done

for install in "${installs[@]}"; do
    brew install $install
done
# gdb requires further actions to make it work. See `brew info gdb`.' \
