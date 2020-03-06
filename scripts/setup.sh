#! /usr/bin/env bash

# GIVE ME THE POWER!
if (( $EUID != 0 )); then
    echo "I'm gonna need you to sudo me."
    exit
fi

PWD=$(dirname "$0")

source ${PWD}/utils.sh

apt update -y

source ${PWD}/install.sh

echo "Removing unused packages..."

apt autoremove
