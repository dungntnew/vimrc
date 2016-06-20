vimrc
=====
![Preview](https://raw.github.com/dungntnew/vimrc/master/preview.png?raw=true "Editing..")

## Installation

### Install VIM RC
You need clone project to your directory.
In this doc using ~/env as target directory
(recommend use directory inside home)

```sh
$ if [ ! -d ~/env ]; then  mkdir ~/env; fi;
$ cd ~/env && git clone git@github.com:dungntnew/vimrc.git
$ cd vimrc && git checkout master && sh setup.sh
$ if [ -e ~/.vimrc ]; then  rm ~/.vimrc; fi;
$ ln -s ~/env/vimrc/vimrc ~/.vimrc
```

### Usage
- Syntax check multi-lang: , + c
- Search file in folder: Ctrl + p
- Toggle project folder: , + w
- Toggle un-do tree: , + u

### ZSH楽しむ ๑˃̵ᴗ˂̵)
```sh
$ if [ -e ~/.zshrc ]; then  rm ~/.zshrc; fi;
$ cd ~/env/vimrc && sh setup_zsh.sh
$ source ~/env/vimrc/zshrc

```
