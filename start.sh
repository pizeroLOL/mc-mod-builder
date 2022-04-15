#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install openjdk-8-jdk wget -y
wget <你的网址（记得吧<>删掉）>
sh ./upload/gradlew build
