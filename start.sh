#!/bin/bash

mkdir /home/git
cd /home/git
yum install git ansible openssh -y
git clone https://github.com/supchikov/ansible.git
yes | cp -rf /home/git/ansible/ansible.cfg /etc/ansible/ansible.cfg
ssh-keygen -t rsa
ssh-copy-id root@localhost
rm -rf /etc/ansible/roles 
ln -s /home/git/ansible/roles /etc/ansible/ 
rm -rf /etc/ansible/playbooks
ln -s /home/git/ansible/playbooks /etc/ansible/ 
