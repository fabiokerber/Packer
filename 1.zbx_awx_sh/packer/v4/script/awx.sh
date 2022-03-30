#!/bin/bash
sudo timedatectl set-timezone America/Sao_Paulo
sudo yum update -y
sudo yum install -y rh-python38-python.x86_64 rh-python38-python-pip.noarch rh-python38-python-devel.x86_64 '@Development Tools' git libselinux-python3.x86_64
sudo pip3.6 install --upgrade pip && pip3.6 install --upgrade setuptools
sudo pip3.6 install setuptools_rust wheel && sudo pip3.6 install ansible
mkdir -p ~/git
git clone https://github.com/fabiokerber/Packer.git ~/git
sudo mkdir -p /etc/ansible
sudo cp -R ~/git/1.zbx_awx_sh/packer/v5/ansible/* /etc/ansible/
sudo touch /var/log/ansible.log && sudo chmod 775 /var/log/ansible.log
# ssh-keygen -t rsa (3x Enter) 
# ssh-copy-id -i ~/.ssh/id_rsa.pub 127.0.0.1
# ansible-playbook /etc/ansible/playbook.yml
# rm -rf ~/git && sudo rm -rf /etc/ansible && git clone https://github.com/fabiokerber/Packer.git ~/git && sudo mkdir -p /etc/ansible && sudo cp -R ~/git/1.zbx_awx_sh/packer/v5/ansible/* /etc/ansible/ && sudo touch /var/log/ansible.log && sudo chmod 775 /var/log/ansible.log