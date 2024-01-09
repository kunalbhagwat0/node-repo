#!/bin/bash

# Update package list
sudo apt-get update

# Install Node.js and npm
sudo apt-get install -y nodejs npm

# Output versions for verification
node -v
npm -v
