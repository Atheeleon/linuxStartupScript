#!/bin/sh

echo "##Iniciando o script...##"
sleep 1
sudo apt update

echo "##Instalando o Plank##"
sudo apt install plank
cp -v /usr/share/applications/plank.desktop /home/$USER/.config/autostart
plank

sudo apt update

echo "##Instalando o Wine##"
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update
sudo apt install --install-recommends winehq-stable

sudo apt update

echo "##Instalando o GitHub##"
sudo apt install git
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt upgrade
git --version
sleep 2

echo "##Instalando o Visual Studio#
