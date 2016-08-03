# Created by newuser for 5.2
alias ll='ls -l'
alias g='git'
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit
compinit -u
 # 補完で小文字でも大文字にマッチさせる
 zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
 # ../ の後は今いるディレクトリを補完しない
 zstyle ':completion:*' ignore-parents parent pwd ..
 # sudo の後ろでコマンド名を補完する
 zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
 /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
 # ps コマンドのプロセス名補完
 zstyle ':completion:*:processes' command 'ps x -o pid,s,args'


# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

########################################
# vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
psvar=()
LANG=en_US.UTF-8 vcs_info
[[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{green}%1v%f|)""["%n"@"%m"]"

#export PATH=$PATH:/usr/local/mysql/bin
autoload colors
colors
PROMPT="%(?!%{$fg[green]%}(๑˃̵ᴗ˂̵)ﻭ!%{$fg[red]%}(๑•﹏•%))%{$reset_color%} %{$fg[blue]%}[%~]#%{$reset_color%} "

source ~/.bash_profile
