sudo apt install -y curl
cd /usr/bin/
sudo curl https://getmic.ro | sudo bash
cd -
cp -r ./configs/micro ~/.config
cp -r ./configs/micro root/.config

echo "export EDITOR='micro'" >> ~/.bashrc
echo "export VISUAL='micro'" >> ~/.bashrc
