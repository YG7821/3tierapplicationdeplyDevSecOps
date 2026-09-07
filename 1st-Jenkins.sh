#!/bin/bash

# Install JRE
sudo apt install openjdk-17-jre-headless -y

# Create keyrings folder
sudo mkdir -p /usr/share/keyrings

# Download Jenkins GPG key
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key

# Add Jenkins repo
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/" | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update
sudo apt-get update -y

# Install Jenkins
sudo apt-get install jenkins -y

-----------------------------------------------------------------------
# https://www.jenkins.io/doc/book/installing/linux/


sudo apt update
FOR JRE                    sudo apt install fontconfig openjdk-21-jre -y
FOR JDK                    sudo apt install openjdk-21-jdk

java -version


sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update

sudo apt install jenkins -y

jenkins --version

systemctl status jenkins
systemctl stop jenkins
systemctl start jenkins
