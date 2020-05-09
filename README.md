# My ubuntu 16 Setup

## Create a new user
```bash
adduser --disabled-password <your_username>
usermod -aG sudo <your_username>
su - <your_username>
```
And then update `.ssh/authorized_keys` with your ssh public key.

## Install zsh
```bash
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Setup my system
```bash
chmod +x ./setup.sh ./tmux.sh
./setup.sh
```
Follow the prompt and finish installing all softwares.
```bash
source ~/.zshrc
```

## Optional
Open .zshrc and replace the theme with powerlevel10k
