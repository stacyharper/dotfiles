# dotfiles

Installation
------------

``` sh
$ cd ~

$ rm -rf .vim/
$ rm .vimrc
$ rm -rf ycm_core/

$ git clone https://github.com/Eluminae/dotfiles.git
$ mv dotfiles/ .dotfiles/
$ ln -s .dotfiles/vimrc .vimrc
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ vim +PluginInstall +qall
 
$ sudo apt-get install build-essential cmake
$ sudo apt-get install python-dev python3-dev

$ mkdir ycm_build
$ cd ycm_build

$ cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
$ cmake --build . --target ycm_core --config Release

$ cd ~
$ mkdir .vim/colors
$ cd .vim/colors
$ wget https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim


 
```
