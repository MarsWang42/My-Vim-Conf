#!/usr/bin/env bash


# System-wise settings
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

cat ./.zshrc >> ~/.zshrc
cp -R ./.config ~/

# Update apt
sudo apt-get update

# Install oh my tmux
./tmux.sh
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf
cp ./.tmux.conf.local ~


# Install Python3
sudo apt-get install -y python-dev python-pip python3-dev
sudo apt-get install -y python3-setuptools
sudo easy_install3 pip


# Install Rust
curl https://sh.rustup.rs -sSf | sh


# Install Node.js
curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
sudo bash n lts

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
npm install -g n


# Install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install -y yarn

# Install Go
wget https://go.dev/dl/go1.20.3.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.3.linux-amd64.tar.gz
# Air binary will be $(go env GOPATH)/bin/air
curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin

# Install neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get install -y neovim

# Install vim setup dependencies
python2 -m pip install --user --upgrade pynvim
python3 -m pip install --user --upgrade pynvim
npm install -g neovim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cargo install bat
cargo install devicon-lookup

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

sudo apt-get install -y silversearcher-ag


# Install psql
sudo apt-get install -y postgresql postgresql-contrib


# Install redis
sudo apt-get install -y redis-server


# Create ssh key
ssh-keygen -t rsa
