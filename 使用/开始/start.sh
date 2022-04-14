#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install openjdk-8-jdk -y
sh ./mc-1.12.2-auto/gradlew build
