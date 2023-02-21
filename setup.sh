#!/bin/bash

# Update package list and upgrade packages
sudo apt update

# Install Vim and networking tools
sudo apt install -y vim net-tools iputils-ping
sudo apt install openssh-server
echo "Installation complete"

