#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install openjdk-8-jdk openjdk-11-jre openjdk-18-jdk wget -y
sudo apt install wget -y
wget https://hub.nuaa.cf/Blood-Asp/GT5-Unofficial/archive/refs/heads/1.12.2.zip
unzip 1.12.2.zip
cd GT5-Unofficial-1.12.2
export JAVA11_HOME=/opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/11.0.15-10/x64
export JAVA18_HOME=/opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/18.0.1-10/x64
export JAVA8_HOME=/opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/8.0.332-9/x64
sh ./gradlew build -Dfile.encoding=UTF-8 --info
cp -r build/libs /opt/libs
