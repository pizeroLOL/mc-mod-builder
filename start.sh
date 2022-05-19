#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install wget -y
wget https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip
unzip commandlinetools-linux-8512546_latest.zip
cd cmdline-tools/bin
export JAVA11_HOME=/opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/11.0.15-10/x64
export JAVA18_HOME=/opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/18.0.1-10/x64
export JAVA8_HOME=/opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/8.0.332-9/x64
sh ./sdkmanager --sdk_root=/opt/android-sdk/ --list > log.txt
cp -r log.txt /opt/libs
