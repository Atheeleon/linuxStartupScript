#!/bin/sh

echo "##Iniciando o script...##"
sleep 2
sudo apt update

sleep 2
echo "##Instalando o Plank##"
sleep 2
sudo apt install plank
sleep 1
cp -v /usr/share/applications/plank.desktop /home/$USER/.config/autostart
plank

sudo apt update

sleep 2
echo "##Instalando o Wine##"
sleep 2
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update
sudo apt install --install-recommends winehq-stable

