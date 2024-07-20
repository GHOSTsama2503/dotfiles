# ensure that all shell utilities are in english instead of the system language
set -x LANG "en_US.UTF-8"

# Android SDK
set -x ANDROID_HOME "$HOME/.android/sdk"
set -x PATH "$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
set -x PATH "$ANDROID_HOME/emulator:$PATH"
set -x PATH "$ANDROID_HOME/platform-tools:$PATH"

# extends PATH
set -x PNPM_HOME "$HOME/.local/share/pnpm"
set -x BUN_INSTALL "$HOME/.bun"
set -x PATH "$BUN_INSTALL/bin:$PATH"
set -x PATH "$HOME/.local/bin:$PATH"
set -x PATH "$HOME/.go/bin:$PATH"
set -x PATH "$PNPM_HOME:$PATH"

source /opt/asdf-vm/asdf.fish

# aliases
alias cat="bat -pp"
alias cls="clear"
alias ls="lsd"
alias fetch="fastfetch"
alias neofetch="fastfetch"

# pacman
alias pm="sudo pacman -S --needed --disable-download-timeout"
alias pmn="pm --noconfirm"
alias pmr="sudo pacman -Rnsu"
alias pmu="sudo pacman -Syu --disable-download-timeout"
alias pmun="pmu --noconfirm"
alias pms="pacman -Ss"
alias pmi="pacman -Sii"
alias pmq="pacman -Q"
alias pmqe="pacman -Qe"
alias pmqi="pacman -Qi"
alias pmqs="pacman -Qs"


alias pm-search="pacman -Ss"
alias pm-install="sudo pacman -S"
alias pm-list="pacman -Q"
alias pm-list-verbose="pacman -Qs"
alias pm-list-explicit="pacman -Qe"
alias pm-list-manually="pacman -Qm"
alias pm-remove="sudo pacman -Rns"
alias pm-autoremove-list="pacman -Qdtq"
alias pm-autoremove="pm-autoremove-list | sudo pacman -Rns -"
alias pm-clean="sudo pacman -Sc"
alias pm-rmcache="sudo pacman -Scc"


# init fish shell
if status is-interactive
    set -g fish_greeting

    starship init fish | source
end
