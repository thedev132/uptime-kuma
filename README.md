# Uptime Kuma

<a target="_blank" href="https://github.com/thedev132/uptime-kuma"><img src="https://img.shields.io/github/stars/thedev132/uptime-kuma" /></a> <a target="_blank" href="https://github.com/thedev132/uptime-kuma"><img src="https://img.shields.io/github/last-commit/thedev132/uptime-kuma" /></a> 

<div align="center" width="100%">
    <img src="./public/icon.svg" width="128" alt="" />
</div>

Uptime Kuma is an easy-to-use self-hosted monitoring tool.

<img src="https://user-images.githubusercontent.com/1336778/212262296-e6205815-ad62-488c-83ec-a5b0d0689f7c.jpg" width="700" alt="" />

## ⭐ Features

* Monitoring uptime for HTTP(s) / TCP / HTTP(s) Keyword / Ping / DNS Record / Push / Steam Game Server / Docker Containers
* Fancy, Reactive, Fast UI/UX
* Notifications via Telegram, Discord, Gotify, Slack, Pushover, Email (SMTP), and [90+ notification services, click here for the full list](https://github.com/louislam/uptime-kuma/tree/master/src/components/notifications)
* 20 second intervals
* [Multi Languages](https://github.com/louislam/uptime-kuma/tree/master/src/lang)
* Multiple status pages
* Map status pages to specific domains
* Ping chart
* Certificate info
* Proxy support
* 2FA support

## 🔧 How to Install

### 🐳 Docker

Docker coming soon with subdirectory support(use origninal one if u don't want subdirectory support)!

### 💪🏻 Non-Docker

Required Tools: 
- [Node.js](https://nodejs.org/en/download/) >= 14
- [npm](https://docs.npmjs.com/cli/) >= 7
- [Git](https://git-scm.com/downloads) 
- [pm2](https://pm2.keymetrics.io/) - For running Uptime Kuma in the background

```bash
# Update your npm to the latest version
npm install npm -g

git clone https://github.com/thedev132/uptime-kuma.git
cd uptime-kuma

# Option 1. Try it
node server/server.js

# (Recommended) Option 2. Run in background using PM2
# Install PM2 if you don't have it: 
npm install pm2 -g && pm2 install pm2-logrotate

# Start Server
pm2 start server/server.js --name uptime-kuma


```
Uptime Kuma is now running on http://localhost:3001

More useful PM2 Commands

```bash
# If you want to see the current console output
pm2 monit

# If you want to add it to startup
pm2 save && pm2 startup
```

### Advanced Installation

If you need more options or need to browse via a reverse proxy, please read:

https://github.com/louislam/uptime-kuma/wiki/%F0%9F%94%A7-How-to-Install

## 🆙 How to Update

Please read:

https://github.com/louislam/uptime-kuma/wiki/%F0%9F%86%99-How-to-Update

## 🆕 What's Next?

I will mark requests/issues to the next milestone.

https://github.com/louislam/uptime-kuma/milestones

Project Plan:

https://github.com/users/louislam/projects/4/views/1

## 🖼 More Screenshots

Light Mode:

<img src="https://uptime.kuma.pet/img/light.jpg" width="512" alt="" />

Status Page:

<img src="https://user-images.githubusercontent.com/1336778/134628766-a3fe0981-0926-4285-ab46-891a21c3e4cb.png" width="512" alt="" />

Settings Page:

<img src="https://louislam.net/uptimekuma/2.jpg" width="400" alt="" />

Telegram Notification Sample:

<img src="https://louislam.net/uptimekuma/3.jpg" width="400" alt="" />


## 🗣️ Discussion

### Issues Page

You can discuss or ask for help in [issues](https://github.com/thedev132/uptime-kuma/issues).


## Contribute

### Bug Reports / Feature Requests
If you want to report a bug or request a new feature, feel free to open a [new issue](https://github.com/louislam/uptime-kuma/issues).

### Translations
If you want to translate Uptime Kuma into your language, please visit [Weblate Readme](https://github.com/thedev132/uptime-kuma/blob/master/src/lang/README.md).

Feel free to correct my grammar in this README, source code, or wiki, as my mother language is not English and my grammar is not that great.

### Create Pull Requests
If you want to modify Uptime Kuma, please read this guide and follow the rules here: https://github.com/thedev132/uptime-kuma/blob/master/CONTRIBUTING.md

If you love this project, please consider giving me a ⭐.
