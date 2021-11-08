echo "Initializing submodules"
git submodule update --init --recursive

echo "Linking dotfiles"
ln -s $(pwd)/bash_completion.d ~
ln -s $(pwd)/.vimrc ~
ln -s $(pwd)/.bashrc_custom ~
ln -s $(pwd)/.zshrc_custom ~
ln -s $(pwd)/.gitconfig_custom ~

echo "Including git config"
git config --global include.path "~/.gitconfig_custom"

echo "Installing bash config"
echo "" >> ~/.bashrc
echo "# Load dev-env bashrc" >> ~/.bashrc
echo "source ~/.bashrc_custom" >> ~/.bashrc

echo "Installing zshrc config"
echo "" >> ~/.zshrc
echo "# Load dev-env zshrc" >> ~/.zshrc
echo "source ~/.zshrc_custom" >> ~/.zshrc

echo "Configuring Vim"
mkdir -p ~/.vim/.backup ~/.vim/.swp/ ~/.vim/.undo
sudo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing fzf"
scripts/fzf/install
