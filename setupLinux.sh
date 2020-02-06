
#!/bin/bash

echo "##Iniciando o Script##"
sleep 2
sudo apt update
sudo apt install unzip
sudo apt install xz-utils
sudo apt install snapd
sleep 1
git config --global user.email "poeticum.visum@gmail.com"
git config --global user.name "Atheeleon"
echo "Unzip, XZ-Utils e Snap foram instalados..."
echo "Git configurado..."
sleep 2

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
echo "##Instalando o Visual Code"
sleep 1
sudo snap install code --classic
echo "Visual Studio Code Instalado..."

sleep 1

echo ""
echo "##Tema mcOs e Icones##"

mkdir /home/"$USER"/.themes
mkdir /home/"$USER"/.icons
cp -r McOS-CTLina-Mint-Dark ~/.themes/'mcOS Catalina Mint'
cp -r la-capitaine-icon-theme-master ~/.icons/'La Capitaine'
sleep 1
echo "Tema e Icones instalados..."
sleep 1

sudo apt update

echo ""
echo "##Instalando Spotify##"
sudo snap install spotify --classic
sleep 1
echo "Spotify instalado..."
sleep 1

sudo apt update

echo ""
echo "##Instalando Wine##"
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/ -y
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ xenial main'
sudo apt-get update
sudo apt-get install --install-recommends winehq-stable -y
(winecfg &> /dev/null &)
echo "Wine instalado..."

echo ""
echo "##Setup Finalizado##"
sleep 1
