#!/bin/bash -eux

# Install Python.
yum -y install git wget curl vim

#Configuration for SSH
mkdir /home/vagrant/.ssh
wget --no-check-certificate -O authorized_keys 'https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub'
mv authorized_keys /home/vagrant/.ssh
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh

