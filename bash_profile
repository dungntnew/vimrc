
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

# Add enviroment varible for vhost
export vhost=vagrant@vdev.com

# qE$W4$f6'
alias gw='ssh nguyentdung@172.19.1.191'
alias mazii='ssh dungntnew@128.199.226.39'
alias mplayer='mplayer -loop 0'
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
