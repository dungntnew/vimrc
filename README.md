vimrc
=====

## Installation

### STEP 1: clone project & update to latest branch
You need clone project to your directory. 
In this tutorial using ~/env as target directory
(recommend use directory inside home)

```sh
$ if [ ! -d ~/env ]; then  mkdir ~/env; fi;
$ cd ~/env && git clone git@github.com:dungntnew/vimrc.git
$ cd vimrc && git checkout master
```

### STEP 2: install vim plugins and other software

```sh
$ cd ~/env/vimrc && sh setup.sh
```

### STEP 3: link .vimrc file

```sh
$ if [ -e ~/.vimrc ]; then  rm ~/.vimrc; fi;
$ ln -s ~/env/vimrc/.vimrc ~/.vimrc
```

### Usage
- Syntax check multi-lang: , + c
- Search file in folder: Ctrl + p
- Toggle project folder: , + w
- Toggle un-do tree: , + u
