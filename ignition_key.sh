# /bin/bash

# ============================== BASH ==============================
cat >> ~/.bash_profile << EOF 

# first and foremost, we need some color in the terminal
force_color_prompt=yes
PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# ALIASES 
alias ls='ls -G'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'export PATH="/usr/local/opt/openssl/bin:$PATH"
alias python='python3.8'

# greeting when I open terminal
echo Welcome back, Kyler

# get rid of depreciation warning for bash
export BASH_SILENCE_DEPRECIATION_WARNING=1

# finally, update homebrew on launch
brew upgrade
EOF
# ============================== BASH ==============================

# ============================== SSH ==============================
touch ~/.ssh/config
cat >> ~/.ssh/config << EOF

echo "SSH CONFIG CREATED. FILL IT OUT!!!\n"
# ============================== SSH ==============================

# ============================== Homebrew ==============================
# get the download tools for xcode
xcode-select --install

# next we want to install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# once that gets installed, we want to get all the other
# packages that we might need:

brew install openjdk@11
brew install wget
brew install python@3.8
brew install neovim
brew install node
brew install make
brew install gradle
brew cask install iterm2
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install xquartz
brew cask install google-backup-and-sync
# ============================== Homebrew ==============================

# ============================== Misc ==============================
# create a directory on the desktop for some code
mkdir ~/Desktop/code
# ============================== Misc ==============================
