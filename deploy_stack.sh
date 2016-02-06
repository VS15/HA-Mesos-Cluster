#!/bin/bash
IP="10.1.200.50"
echo "Cruise control: Deploying the cluster, stand by..."
echo "Updating /etc/hosts entries"
echo 10.1.200.11  node01 >> /etc/hosts
echo 10.1.200.12  node02 >> /etc/hosts
echo 10.1.200.13  node03 >> /etc/hosts
echo 10.1.200.30  node04 >> /etc/hosts
echo 10.1.200.40  node05 >> /etc/hosts
echo 10.1.200.50  node06 >> /etc/hosts
vagrant destroy -f > /dev/null
vagrant up 
# Waiting for the final slave in the cluster
  while [ `nc $IP 22 </dev/null|wc -l` -eq 0 ] 
  do 
echo "Waiting for slaves to be deployed"; sleep 5
  done
echo "Deployment is complete. Cluster is ready"
vagrant status


