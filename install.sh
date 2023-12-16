#!/bin/bash
sudo pacman -Syu npm

node -v
npm -v

sudo npm init -y
sudo npm install nodemon express ejs

jq '.scripts.dev = "nodemon src/index.js"' package.json > temp.json && mv temp.json package.json
jq '.scripts.start = "node src/index.js"' package.json > temp.json && mv temp.json package.json
npm run start