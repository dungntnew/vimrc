# Set locale
export LANG="ja_JP.UTF-8"
export LC_CTYPE="ja_JP.UTF-8"

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Export GOPATH for golang
export GOPATH=$HOME/vdev
PATH=$GOPATH/bin:$PATH
export PATH

# Export NVM path for nodejs
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Export ANDROID_SDK_HOME for android sdk
export ANDROID_SDK_HOME=$HOME/Setup/android-sdk-macosx
PATH=$ANDROID_SDK_HOME/tools:$PATH
PATH=$ANDROID_SDK_HOME/platform-tools:$PATH
export PATH

# Export path for embulk
PATH=$HOME/.embulk/bin:$PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Add enviroment varible for vhost
export vhost=vagrant@vdev.com

# Android HOME
alias cd_android_sdk='cd $ANDROID_SDK_HOME'
alias logcat_browser='adb logcat browser:V *:s'

alias gw='ssh nguyentdung@172.19.1.191'
alias mazii='ssh dungntnew@128.199.226.39'
alias mplayer='mplayer -loop 0'
alias c='pbcopy'
alias p='pbpaste'

# alias for lauchctl
alias service='launchctl'

code () {
	if [[ $# = 0 ]]
	then
		open -a "Visual Studio Code"
	else
		[[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
		open -a "Visual Studio Code" --args "$F"
	fi
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# User specific environment and startup programs
export PATH=$PATH:$HOME/bin


# vagran
alias vhost='cd ~/vdev/ && vagrant ssh'
alias disk="find . -maxdepth 1 -type d -mindepth 1 -exec du -hs {} \;"

# aws
alias aws='ssh -i ~/vdev/aws-keypair.pem ec2-user@54.251.165.150'

### Add for Maven & Java, Ant
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/
#export ANT_HOME=$HOME/Setup/apache-ant-1.9.6
#export PATH=$PATH:$HOME/Setup/apache-maven-3.3.3/bin
#export PATH=$PATH:$HOME/Setup/apache-ant-1.9.6/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/

### Export path for elasticsearch
export ES_HOME=$HOME/vdev/elasticsearch-1.7.1
export PATH=$PATH:$ES_HOME/bin

## export grade
export GRADLE_HOME=/Users/dungntnew/vdev/gradle-2.8
export PATH=$PATH:$GRADLE_HOME/bin

## my address
alias adr='geocode -l ja -s google 35.7188602,139.7185938'

# google translate
alias dict='trans :en+vi -sp'


# added by Anaconda2 2.4.0 installer
export PATH="//anaconda/bin:$PATH"
