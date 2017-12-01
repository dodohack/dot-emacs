#!/bin/bash

ROOT=`pwd`

# Backup old config file
cp ~/.emacs ~/.emacs.old
cp ~/.spacemacs ~/.spacemacs.old
cp -r ~/.emacs.d ~/.emacs.d.old

# Install spacemacs
echo "Installing spacemacs..."
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Install phpplus layers for spacemacs
echo "Installing phpplus..."
cd /tmp
git clone https://github.com/xcwen/spacemacs-config
cp -rf /tmp/spacemacs-config/layers/phpplus ~/.emacs.d/layers/

# Copy .spacemacs to ~/
echo "Updating .spacemacs..."
cd $ROOT
cp dot.spacemacs ~/.spacemacs

echo "Done"
