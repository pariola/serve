#!/bin/sh
# Ubuntu 18.04
sudo apt update
# Download Node 10 PPA
cd ~
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
# Download & Install
sudo bash nodesource_setup.sh
sudo apt install nodejs

# Install Yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

# Install PM2
yarn global add pm2

# Done
echo "Done"