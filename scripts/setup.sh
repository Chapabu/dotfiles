#! /usr/bin/env bash

if [[ $(id -u) -ne 0 ]] ; then echo "I need the powerz" ; exit 1 ; fi

PWD=$(dirname "$0")
ME=$(who | awk '{print $1}')
sudo apt upgrade -y

source ${PWD}/utils.sh

sudo apt update -y

source ${PWD}/install.sh

echo "Removing unused packages..."

sudo apt autoremove
