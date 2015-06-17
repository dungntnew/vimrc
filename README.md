vimrc
=====

## Installation

### STEP 1: clone project & update to latest branch
You need clone project to your directory.
(recommend clone to env in home directory)

```sh
$ mkdir ~/env && cd ~/env
$ git clone git@github.com:dungntnew/vimrc.git vimrc
$ cd vimrc && checkout master
```

### STEP 2: install vim plugins and other software

```sh
$ cd ~/env/vimrc && sh setup.sh
```

### STEP 3: link .vimrc file

```sh
$ if [ -e ~/.vimrc ]; then  rm ~/.vimrc fi;
$ ln -s ~/env/vimrc/.vimrc 
```

### Usage
- Syntax check: , + c
- Buffer search: Ctrl + p
- Project folder: , + w

