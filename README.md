# dotfiles

Installation
------------

Purge previous files
--------------------

``` sh
$ cd ~
$ rm -rf .vim/
$ rm .vimrc
$ rm -rf ycm_core/
```

Clone the vim dotfile repo
--------------------------

``` sh
$ cd ~
$ git clone https://github.com/Eluminae/dotfiles.git
$ mv dotfiles/ .dotfiles/
$ ln -s .dotfiles/vimrc .vimrc
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Install the scheme color JellyBeans
-----------------------------------

``` sh
$ cd ~
$ mkdir .vim/colors
$ cd .vim/colors
$ wget https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
```

Download plugins
----------------
``` sh
$ vim +PluginInstall +qall
```

Install dependencies to compile ycm_core
----------------------------------------

``` sh
$ sudo apt-get install build-essential cmake
$ sudo apt-get install python-dev python3-dev
```

Compile ycm_core
----------------

``` sh
$ cd ~
$ mkdir ycm_build
$ cd ycm_build

$ cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
$ cmake --build . --target ycm_core --config Release
```
