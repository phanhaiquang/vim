vim
===

VIM plugins &amp; settings

Install

cd ~
git clone git@github.com:phanhaiquang/vim.git
mv vim/vim .vim
ln -s ~/.vim/mysetting/vimrc .vimrc

Open VIM, and run :PlugInstall, it will download plugins & install to ~/.vim/plugged I created different config for Pathogen ~/.vim/mysetting/vimrc.pathogen and using package (supported by VIM8). But Plug seems the best from view point of init loading eslapse time
