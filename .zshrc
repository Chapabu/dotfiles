#! /usr/bin/env bash
# zmodload zsh/zprof

###
# ANTIGEN
###

source ${HOME}/antigen.zsh

# Load oh-my-zsh.
antigen use oh-my-zsh

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Default bundles
antigen bundle zdharma/zsh-diff-so-fancy
antigen bundle git
antigen bundle gitfast
antigen bundle history-substring-search
antigen bundle zsh-users/zsh-autosuggestions

# Load in theme.
antigen bundle mafredri/zsh-async

# Tell Antigen that you're done.
antigen apply

###
# APPLICATIONS
###

# Starship
eval "$(starship init zsh)"

# GPG
export GPG_TTY=$(tty)

# TheFuck
eval $(thefuck --alias)

# Homebrew
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# PyEnv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Bun
[ -s "/home/mattc/.bun/_bun" ] && source "/home/mattc/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Symfony
export PATH="$HOME/.symfony/bin:$PATH"

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Local bin
export PATH="$HOME/.local/bin:$PATH"

# Go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

# Serverless Framework
export PATH="$HOME/.serverless/bin:$PATH"

# Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

###
# ALIASES
###

alias g="git"
alias dco="docker-compose"
alias nah='git reset --hard;git clean -df'
alias reload_profile="source ~/.zshrc;echo \"Reloaded .zshrc!\""
alias top="sudo htop"
alias mxu="tmuxinator"
alias mx="tmux"
alias gogh='bash -c  "$(wget -qO- https://git.io/vQgMr)"'
alias vim=nvim
alias z=zellij
alias cat=batcat

###
# General Shell bits
###

export EDITOR="nvim"
export DISABLE_AUTO_TITLE=true
export LANG="en_GB.UTF-8"
export LANGUAGE=$LANG
export LC_ALL=$LANG
export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"

autoload bashcompinit
bashcompinit -D

# Zsh
fpath=(/usr/local/share/zsh-completions $fpath)
