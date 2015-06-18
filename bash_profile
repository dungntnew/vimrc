
# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/dungntnew/Frameworks/cocos2d-x-3.3/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Users/dungntnew/Frameworks/cocos2d-x-3.3
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/dungntnew/Frameworks/cocos2d-x-3.3/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add enviroment variable for kindlegen
export KINDLEGEN=/Users/dungntnew/Setup/KindleGen_Mac_i386_v2_9
export PATH=$KINDLEGEN:$PATH

# Add enviroment varible for vhost
export vhost=vagrant@vdev.com
