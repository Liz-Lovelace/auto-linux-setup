touch progress.txt
sudo apt update -y 
sudo apt upgrade -y
echo "done upgrading" >> progress.txt 
sudo echo "admin rights, baby!"
mkdir ~/.config
sudo mkdir root/.config
./modules/micro.sh
echo "micro" >> progress.txt 
./modules/i3.sh
echo "i3" >> progress.txt 
./modules/st.sh
echo "st" >> progress.txt 
./modules/guake.sh
echo "guake" >> progress.txt 
sudo ./modules/google-chrome.sh
echo "google chrome" >> progress.txt 
sudo apt install -y flameshot ffmpeg git mpv pavucontrol screen ssh tree thunar xclip youtube-dl feh
echo "all the other apt stuff" >> progress.txt 
#sudo apt install -y ranger   pick a different one....
#changes your command prompt
echo "PS1='\[\e[31;1m\]\u\[\e[0m\]:\[\e[34;1m\]\W\[\e[0m\]\$ '" >> ~/.bashrc
#starts x display after you log in
touch /etc/background-image.png
echo 'if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
  feh –bg-fill /etc/background-image.png
fi' >> ~/.bashrc
startx

echo "DONE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" >> progress.txt 
echo "DONE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" >> progress.txt 
echo "DONE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" >> progress.txt 
