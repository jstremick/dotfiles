#!/bin/bash

set -e

echo "prerequisites: python git pip dulwich tmux weechat offlineimap mutt hg ack zsh vim"

function ensure_link {
    test -L "$HOME/$2" || ln -s "$HOME/$1" "$HOME/$2"
  }


  ensure_link "dotfiles/ackrc"               ".ackrc"
  ensure_link "dotfiles/gemrc"               ".gemrc"
  ensure_link "dotfiles/gitconfig"           ".gitconfig"
  ensure_link "dotfiles/gitignore"           ".gitignore"
  ensure_link "dotfiles/gitignore_global"    ".gitignore_global"
  ensure_link "dotfiles/tmux.conf"           ".tmux.conf"
  ensure_link "dotfiles/vim"                 ".vim"
  ensure_link "dotfiles/vim/vimrc"           ".vimrc"

  echo completed
