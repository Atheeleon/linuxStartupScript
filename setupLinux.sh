#!/bin/bash

echo "##Iniciando o Script##"
sleep 2
sudo apt update
sudo apt install unzip
sudo apt install xz-utils
sudo apt install snapd
sleep 1
echo "Unzip, XZ-Utils e Snap foram instalados..."
sleep 1

sleep 1

sudo apt update

sleep 1

echo ""
echo "##Instalando o Plank##"
sleep 1
sudo apt install plank
cp -v /usr/share/applications/plank.desktop /home/"$USER"/.config/autostart
(plank &> /dev/null &)
sleep 1
echo "Plank instalado..."
sleep 1

sudo apt update

sleep 1

echo ""
echo "##Instaland o Wine##"
sleep 1
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update
sudo apt install --install-recommends  winehq-stable
(winecfg &> /dev/null &)
sudo apt update
sleep 1
echo "Wine instalado..."
sleep 1


echo ""
echo "##Instalando o Visual Code"
sleep 1
sudo snap install code --classic
echo "Visual Studio Code Instalado..."

sleep 1

echo ""
echo "##Tema mcOs e Icones"

mkdir /home/"$USER"/.themes
mkdir /home/"$USER"/.icons
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1kxWEuNhi5wKJ7Tx2Zy6MURWKQJHHen4U' -O  McOS-CTLina-Mint-Dark
unrar McOS-CTLina-Mint-Dark.rar
mv McOS-CTLina-Mint-Dark /home/"$USER"/.themes/'mcOS Catalina Mint'
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1dMHCKy5Y3cIgGT1rnmRl5JeIXXRyRC4W' -O la-capitaine-icon-theme
gunzip la-capitaine-icon-theme
mv la-capitaine-icon-theme /home/"$USER"/.icons/'La Capitaine'
sleep 1
echo "Tema e Icones instalados..."
sleep 1

sudo apt update

echo ""
echo "##Setup Finalizado##"
sleep 1
