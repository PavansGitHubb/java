#!/bin/bash

# Exit immediately if any command fails
set -e

# Define application directory
APP_DIR="/home/ubuntu/app"
DEPLOY_DIR="/opt/codedeploy-agent/deployment-root"

echo "Starting deployment script..."

# Find the latest deployment folder
LATEST_DEPLOY=$(ls -td $DEPLOY_DIR/* | head -1)
echo "Latest deployment found at: $LATEST_DEPLOY"

# Navigate to the latest deployment archive
cd $LATEST_DEPLOY/deployment-archive/

# Stop any running application (Modify this command if needed)
echo "Stopping any running application..."
sudo systemctl stop my-angular-app || true

# Copy new build files to application directory
echo "Copying files to application directory..."
rsync -av --delete . $APP_DIR/

# Set correct permissions
echo "Setting permissions..."
sudo chown -R ubuntu:ubuntu $APP_DIR
sudo chmod -R 755 $APP_DIR

# Restart the application
echo "Restarting the application..."
sudo systemctl start my-angular-app

echo "Deployment completed successfully!"
