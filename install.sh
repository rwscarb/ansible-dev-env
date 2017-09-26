#!/usr/bin/env bash
#apt-get update
#apt-get upgrade
#apt-get install git python-pip
#pip install ansible
#USER=$(getent passwd 1000 | cut -f 1 -d ':')
#mkdir -p /home/$USER/dev/github/
#su - $USER
#mkdir -p ~/dev/github/rwscarb
#pushd ~/dev/github
#mkdir rwscarb
#pushd rwscarb
#git clone https://github.com/rwscarb/dot-files.git
#cd dot-files/
#./install.sh 
#popd
#git clone https://github.com/rwscarb/ansible-dev-env.git
#cd ansible-dev-env/
#ansible-playbook -e user=ford playbook-bootstrap.yml -i inventory 
