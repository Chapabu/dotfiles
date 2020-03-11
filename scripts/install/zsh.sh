#/ /usr/bin/env bash

install zsh

curl -L git.io/antigen > ${HOME}/antigen.zsh

if [ ${SHELL} != $(which zsh) ]; then
  chsh -s $(which zsh)
fi
