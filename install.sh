
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
cp ./nvim.appimage /usr/local/bin

HOME_CONFIG=$HOME/.config/nvim

mkdir -p $HOME_CONFIG

apt-get install -y git python-dev python3-pip


curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +PlugInstall

$HOME_CONFIG/plugged/youcompleteme/plugged/youcompleteme/install.sh --go-completer


