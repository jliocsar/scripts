printf "Running setup script for Raspberry Pi Zero W"

if [ ! $ZSHs ]; then
  printf "No ZSH installed!\n"
  printf "Installing ZSH\n"
  sudo apt install -y zsh
  printf "All done! Run this script again\n"
  exit 0
fi

printf "Installing apt deps\n"
sudo apt install -y git \
  curl \
  w3m \
  w3m-img

printf "Installing nvm\n"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

printf "Installing Bun\n"
curl -fsSL https://bun.sh/install | bash

printf "Installing Luvit\n"
curl -L https://github.com/luvit/lit/raw/master/get-lit.sh | sh

