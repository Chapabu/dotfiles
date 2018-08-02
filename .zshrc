#! /usr/bin/env bash

# Load antigen
source /usr/local/share/antigen/antigen.zsh

DOTFILES=("antigen" "aliases" "applications" "completion" "path" "variables" "functions.sh")

for DOTFILE in "${DOTFILES[@]}"
do
  if [[ -f "${HOME}/dotfiles/.${DOTFILE}" ]]; then
    source "${HOME}/dotfiles/.${DOTFILE}"
  fi
done
