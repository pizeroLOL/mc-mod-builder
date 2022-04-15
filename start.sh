#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install openjdk-8-jdk wget -y
wget https://github.com/Dabai1025/PaiMonFood/archive/refs/heads/main.zip
unzip main.zip
cd PaiMonFood-main
sh ./gradlew build -Dfile.encoding=UTF-8 --info
cp -r build/libs /opt/libs
