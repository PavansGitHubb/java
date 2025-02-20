#!/bin/bash
echo "Restarting application..."

# Stop existing Node.js process
sudo pkill -f "node" || true

# Move the new build to the application directory
sudo rm -rf /home/ubuntu/frontend
sudo mv /home/ubuntu/deploy/frontend /home/ubuntu/frontend

# Start the application
cd /home/ubuntu/frontend
nohup npm start > /dev/null 2>&1 &
