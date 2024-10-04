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

~ bash setup.sh
