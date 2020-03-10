#! /usr/bin/env bash

PWD=$(dirname "$0")
ME=$(who | awk '{print $1}')

source ${PWD}/utils.sh

# https://drasite.com/flat-remix

add_repo ppa:daniruiz/flat-remix

install flat-remix-gtk
install flat-remix
install gnome-shell-extension-dash-to-panel

gsettings set org.gnome.shell enabled-extensions "['user-theme@gnome-shell-extensions.gcampax.github.com', 'dash-to-panel@jderose9.github.com']"
gsettings set org.gnome.desktop.interface gtk-theme 'Flat-Remix-GTK-Blue-Dark'
gsettings set org.gnome.desktop.interface icon-theme 'Flat-Remix-Blue'

mkdir -p ${HOME}/.themes
cd ${HOME}/.themes
