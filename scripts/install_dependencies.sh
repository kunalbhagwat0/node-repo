#!/bin/bash

# Update and install Apache using yum
yum update -y
yum install -y httpd

# Start Apache
service httpd start || systemctl start httpd.service

# Enable Apache to start on boot
chkconfig httpd on || systemctl enable httpd.service
