# serve 🖥️

Script to setup my production environment on a server with:

- Node.JS
- Yarn
- PM2 (using the `ecosystem.config.js` file)
- Auto Deployment

## Install

- Download script

```console
curl -s https://raw.githubusercontent.com/pariola/serve/master/install.sh -o install.sh
```

- Make script executable by running

```console
chmod +x install.sh
```

- Then execute with `./install.sh APP_NAME` and replacing APP_NAME with the name you prefer

## Usage

After installing connect to your remote repository via `ssh://USERNAME@SERVER_IP/opt/APP_NAME.git`

where 
- USERNAME means username for server e.g `root`
- SERVER_IP means your server's Public IP e.g `123.132.126.2`
- APP_NAME means the name you would like e.g `serve`

e.g → `git remote add origin ssh://root@123.132.126.2/opt/serve.git` on your local machine, then deploy changes

## 🚀

## Note

- You can only connect via **SSH**
