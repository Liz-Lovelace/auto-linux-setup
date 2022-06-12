#!/bin/bash
sudo echo "=========starting to do stuff...=========" > progress.txt
touch progress.txt
sudo apt update -y 
sudo apt upgrade -y
echo "done upgrading" >> progress.txt 
sudo echo "admin rights, baby!"
mkdir ~/.config
sudo mkdir /root/.config

sudo apt install git -y
git config --global user.name mishanya644
git config --global user.email ivanov0604041@gmail.com

echo '# for alacritty to display properly on multiple monitors
export WINIT_X11_SCALE_FACTOR=1.33' >> .bashrc

./modules/micro.sh
echo "micro" >> progress.txt 

./modules/i3.sh
touch ~/.config/background-image.png
echo "i3" >> progress.txt 

./modules/alacritty.sh
echo "alacritty" >> progress.txt 

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

sudo apt install isenkram
sudo isenkram-autoinstall-firmware

#sudo apt install -y ranger   pick a different one....

echo "PS1='\[\e[31;1m\]\u\[\e[0m\] \[\e[34;1m\]\w\[\e[0m\] '" >> ~/.bashrc
#this adds user m to group input in order to grant them permission to use keyboard and mouse in X
sudo usermod -a -G input m

echo "PATH=$HOME/scripts:$PATH
PATH=/home/m/.local/bin:$PATH
PATH=/home/m/.cargo/bin:$PATH
export PATH" >> ~/.bashrc
#starts x display after you log into tty1
echo 'if [ -z "${DISPLAY}" ] && [ `tty` = "/dev/tty1" ]; then
  exec startx
fi' >> ~/.bashrc
startx
