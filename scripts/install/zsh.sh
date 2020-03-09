#/ /usr/bin/env bash

install zsh zsh-antigen

if [ ${SHELL} != $(which zsh) ]; then
  chsh -s $(which zsh)
fi
