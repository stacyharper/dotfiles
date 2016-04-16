# dotfiles

Installation
------------

``` sh
$ cd ~
$ git clone https://github.com/Eluminae/dotfiles.git
$ mv dotfiles/ .dotfiles/
$ ln -s .dotfiles/vimrc .vimrc
$ vim +PluginInstall +qall
 
$ sudo apt-get install build-essential cmake
$ sudo apt-get install python-dev python3-dev

$ mkdir ycm_build
$ cd ycm_build

$ cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
$ cmake --build . --target ycm_core --config Release
 
```
