set -l videos_dir $(xdg-user-dir VIDEOS)
set -l youtube_dirname "YouTube"

if test ! -d "$videos_dir"
    set -x YT_PATH "$videos_dir/$youtube_dirname"
else if test ! -d "$HOME/Videos"
    set -x YT_PATH "$HOME/Videos/$youtube_dirname"
else if test ! -d "$HOME"
    set -x YT_PATH "$HOME/$youtube_dirname"
end

set -x YT_SINGLE_PATH "$YT_PATH/%(uploader)s/%(title)s.%(ext)s"
set -x YT_PLAYLIST_PATH "$YT_PATH/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s"


function ytdl --wraps yt-dlp --description "Base arguments for YouTube downloads"
    yt-dlp --embed-thumbnail --embed-chapters --embed-subs --write-auto-sub --sub-format best --sub-lang "en,es" --retries infinite $argv
end

function ytls --wraps yt-dlp --description "List YouTube video qualities"
    yt-dlp --list-formats $argv
end


# Audio only

function yta --wraps yt-dlp --description "Extract audio from a YouTube video"
    yt-dlp --no-playlist --format ba --output "$YT_SINGLE_PATH" $argv
end

function ytap --wraps yt-dlp --description "Extract audio from a YouTube playlist"
    yt-dlp --format ba --output "$YT_PLAYLIST_PATH" $argv
end


# Videos 144p

function yt144 --wraps ytdl --description "Download YouTube video in 144p"
    ytdl --no-playlist --format "bv[height<=144]+wa" --output "$YT_SINGLE_PATH" $argv
end

function yt144p --wraps ytdl --description "Download YouTube playlist in 144p"
    ytdl --format "bv[height<=144]+wa" --output "$YT_PLAYLIST_PATH" $argv
end


# Videos 240p

function yt240 --wraps ytdl --description "Download YouTube video in 240p"
    ytdl --no-playlist --format "bv[height<=240]+wa" --output "$YT_SINGLE_PATH" $argv
end

function yt240p --wraps ytdl --description "Download YouTube playlist in 240p"
    ytdl --format "bv[height<=240]+wa" --output "$YT_PLAYLIST_PATH" $argv
end


# Videos 360p

function yt360 --wraps ytdl --description "Download YouTube video in 360p"
    ytdl --no-playlist --format "bv[height<=360]+wa" --output "$YT_SINGLE_PATH" $argv
end

function yt360p --wraps ytdl --description "Download YouTube playlist in 360p"
    ytdl --format "bv[height<=360]+wa" --output "$YT_PLAYLIST_PATH" $argv
end


# Videos 480p

function yt480 --wraps ytdl --description "Download YouTube video in 480p"
    ytdl --no-playlist --format "bv[height<=480]+ba" --output "$YT_SINGLE_PATH" $argv
end

function yt480p --wraps ytdl --description "Download YouTube playlist in 480p"
    ytdl --format "bv[height<=480]+ba" --output "$YT_PLAYLIST_PATH" $argv
end


# Videos 720p

function yt720 --wraps ytdl --description "Download YouTube video in 720p"
    ytdl --no-playlist --format "bv[height<=720]+ba" --output "$YT_SINGLE_PATH" $argv
end

function yt720p --wraps ytdl --description "Download YouTube playlist in 720p"
    ytdl --format "bv[height<=720]+ba" --output "$YT_PLAYLIST_PATH" $argv
end


# Videos 1080p

function yt1080 --wraps ytdl --description "Download YouTube video in 1080p"
    ytdl --no-playlist --format "bv[height<=1080]+ba" --output "$YT_SINGLE_PATH" $argv
end

function yt1080p --wraps ytdl --description "Download YouTube playlist in 1080p"
    ytdl --format "bv[height<=1080]+ba" --output "$YT_PLAYLIST_PATH" $argv
end
