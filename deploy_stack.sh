#!/bin/bash
IP="10.1.200.50"
echo "Cruise control: Deploying the cluster, stand by..."
vagrant destroy -f > /dev/null
vagrant up 
# Waiting for the final slave in the cluster
  while [ `nc $IP 22 </dev/null|wc -l` -eq 0 ] 
  do 
echo "Waiting for slaves to be deployed"; sleep 5
  done
echo "Initiating provisioning using ansible...."
ansible-playbook -i inventory messos-deploy.yml
echo "Deployment is complete"


