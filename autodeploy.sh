#!/bin/sh
# Ubuntu
sudo apt update
# Install Git
sudo apt install git

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
yarn" > /opt/${app_name}.git/hooks/post-receive

# Make `post-receive` executable
chmod +x /opt/${app_name}.git/hooks/post-receive

# Done
echo "Done"