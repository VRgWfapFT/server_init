#!/bin/bash

some_alias="
alias jnf='journalctl -f -u'
alias jnu='journalctl -u'
alias ctl='systemctl'
alias ll='ls -alFh'
alias la='ls -Ah'
alias l='ls -CFh'
"
echo "some alias ${some_alias}"

# echo "${vimrc_config}" > ./.vimrc
# echo "${some_alias}" > ./.bashrc

echo "\n"
# install git + htop + tree
echo "current user: ${USER}"
apt install htop tree git -y

echo "\n"
# check install 
if [ -x "$(command -v git)" ] && [ -x "$(command -v htop)" ] && [ -x "$(command -v tree)" ] ; then
    echo "git&htop&tree already install" >&2
else 
    echo "some program donot work well, below are some info." >&2
    echo "git install status: $(command -v git) " >&2
    echo "htop install status: $(command -v htop) " >&2
    echo "tree install status: $(command -v tree) " >&2
fi

echo "\n"
# nerdtree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
echo "nerdtree repo clone done"
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
echo "vim config done"
cp ./.vimrc ~/.vimrc
echo "vimrc config done"

echo "\n"
# .bashrc
echo "${some_alias}" >> ~/.bashrc
source ~/.bashrc
echo "alias done"

# ssh config TODO 

echo "done"