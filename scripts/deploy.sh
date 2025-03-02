#!/bin/bash
sudo rm -rf /home/ubuntu/angular-app/*
sudo tar -xzf /home/ubuntu/angular-app/build.tar.gz -C /home/ubuntu/angular-app/
sudo systemctl restart nginx
