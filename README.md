vimrc
=====
![Preview](https://raw.github.com/dungntnew/vimrc/master/preview.png?raw=true "Editing..")

## Installation

### STEP 1: Install VIM RC
You need clone project to your directory. 
In this doc using ~/env as target directory
(recommend use directory inside home)

```sh
$ if [ ! -d ~/env ]; then  mkdir ~/env; fi;
$ cd ~/env && git clone git@github.com:dungntnew/vimrc.git
$ cd vimrc && git checkout master && sh setup.sh
$ if [ -e ~/.vimrc ]; then  rm ~/.vimrc; fi;
$ ln -s ~/env/vimrc/.vimrc ~/.vimrc
```

### STEP 2: Install Iterm and Theme (MacOSX only)
- Download and install iTerm from (https://www.iterm2.com/)
- Open iTerm 2 -> open Preferences -> "Profiles" -> "colors" tab ->"load presets" and select "import...". Select the Solarized Light or Dark theme file form ~/env/vimrc/color-solarized

### Usage
- Syntax check multi-lang: , + c
- Search file in folder: Ctrl + p
- Toggle project folder: , + w
- Toggle un-do tree: , + u
