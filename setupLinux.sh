#!/bin/sh

echo "##Iniciando o script...##"
sudo apt update
sudo apt upgrade
mkdir /home/$USER/setupInicial
cd /home/$USER/setupInicial
sudo apt install unzip
sudo apt install xz-utils
sudo apt update
sudo apt upgrade

echo "##Instalando o Plank##"
sudo apt install plank
cp -v /usr/share/applications/plank.desktop /home/$USER/.config/autostart
plank

sudo apt update
sudo apt upgrade

echo "##Instalando o Wine##"
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update
sudo apt install --install-recommends winehq-stable
winecfg

sudo apt update
sudo apt upgrade

echo "##Instalando o GitHub##"
sudo apt install git
sudo add-apt-repository ppa:git-core/ppa

sudo apt update
sudo apt upgrade

echo "##Instalando o Visual Code##"
wget -c https://az764295.vo.msecnd.net/stable/f359dd69833dd8800b54d458f6d37ab7c78df520/code_1.40.2-1574694120_amd64.deb
sudo dpkg -i /code_1.40.2-1574694120_amd64.deb
sudo apt install -f

sudo apt update
sudo apt upgrade

echo "##Tema mcOS e Ícones##"
mkdir /home/$USER/.themes
mkdir /home/$USER/.icons
wget -c https://dllb2.pling.com/api/files/download/id/1570117779/s/32f2415036388e6e7405cdd1aa45e49fa899dc9974dd7931d97414e2a3f9244ae08f47eb736977feee26f6ac39e74675a9c986f7a68fb88fdd5dc554c516799c/t/1575866859/c/32f2415036388e6e7405cdd1aa45e49fa899dc9974dd7931d97414e2a3f9244ae08f47eb736977feee26f6ac39e74675a9c986f7a68fb88fdd5dc554c516799c/lt/download/McOS-CTLina-Mint-Dark.tar.xz
tar -xf McOS-CTLina-Mint-Dark.tar.xz
mv McOS-CTLina-Mint-Dark /home/$USER/.themes/'mcOS Catalina Mint'
wget -c https://github.com/keeferrourke/la-capitaine-icon-theme/archive/master.zip
unzip la-capitaine-icon-theme-master.zip
mv la-capitaine-icon-theme-master /home/$USER/.icons/'La Capitaine'
sudo apt update
sudo apt upgrade

echo "##Setup Finalizado!##"
