#!/bin/bash

ubuntu-drivers autoinstall

apt install --install-recommends winehq-stable -y
apt install tmux -y
apt install ffmpeg -y
apt install flameshot -y