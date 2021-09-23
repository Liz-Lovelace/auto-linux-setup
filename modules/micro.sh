sudo apt install -y curl
cd /usr/bin/
sudo curl https://getmic.ro | sudo bash
cd ~/.config
git clone https://github.com/Mishanya644/config-micro
mv config-micro micro
sudo cp -r micro /root/.config/

echo "export EDITOR='micro'" >> ~/.bashrc
echo "export VISUAL='micro'" >> ~/.bashrc
