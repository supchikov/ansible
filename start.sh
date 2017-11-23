#!/bin/bash

mkdir /home/git
cd /home/git
yum install git ansible openssh -y
git clone https://github.com/supchikov/ansible.git
yes | cp -rf /home/git/ansible/ansible.cfg /etc/ansible/ansible.cfg
