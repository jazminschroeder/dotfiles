#! /usr/bin/env zsh

echo "Installing brew formulas"
brew install vim
brew install tmux
brew install zsh
brew install fzf

echo "Installing prezto - a framework for zsh"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

echo "Copying dotfiles"
for file in vim vimrc zshrc zpreztorc; do
  ln -s "${HOME}/dotfiles/.$file" "${HOME}/.${file}"
done

exec $SHELL

