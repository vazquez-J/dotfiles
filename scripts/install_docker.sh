#!/bin/bash
echo 'Updating packages'
sudo apt update -qq

echo 'Installing dependencies'
sudo apt install -yqq apt-transport-https ca-certificates software-properties-common

echo 'Installing key'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt update

sudo apt install docker-ce

echo "Adding docker group"
sudo usermod -aG docker $USER
