sudo apt install blueman bluez*
sudo apt install pulseaudio
pulseaudio -k
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
