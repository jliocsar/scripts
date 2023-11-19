printf "Running setup script for Raspberry Pi Zero W"

if [ ! $ZSH ]; then
  printf "No ZSH installed!\n"
  printf "Installing ZSH\n"
  sudo apt install -y zsh
  printf "All done! Run this script again\n"
  exit 0
fi

printf "Installing apt deps\n"
sudo apt install -y git curl

printf "Installing Node v20.7.0\n"
wget https://unofficial-builds.nodejs.org/download/release/v20.7.0/node-v20.7.0-linux-armv6l.tar.gz
tar -xzf node-v20.7.0-linux-armv6l.tar.gz
cd node-v20.7.0-linux-armv6l
sudo cp -R * /usr/local
cd ..
rm -rf node-v20.7.0-linux-armv6l

printf "Installing Luvit\n"
curl -fL https://github.com/truemedian/luvit-bin/raw/main/install.sh | sh

