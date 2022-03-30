#!/bin/bash
sudo timedatectl set-timezone America/Sao_Paulo
sudo yum update -y
sudo yum install -y rh-python38-python.x86_64 rh-python38-python-pip.noarch rh-python38-python-devel.x86_64 '@Development Tools' git libselinux-python3.x86_64
sudo pip3.6 install --upgrade pip && pip3.6 install --upgrade setuptools
sudo pip3.6 install setuptools_rust wheel && sudo pip3.6 install ansible
sudo mkdir -p /etc/ansible
mkdir -p ~/git