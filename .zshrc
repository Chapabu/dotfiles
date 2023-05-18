#! /usr/bin/env bash
# zmodload zsh/zprof

# Load antigen
source ${HOME}/antigen.zsh

DOTFILES=("applications" "path" "antigen" "aliases" "completion" "variables" "functions")

for DOTFILE in "${DOTFILES[@]}"
do
  if [[ -f "${HOME}/dotfiles/.${DOTFILE}" ]]; then
    source "${HOME}/dotfiles/.${DOTFILE}"
  fi
done

eval "$(starship init zsh)"

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# zprof
