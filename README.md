# .dotfiles

This is the dotfiles and setup.sh script for AWS Debian EC2 instance. The following need to be installed first:

~ sudo apt update

~ sudo apt install git gh stow -y

Then:

~ gh auth login

~ gh repo clone .dotfiles

~ sudo rm -r .gitconfig .bashrc .config

~ cd .dotfiles

~ stow .

~ bash setup_script.sh

~ source .bashrc (makes it have your name, and shortcuts work)

(for lsp-config.lua you might need to do this:
-- you need to have NPM loaded for the TS LSP server, so ensure it it installed
-- sudo apt install npm -y)
