# dotfiles

Remember
------------

This command generate tags file for a symphony project.

``` sh
$ ctags -R --languages=php --exclude=.git --exclude=app/cache --exclude=composer.phar --exclude='*Test.php' .
```

Require
``` sh
$ apt-get install exuberant-ctags
```

Installation
------------

Purge previous files
--------------------

``` sh
$ rm -rf ~/.vim/ ~/.vimrc ~/ycm_build/ ~/.dotfiles
```

Clone the vim dotfile repo
--------------------------

``` sh
$ git clone https://github.com/Eluminae/dotfiles.git ~/.dotfiles && \
  ln -s .dotfiles/vimrc .vimrc && \
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Install the scheme color JellyBeans
-----------------------------------

``` sh
$ mkdir ~/.vim/colors && \
  wget https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim \
  -O ~/.vim/colors/jellybeans.vim
```

Download plugins
----------------
``` sh
$ vim +PluginInstall +qall
```

Install dependencies to compile ycm_core
----------------------------------------

``` sh
$ apt-get install -y build-essential cmake \
                    python-dev python3-dev \
                    vim-nox
```

Compile ycm_core
----------------

``` sh
$ mkdir ~/ycm_build && \
  cd ~/ycm_build && \
  cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp && \
  cmake --build . --target ycm_core --config Release
```
