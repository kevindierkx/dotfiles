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

# Instruct ssh-agent to load multiple key types
zstyle :omz:plugins:ssh-agent identities id_rsa id_ed25519

source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/.{path,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file
