#!/bin/bash
echo "Restarting application..."

# Stop any existing process
sudo pkill -f "node" || true

# Move new deployment
sudo rm -rf /home/ubuntu/frontend
sudo mv /home/ubuntu/deploy/frontend /home/ubuntu/frontend

# Start the app
cd /home/ubuntu/frontend
nohup npm start > /dev/null 2>&1 &
