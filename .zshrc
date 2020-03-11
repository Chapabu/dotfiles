#! /usr/bin/env bash

# Load antigen
source ${HOME}/antigen.zsh

DOTFILES=("path" "antigen" "aliases" "applications" "completion" "variables" "functions")

for DOTFILE in "${DOTFILES[@]}"
do
  if [[ -f "${HOME}/dotfiles/.${DOTFILE}" ]]; then
    source "${HOME}/dotfiles/.${DOTFILE}"
  fi
done
