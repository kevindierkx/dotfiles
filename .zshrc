# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kevindierkx/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="kevin"

# Which plugins would you like to load?
plugins=(
  git ssh-agent
)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nano'
else
    export EDITOR='nano'
fi

# CUSTOMIZATION FOR ZSH
if [ -r ~/.dotfiles/.aliases ]; then
    source ~/.dotfiles/.aliases
fi
