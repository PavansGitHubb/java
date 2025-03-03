#!/bin/bash

# Exit immediately if any command fails
set -e  

echo "Restarting Nginx to apply new changes..."

# Reload Nginx to apply the new Angular build
sudo systemctl restart nginx

echo "Nginx restarted successfully!"
