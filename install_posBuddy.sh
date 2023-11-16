#!/bin/bash

clear

echo "-------------------------------------------------------"
echo "INSTALLING PosBuddy via Ansible on Raspberry Pi"
echo "-------------------------------------------------------"


PKG_OK=$(dpkg-query -W --showformat='${Status}\n' ansible|grep "install ok installed")
echo Checking for ansible: $PKG_OK

if [ "" == "$PKG_OK" ]; then
  echo "No ansible installed. Setting up ansible."
  sudo apt-get --force-yes --yes install ansible
fi

PKG_OK=$(dpkg-query -W --showformat='${Status}\n' cowsay|grep "install ok installed")
echo Checking for cowsay: $PKG_OK

if [ "" == "$PKG_OK" ]; then
  echo "No cowsay installed. Setting up cowsay."
  sudo apt-get --force-yes --yes install cowsay
fi

## Insert this with your credentials in your.profile
## Do this if you want do build your own HeatingControl Version
#export DOCKERHUB_USERNAME="Billy Idol"
#export DOCKERHUB_PASSWORD="whiteWedding"

cowsay "Starting Ansible Playbook"

ansible-playbook $1 install_posBuddy.yml -i inv_rpiPosBuddy

