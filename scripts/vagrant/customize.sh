#!/bin/sh

# Install prerequisites
sudo apt-get -y install git tmux zsh gdb valgrind emacs24-nox python-virtualenv
sudo apt-get -y --no-install-recommends install doxygen graphviz

# Clone Oh My Zsh from the git repo
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Copy in the default .zshrc config file
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# Change the vagrant user's shell to use zsh
sudo chsh -s /bin/zsh vagrant
source ~/.zshrc
