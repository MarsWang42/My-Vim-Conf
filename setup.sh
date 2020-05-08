# Install zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

cp ./zshrc ~
cp ./nvim ~
cp ./.tmux.conf.local ~
source ~/.zshrc


# Install Python3
sudo apt-get install -y python-dev python-pip python3-dev
sudo apt-get install -y python3-setuptools
sudo easy_install3 pip


# Install Node.js
curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
bash n lts

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
npm install -g n


# Install neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y neovim

python2 -m pip install --user --upgrade pynvim
python3 -m pip install --user --upgrade pynvim

npm install -g neovim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

sudo apt-get install -y silversearcher-ag


# Install psql
sudo apt-get install -y postgresql postgresql-contrib


# Install redis
sudo apt-get install -y redis-server
