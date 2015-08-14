
# remove default dir
SUBLIME_SUPPORT_PATH="$HOME/Library/Application Support/Sublime Text 3"

rm -rf "$SUBLIME_SUPPORT_PATH/Installed Packages"
rm -rf "$SUBLIME_SUPPORT_PATH/Packages"

mkdir -p "$SUBLIME_SUPPORT_PATH"

# link 
ln -s $HOME/env/vimrc/subl/Installed Packages" $SUBLIME_SUPPORT_PATH/Installed Packages"
ln -s $HOME/env/vimrc/subl/Packages" $SUBLIME_SUPPORT_PATH/ackages"


ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/bin/subl