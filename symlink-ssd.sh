#!/bin/bash

sudo -v

BACKUP_DRIVE="Macintosh SSD Backup"
OLD_USER_PATH="$BACKUP_DRIVE/Users/thanegill"

# 2ND_DRIVE="Macintosh HD"

# Remove Folders to be symlinked
rm -rf ~/Pictures
rm -rf ~/Movies

# Copy old Music Files
#cp -R ^'iTunes Media' /Volumes/$OLD_USER_PATH/Music/ ~/Music/

# Symlink media folders to 2nd drive while removing folders
ln -s -f /Volumes/Macintosh\ HD/Pictures/ ${HOME}/Pictures
ln -s -f /Volumes/Macintosh\ HD/Movies/ ${HOME}/Movies
ln -s -f /Volumes/Macintosh\ HD/Music/iTunes/iTunes\ Media/ ${HOME}/Music/iTunes/iTunes\ Media
