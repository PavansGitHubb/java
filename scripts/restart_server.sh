#!/bin/bash
set -e

echo "Restarting Nginx..."
sudo systemctl restart nginx
echo "Nginx restarted successfully!"
