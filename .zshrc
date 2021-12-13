# INIT...
# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# OH MY ZSH...
# Use our customizations directory for themes and plugins.
ZSH_CUSTOM=$DOTFILES/zsh_custom

# Set name of the theme to load.
ZSH_THEME="kevin"

# Which plugins would you like to load?
plugins=(
  ssh-agent gpg-agent zsh-syntax-highlighting
)

# Instruct ssh-agent to load multiple key types
zstyle :omz:plugins:ssh-agent identities id_rsa id_ed25519

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/.{path,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file
