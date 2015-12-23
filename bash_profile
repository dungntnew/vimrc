# Set locale
export LANG="ja_JP.UTF-8"
export LC_CTYPE="ja_JP.UTF-8"

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH


# Export NVM path for nodejs
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh



# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra, local_bash_profile}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Add enviroment varible for vhost
export vhost=vagrant@vdev.com


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

# User specific environment and startup programs
export PATH=$PATH:$HOME/bin
