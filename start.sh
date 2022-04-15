#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install openjdk-8-jdk wget -y
wget https://github.com/GregTechCEu/GregTech/archive/refs/heads/master.zip
unzip master.zip
sh ./GregTech-master/gradlew build
