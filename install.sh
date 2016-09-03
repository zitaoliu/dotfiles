#!/bin/bash

ln -si ~/dotfiles/vimrc ~/.vimrc
ln -si ~/dotfiles/vim ~/.vim

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
git clone https://github.com/fholgado/minibufexpl.vim.git ~/.vim/bundle/minibufexpl.vim

ln -si ~/dotfiles/tmux ~/.tmux
ln -si ~/dotfiles/tmux.conf ~/.tmux.conf

ln -si "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

ln -si ~/dotfiles/bash_profile ~/.bash_profile
