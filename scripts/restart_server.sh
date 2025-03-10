#!/bin/bash

echo "Restarting Nginx..."

# Ensure the script exits on error
set -e

# Restart Nginx
sudo systemctl restart nginx

echo "Nginx restarted successfully!"
