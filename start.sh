#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install openjdk-8-jdk wget -y
wget https://github.com/sinkillerj/ProjectE/archive/refs/heads/mc1.12.x.zip
unzip mc1.12.x.zip
sh ./ProjectE-mc1.12.x/gradlew build
