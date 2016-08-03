brew install zsh

# install zsh & zsh completions
if [ ! -x "$(command -v zsh)" ]; then
  echo "[start install zsh]"
  brew install zsh
  brew install zsh-completions
  rm -f ~/.zcompdump
  echo "/usr/local/bin/zsh" |  sudo tee -a /etc/shells > /dev/null
  echo "[successfully installed] zsh"
fi

# change bash
chsh -s /usr/local/bin/zsh

# link profile
ln -s ~/env/vimrc/zshrc ~/.zshrc
