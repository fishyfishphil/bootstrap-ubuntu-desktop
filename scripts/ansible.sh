#!/bin/bash

apt install software-properties-common -y
add-apt-repository --yes --update ppa:ansible/ansible
apt install ansible -y