echo "install xcode before"
echo "install dashlane"
echo "make sure mac 10.14+ is installed"


#Setup brew (for nodejs/nvm)
# requires password
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


curl -o iTerm2.zip https://iterm2.com/downloads/stable/iTerm2-3_3_6.zip
unzip iTerm2.zip
rm iTerm2.zip
mv iTerm.app /Applications/

#zsh installation and configuration
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

ln -s ~/work/configuration/mac/oh-my-zsh/custom ~/.oh-my-zsh/custom

curl -o vscode.zip https://az764295.vo.msecnd.net/stable/6ab598523be7a800d7f3eb4d92d7ab9a66069390/VSCode-darwin-stable.zip
unzip vscode.zip
rm vscode.zip
mv Visual\ Studio\ Code.app/ /Applications/

curl -o sourcetree.zip https://product-downloads.atlassian.com/software/sourcetree/ga/Sourcetree_3.2.1_225.zip
unzip sourcetree.zip
rm sourcetree.zip
mv Sourcetree.app /Applications/

# Vim configure NerdTree: https://medium.com/@victormours/a-better-nerdtree-setup-3d3921abc0b9


# install nvm
brew install nvm
mkdir ~/.nvm
# in .bash_profile
# ```
# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh
# ```


brew install python3
# add to path if not working. CHeck link: https://programwithus.com/learn-to-code/install-python3-mac/


