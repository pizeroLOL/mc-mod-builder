#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install openjdk-8-jdk wget -y
wget https://github.com/GregTechCE/GregTech/archive/refs/heads/master.zip
unzip master.zip
cd GregTech-master
sh ./gradlew build -Dfile.encoding=UTF-8 --info
