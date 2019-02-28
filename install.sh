ln -s $(pwd)/bash_completion.d ~
ln -s $(pwd)/.vimrc ~
ln -s $(pwd)/.bashrc ~
ln -s $(pwd)/.gitconfig ~

mkdir ~/.vim/.backup ~/.vim/.swp/ ~/.vim/.undo
sudo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
