#! /usr/bin/env bash

# Load antigen
source ${HOME}/antigen.zsh

DOTFILES=("applications" "path" "antigen" "aliases" "completion" "variables" "functions")

for DOTFILE in "${DOTFILES[@]}"
do
  if [[ -f "${HOME}/dotfiles/.${DOTFILE}" ]]; then
    source "${HOME}/dotfiles/.${DOTFILE}"
  fi
done

# RBEnv
eval "$(rbenv init -)"

eval "$(starship init zsh)"

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/home/mattc'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
