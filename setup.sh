#!/bin/bash
sudo echo "=========starting to do stuff...=========" > progress.txt
touch progress.txt
sudo apt update -y 
sudo apt upgrade -y
echo "done upgrading" >> progress.txt 
sudo echo "admin rights, baby!"
mkdir ~/.config
sudo mkdir /root/.config

./modules/micro.sh
echo "micro" >> progress.txt 

./modules/i3.sh
touch ~/.config/background-image.png
echo "i3" >> progress.txt 

./modules/st.sh
echo "st" >> progress.txt 

sudo ./modules/google-chrome.sh
echo "google chrome" >> progress.txt 

sudo ./modules/motd.sh
echo "motd" >> progress.txt
instLines=$(cat apt-packages.txt)
for line in $instLines 
do
  sudo apt install -y $line
done
sudo pip3 install youtube-dl
echo "all the other apt and pip stuff" >> progress.txt 

#sudo apt install -y ranger   pick a different one....

echo "PS1='\[\e[31;1m\]\u\[\e[0m\]:\[\e[34;1m\]\W\[\e[0m\]\$ '" >> ~/.bashrc
#starts x display after you log into tty1
echo 'if [ -z "${DISPLAY}" ] && [ `tty` = "/dev/tty1" ]; then
  exec startx
fi' >> ~/.bashrc
startx

./modules/guake.sh
echo "guake" >> progress.txt 

echo "DONE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" >> progress.txt 
