#!/bin/bash
#Installs ansible 
sudo apt-get install ansible -y 
echo 'localhost ansible_connection=local' > /etc/ansible/hosts
echo 'log_path=/vagrant/deployment.log' >> /etc/ansible/ansible.cfg 
