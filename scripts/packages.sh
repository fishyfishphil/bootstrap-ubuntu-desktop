#!/bin/bash

# Drivers
ubuntu-drivers autoinstall

# Wine
apt install --install-recommends winehq-stable -y

# tmux
apt install tmux -y

# Video on Firefox
apt install ffmpeg -y

#Screenshot tool
apt install flameshot -y

# jq
apt install jq -y

# gnome-tweaks
apt install gnome-tweaks

# xclip
apt install xclip