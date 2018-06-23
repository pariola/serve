#!/bin/sh
# Ubuntu 18.04
sudo apt update
# Download Node 10 PPA
cd ~
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
# Download & Install
sudo bash nodesource_setup.sh
sudo apt install nodejs

# Done
echo "Done"