# dotfiles

Installation
------------

``` sh
$ cd ~
$ git clone https://github.com/Eluminae/dotfiles.git
$ mv dotfiles/ .dotfiles/
$ ln -s .dotfiles/vimrc .vimrc
$ vim +PluginInstall +qall
$ cd ~/.vim/bundle/YouCompleteMe
 
$ sudo apt-get install build-essential cmake
$ sudo apt-get install python-dev python3-dev
 
$ ./install.py --tern-completer
```
