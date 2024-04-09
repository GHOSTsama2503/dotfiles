# ensure that all shell utilities are in english instead of the system language
set -x LANG "en_US.UTF-8"

# extends PATH
set -x PATH "$HOME/.local/bin:$PATH"

set -x BUN_INSTALL "$HOME/.bun"
set -x PATH "$BUN_INSTALL/bin:$PATH"

set -x ANDROID_HOME "$HOME/.android/sdk"
set -x PATH "$ANDROID_HOME/emulator:$PATH"
set -x PATH "$ANdROID_HOME/platform-tools:$PATH"

# aliases
alias cat="bat -pp"
alias cls="clear"
alias fetch="fastfetch"
alias ls="lsd"

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

# youtube
alias yt18="yt-dlp -f 18 -o '$HOME/Videos/YouTube/%(uploader)s/%(title)s.%(height)sp.%(ext)s' --embed-chapters"
alias yt18s="yt-dlp -f 18 -o '$HOME/Videos/YouTube/%(uploader)s/%(title)s.%(height)sp.%(ext)s' --embed-chapters --embed-subs --write-auto-sub --sub-format srt --sub-langs 'es,en'"
alias yt18p="yt-dlp -f 18 -o '$HOME/Videos/YouTube/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s' --embed-chapters"
alias yt18ps="yt-dlp -f 18 -o '$HOME/Videos/YouTube/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s' --embed-chapters --embed-subs --write-auto-sub --sub-format srt --sub-lang 'es,en'"

alias yt22="yt-dlp -f 22 -o '$HOME/Videos/YouTube/%(uploader)s/%(title)s.%(height)sp.%(ext)s' --embed-chapters"
alias yt22s="yt-dlp -f 22 -o '$HOME/Videos/YouTube/%(uploader)s/%(title)s.%(height)sp.%(ext)s' --embed-chapters --embed-subs --write-auto-sub --sub-format srt --sub-langs 'es,en'"
alias yt22p="yt-dlp -f 22 -o '$HOME/Videos/YouTube/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s' --embed-chapters"
alias yt22ps="yt-dlp -f 22 -o '$HOME/Videos/YouTube/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s' --embed-chapters --embed-subs --write-auto-sub --sub-format srt --sub-lang 'es,en'"

alias yt251="yt-dlp -f 251 -o '$HOME/Videos/YouTube/%(uploader)s/%(title)s.%(ext)s' --embed-chapters"
alias yt251p="yt-dlp -f 251 -o '$HOME/Videos/YouTube/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --embed-chapters"

# init fish shell
if status is-interactive
    set -g fish_greeting

    starship init fish | source
end
