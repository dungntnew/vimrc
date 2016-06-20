# Set locale
export LANG="ja_JP.UTF-8"
export LC_CTYPE="ja_JP.UTF-8"

export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/bin

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
load_files=("path bash_prompt" "exports aliases" "functions" "extra" "local_bash_profile")
for file in ${load_files}; do
  file_path=~/.$file
  [ -r "$file_path" ] && source "$file_path"
done
unset file

# toy ^_^
alias mplayer='mplayer -loop 0'
alias c='pbcopy'
alias p='pbpaste'

# alias for lauchctl
alias service='launchctl'

