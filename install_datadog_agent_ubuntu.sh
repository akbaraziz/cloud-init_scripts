#!/bin/bash

set -ex

# Set Hostname
echo "@@{user_creds}@@" | sudo -S ls
sudo hostnamectl set-hostname @@{HOST_NAME}@@

# Disable Firewall
sudo ufw disable

# Install DataDog Agent
echo "@@{user_creds}@@" | sudo -S ls
DD_AGENT_MAJOR_VERSION=7 DD_API_KEY=324b0aa3ebdadf5eda18b83aa4197b00 DD_SITE="datadoghq.com" bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script.sh)"