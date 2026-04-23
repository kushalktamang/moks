# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to my Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# zsh theme 
ZSH_THEME="awesomepanda"

# enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh --cmd cd)"

# node version manager
. /usr/share/nvm/init-nvm.sh

# eza aliases (replaces ls)
# requires: eza installed 
# requires: a Nerd Font set in your terminal (for icons to render)
alias ls='eza --icons'                  # basic listing with icons
alias ll='eza --icons --long'           # long format (perms, size, date, user)
alias la='eza --icons --long --all'     # long format + hidden files (dotfiles)
alias lt='eza --icons --tree'           # full tree view of current dir
alias lt2='eza --icons --tree --level=2'  # tree view, max 2 levels deep
alias lg='eza --icons --long --git'     # long format + git status per file
