#! /usr/bin/env bash

# Load antigen
source /usr/local/share/antigen/antigen.zsh

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/zsh_custom

DOTFILES=("antigen" "aliases" "applications" "completion" "functions.sh" "path" "variables")

for DOTFILE in "${DOTFILES[@]}"
do
  if [[ -f "${HOME}/dotfiles/.${DOTFILE}" ]]; then
    source "${HOME}/dotfiles/.${DOTFILE}"
  fi
done
