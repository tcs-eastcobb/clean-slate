# Just incase
sudo apt install git-core

# Clean past install
rm -rf ~/.vim_runtime

# Make Vim look awesome
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Install ZSH and configure
sudo apt install zsh
chsh -s $(which zsh)
echo $SHELL
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# Install Node
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -i
sudo apt install nodejs

## Link Files
rm -rf ~/.bashrc
rm -rf ~/.zshrc
rm -rf ~/.zsh_history

ln -sf ~/clean-slate/sysrun/.bashrc ~/
ln -sf ~/clean-slate/sysrun/.zshrc ~/
ln -sf ~/clean-slate/sysrun/.zsh_history ~/

# Space Time
rm -rf "$ZSH_CUSTOM/themes/spaceship-prompt"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
rm -rf "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
