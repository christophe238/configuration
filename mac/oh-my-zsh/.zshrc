export ANDROID_SDK=/Users/cmarchad/Library/Android/sdk
export PATH=/Users/cmarchad/Library/Android/sdk/platform-tools:$PATH
# ZSH configuration
TRAPWINCH() {
  zle && { zle reset-prompt; zle -R }
}
export PATH=$HOME/bin:/usr/local/bin:$PATH
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

#POWERLEVEL9K Configuration
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_HOME_FOLDER_ABBREVIATION=""
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"

plugins=(
 # autojump
 # brew
  colorize
  dirhistory
 # docker
 # docker-compose
  git
  grunt
  gulp
  history
  history-substring-search
  iterm2
 # jsontools
 # mercurial
  npm
  nvm
  pass
  per-directory-history
  sudo
 # timer
  vi-mode
  vim-interaction
  vscode
  zsh-autosuggestions
  zsh-syntax-highlighting
 )

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/cmarchad/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/cmarchad/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/cmarchad/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cmarchad/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
