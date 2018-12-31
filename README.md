# serve 🖥️

Scripts to setup my production environment with:

- Node.JS
- Yarn
- ~~PM2 (using the `ecosystem.config.js` file)~~ (manually implemented)
- Git Deployment

## Install

### Basic

- Download script

  ```console
  curl -s https://raw.githubusercontent.com/pariola/serve/master/install.sh -o install.sh
  ```

- Make script executable by running

  ```console
  chmod +x install.sh
  ```

- Then execute as `root`
  ```
  ./install.sh
  ```
  Or with non-root users
  ```
  sudo ./install.sh
  ```
### Autodeployment 

- Download script

  ```console
  curl -s https://raw.githubusercontent.com/pariola/serve/master/autodeploy.sh -o autodeploy.sh
  ```

- Make script executable by running

  ```console
  chmod +x autodeploy.sh
  ```

- Then execute as `root`
  ```
  ./autodeploy.sh APP_NAME
  ```
  Or with non-root users
  ```
  sudo ./autodeploy.sh APP_NAME
  ```
  Replace `APP_NAME` with the name you prefer

- Then you need to create a `startapp` alias
   ```console
   alias startapp="command_to_run_app"
   ```

   Read on aliases [here](https://www.tecmint.com/create-alias-in-linux/).

## Autodeployment Usage

After installing connect to your remote repository via `ssh://USERNAME@SERVER_IP/opt/APP_NAME.git`

where

- USERNAME means username for server e.g `root`
- SERVER_IP means your server's Public IP e.g `123.132.126.2`
- APP_NAME means the name you would like e.g `serve`

e.g → `git remote add origin ssh://root@123.132.126.2/opt/serve.git` on your local machine, then deploy changes

## 🚀

Thanks, <br/> Blessing.