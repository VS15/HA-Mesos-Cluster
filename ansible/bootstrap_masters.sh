#!/bin/bash
#Updates and installs necessary packages

sudo apt-get update -y
sudo apt-get install -y python-software-properties software-properties-common ansible
sudo chmod 666 /etc/ansible/hosts && echo 'localhost ansible_connection=local' > /etc/ansible/hosts

#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF
#DISTRO=$(lsb_release -is | tr '[:upper:]' '[:lower:]')
#CODENAME=$(lsb_release -cs)
#echo "deb http://repos.mesosphere.io/${DISTRO} ${CODENAME} main" | sudo tee /etc/apt/sources.list.d/mesosphere.list

sudo ansible-playbook /vagrant/ansible/mesos_masters.yml -c local -v -f 40

# Install Java 8 from Oracle's PPA
#sudo add-apt-repository ppa:webupd8team/java
#sudo apt-get update -y
#sudo apt-get install -y oracle-java8-installer oracle-java8-set-default
#Installs ansible 
#sudo apt-get install python-pycurl -y
#sudo apt-get install ansible -y 
