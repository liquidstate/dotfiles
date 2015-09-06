#!/bin/bash

SUBLIME="$HOME/Library/Application Support/Sublime Text 3/Packages"

echo "-> Sublime directory is '$SUBLIME'"

# Backup any existing config
echo "-> backing up .../Packages/User to .../Packages/User.bak"
mv "${SUBLIME}/User" "${SUBLIME}/User.bak"

# Symlink to our home directory
echo "-> symlinking .../Packages/User to $HOME/.sublimetext"
mkdir -p "$HOME/.sublimetext"
ln -s "$HOME/.sublimetext" "${SUBLIME}/User"

echo
