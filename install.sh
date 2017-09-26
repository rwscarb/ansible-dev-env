#!/usr/bin/env bash
set -e

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y git python-pip
sudo pip install ansible
sudo pip install --upgrade pyOpenSSL
USER=$(getent passwd 1000 | cut -f 1 -d ':')
mkdir -p ~/dev/github/rwscarb || true
pushd ~/dev/github/rwscarb
git clone https://github.com/rwscarb/dot-files.git || true
cd dot-files/
./install.sh 
cd ..
git clone https://github.com/rwscarb/ansible-dev-env.git || true
cd ansible-dev-env/
ansible-playbook -e user=ford playbook-bootstrap.yml -i inventory
sudo reboot
# wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# DBUS_SESSION_BUS_ADDRESS="" ~/.dropbox-dist/dropboxd &
