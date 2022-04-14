#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install openjdk-8-jdk git -y
git clone https://github.com/pizeroLOL/mc-1.12.2-auto.git
sh ./mc-1.12.2-auto/gradlew build 
