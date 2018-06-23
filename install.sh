#!/bin/sh
# Ubuntu
sudo apt update
# Install Git
sudo apt install git
# Download Node 10 PPA
cd ~
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
# Download & Install
sudo bash nodesource_setup.sh
sudo apt install nodejs

# Install Yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn

# Install PM2
yarn global add pm2

# Init Git for autodeployment
app_name=$(echo "$1")
echo "Creating ${app_name}"
git init --bare /opt/${app_name}.git

# Clone repo to app directory
git clone /opt/${app_name}.git /${app_name}

# Create `post-receive` git hook
echo "#!/bin/sh
echo 'Build Triggered'
# Move to app directory
cd /${app_name}
# Work Git
git --git-dir=/opt/${app_name}.git --work-tree=/${app_name} checkout master -f

# Customizations

# Yarn install
echo 'Installing dependencies'
yarn
# Starting app
echo 'Starting ...'
pm2 start ecosystem.config.js" > ./opt/${app_name}.git/hooks/post-receive

# Make `post-receive` executable
chmod +x ./opt/${app_name}.git/hooks/post-receive

# Done
echo "Done"