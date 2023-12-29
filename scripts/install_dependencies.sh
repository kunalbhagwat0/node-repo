#!/bin/bash

# Install Apache web server
apt-get update
apt-get install -y apache2

# Start Apache
systemctl start apache2

# Enable Apache to start on boot
systemctl enable apache2
