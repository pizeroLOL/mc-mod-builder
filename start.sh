#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install openjdk-8-jdk wget -y
wget https://github.com/Blood-Asp/GT5-Unofficial/archive/refs/heads/unstable.zip
unzip unstable.zip
sh ./GT5-Unofficial-unstable/gradlew build
