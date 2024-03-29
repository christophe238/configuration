# To run this script :
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/christophe238/configuration/master/mac/setup.sh)"
echo "While this script will run here are some ideas to run in the background:"
echo "Install quiver for taking notes from app store"
echo "..."

echo "Install xcode"
echo "make sure mac 10.14+ is installed"
# Setup brew
# requires password
echo "Installing Homebrew"
echo "This step will require password"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install google-chrome
brew cask install dashlane

# Configure folder for self downloading
mkdir ~/work
git clone https://github.com/christophe238/configuration.git ~/work/configuration

#zsh installation and configuration
echo "Installing ZSH"
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

mv ~/.oh-my-zsh/custom ~/.oh-my-zsh/old-custom
git clone https://github.com/zsh-users/zsh-autosuggestions ~/work/configuration/mac/oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/work/configuration/mac/oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/romkatv/powerlevel10k.git ~/work/configuration/mac/oh-my-zsh/custom/themes/powerlevel10k
ln -sf ~/work/configuration/mac/oh-my-zsh/custom ~/.oh-my-zsh/custom
ln -sf ~/work/configuration/mac/oh-my-zsh/.zshrc ~/.zshrc

# Downloading and installing applications
echo "Downloading and installing tools and applications"

brew cask install iterm2
echo "Downloading material-design-colors theme for iTerm which will need to be manually installed"
curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors
echo "Setting up nvm"
mkdir ~/.nvm
brew install nvm
echo "Installing nodeJS 10 & 12 LTS"
nvm install 10
nvm install 12
nvm use 10
nvm default 10
echo "Installing necessary "
npm i -g bunyan grunt gulp typescript

echo "Setting the rest of the apps"
brew cask install visual-studio-code
brew cask install sourcetree
brew cask install firefox
brew install mongodb
brew cask install cyberduck
brew cask install adobe-acrobat-reader
brew cask install microsoft-office
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install docker
brew cask install adoptopenjdk/openjdk/adoptopenjdk8 
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk11
brew install maven

# Vim configure NerdTree: https://medium.com/@victormours/a-better-nerdtree-setup-3d3921abc0b9

brew install python3
# add to path if not working. CHeck link: https://programwithus.com/learn-to-code/install-python3-mac/

echo "Adding application to Dock"
brew install dockutil
dockutil --remove Pages --no-restart
dockutil --remove Numbers --no-restart
dockutil --remove Keynote --no-restart
dockutil --remove Mail --no-restart
dockutil --remove Calendar --no-restart
dockutil --remove Launchpad --no-restart
dockutil --remove Notes --no-restart
dockutil --remove Contacts --no-restart
dockutil --remove FaceTime --no-restart
dockutil --remove Books --no-restart
dockutil --remove Music --no-restart
dockutil --remove Messages --no-restart
dockutil --remove Photos --no-restart
dockutil --remove Reminders --no-restart

dockutil --add /Applications/Dashlane.app --no-restart --label Dashlane
dockutil --add /Applications/Google\ Chrome.app --no-restart --label Google
dockutil --add /Applications/Firefox.app --no-restart --label Firefox
dockutil --add /Applications/iTerm.app --no-restart --label iTerm
dockutil --add /Applications/Sourcetree.app --no-restart --label Sourcetree
dockutil --add /Applications/Visual\ Studio\ Code.app --label Visual
dockutil --add /Applications/Microsoft\ Word.app --no-restart --label Word
dockutil --add /Applications/Microsoft\ Excel.app --no-restart --label Excel
dockutil --add /Applications/Microsoft\ Outlook.app --no-restart --label Outlook
dockutil --add /Applications/Microsoft\ PowerPoint.app --no-restart --label PowerPoint
dockutil --add /Applications/Microsoft\ OneNote.app --no-restart --label OneNote
dockutil --add /Applications/Spotify.app --no-restart --label Spotify
dockutil --add /Applications/Skype.app --no-restart --label Skype
dockutil --add /Applications/Slack.app --no-restart --label Slack

echo "Looks like everything went well"
echo "Manual steps left:"
echo "Load material design in iterm"
echo "Check if python3 needs to be added to path"

