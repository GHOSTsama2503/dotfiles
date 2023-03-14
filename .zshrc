# envs
export EDITOR="nano"
export LANG="en_US.UTF-8"
export ZSH="$HOME/.oh-my-zsh"

ENABLE_CORRECTION="true"

plugins=(adb docker git node pip python)

source $ZSH/oh-my-zsh.sh

# Aliases
alias cls="clear"
alias ls="lsd"

# Init Prompt
eval "$(starship init zsh)"
