#! /usr/bin/env bash

echo "Adding basic APT dependencies..."

PACKAGES=(
  curl
  fonts-powerline
  htop
  powerline
  tmux
  wget
  zsh
)

install ${PACKAGES[@]}
