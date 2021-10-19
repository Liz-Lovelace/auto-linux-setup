apt install sudo -y
echo 'm ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

#login as m...
chsh -s /bin/bash

/etc/ssh/sshd_config
PermitRootLogin -> no
sudo service sshd restart
sudo apt install ufw unattended-upgrades fail2ban -y
sudo systemctl start fail2ban
sudo systemctl enable fail2ban

sudo systemctl start unattended-upgrades
sudo systemctl enable unattended-upgrades

sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

