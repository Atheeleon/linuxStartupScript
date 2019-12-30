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
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update
sudo apt install --install-recommends winehq-stable
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
wget https://dllb2.pling.com/api/files/download/id/1570117779/s/3a997923ec870cc3ec74349757d862e02432c088bce9dfe019cc57b989d9ac852042e191915c349fefc0a19cc5fc8aced2cbf504cc00b6af98c5ae857903a59a/t/1577468957/c/3a997923ec870cc3ec74349757d862e02432c088bce9dfe019cc57b989d9ac852042e191915c349fefc0a19cc5fc8aced2cbf504cc00b6af98c5ae857903a59a/lt/download/McOS-CTLina-Mint-Dark.tar.xz
tar -xf McOS-CTLina-Mint-Dark.tar.xz
mv McOS-CTLina-Mint-Dark /home/"$USER"/.themes/'mcOS Catalina Mint'
git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git
mv la-capitaine-icon-theme /home/"$USER"/.icons/'La Capitaine'
sleep 1
echo "Tema e Icones instalados..."
sleep 1

sudo apt update

echo ""
echo "##Setup Finalizado##"
sleep 1
