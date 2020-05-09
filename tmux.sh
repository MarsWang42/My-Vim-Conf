#!/usr/bin/env bash
sudo apt-get -y remove tmux

sudo apt install -y automake
sudo apt install -y bison
sudo apt install -y build-essential
sudo apt install -y pkg-config
sudo apt install -y libevent-dev
sudo apt install -y libncurses5-dev
sudo apt-get -y install wget tar libncurses-dev

VERSION=2.6
wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz
tar xf tmux-${VERSION}.tar.gz
rm -f tmux-${VERSION}.tar.gz

cd tmux-${VERSION}
./configure
make
sudo make install
cd -
sudo rm -rf /usr/local/src/tmux-\*
sudo mv tmux-${VERSION} /usr/local/src

sudo killall -9 tmux
