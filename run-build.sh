#!/bin/bash
ssh ubuntu@18.119.107.170
cd ~/node-project
git pull
npm install
npm run start
exit