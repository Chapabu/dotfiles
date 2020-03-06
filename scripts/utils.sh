#! /usr/bin/env bash

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

function update {
  apt update -qq
}

function add_repo {
  add-apt-repository ${1} -y
  update
}
