#!/bin/bash

set -e

echo "prerequisites: python git pip dulwich tmux weechat offlineimap mutt hg ack zsh vim"

function ensure_link {
    test -L "$HOME/$2" || ln -s "$HOME/$1" "$HOME/$2"
  }


  ensure_link "lib/dotfiles/ackrc"               ".ackrc"
  ensure_link "lib/dotfiles/gemrc"               ".gemrc"
  ensure_link "lib/dotfiles/gitconfig"           ".gitconfig"
  ensure_link "lib/dotfiles/gitignore"           ".gitignore"
  ensure_link "lib/dotfiles/gitignore_global"    ".gitignore_global"
  ensure_link "lib/dotfiles/tmux.conf"           ".tmux.conf"
  ensure_link "lib/dotfiles/vim"                 ".vim"
  ensure_link "lib/dotfiles/vim/vimrc"           ".vimrc"

  echo completed
