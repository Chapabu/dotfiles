#! /usr/bin/env bash

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

function update {
  sudo apt update -qq
}

function add_repo {
  sudo add-apt-repository ${1} -y
  update
}
