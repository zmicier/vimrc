Zmicier VIM config
==================

# Installation

```bash
git clone git://github.com/zmicier/vimrc.git ~/settings/vimrc/

# Be sure you backup your .vim (copy them by using cmd "cp ~/.vim ~/.vim.backup")
ln -s ~/settings/vim ~/.vim
# Be sure you backup your .vimrc (copy them by using cmd "cp ~/.vimrc ~/.vimrc.backup")
ln -s ~/settings/vim/vimrc ~/.vimrc

mkdir ~/.vim/bundle
git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

vim +BundleInstall +qa

```

# Dependencies

Instal and configure path for [php-cs-fixer](https://github.com/fabpot/PHP-CS-Fixer) by fabpot.
