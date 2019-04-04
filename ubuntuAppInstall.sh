#!/bin/bash

echo "###################"
echo "Installing Software"
echo "###################"

echo "Installing Terminator"
# install terminator
sudo add-apt-repository ppa:gnome-terminator
sudo apt update
sudo apt install terminator

echo "Installing Google Chrome"
# install google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo "Installing Vim"
# install full version of vim
sudo apt install vim

echo "Installing VS Code"
# install vscode
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

echo "Installing NVM"
# install nvm for node.js and npm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
nvm install 10.15.3

echo "Installing nodemon"
# install nodemon
npm install -g nodemon

echo "#####################"
echo "Installation Complete"
echo "#####################"
