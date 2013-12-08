#!/bin/bash

set -e

function ensure_link {
    test -L "$HOME/$2" || ln -fs "$HOME/$1" "$HOME/$2"
  }


ensure_link "dotfiles/ackrc"               ".ackrc"
ensure_link "dotfiles/gemrc"               ".gemrc"
ensure_link "dotfiles/gitconfig"           ".gitconfig"
ensure_link "dotfiles/gitignore"           ".gitignore"
ensure_link "dotfiles/gitignore_global"    ".gitignore_global"

ensure_link "dotfiles/vim/vimrc.bundles.local" ".vimrc.bundles.local"
ensure_link "dotfiles/vim/vimrc.local"        ".vimrc.local"

if [ $(uname) = 'Darwin'  ] ; then

  git clone https://github.com/square/maximum-awesome.git $HOME/maximum-awesome
  cd $HOME/maximum-awesome && rake
  ensure_link "dotfiles/powerline-shell.py"     "powerline-shell.py"

else
  git clone https://github.com/timthrillist/minimum-awesome.git $HOME/minimum-awesome
  cd $HOME/minimum-awesome
  chmod a+x install.sh && ./install.sh

fi



echo completed.
