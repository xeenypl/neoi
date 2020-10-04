# Start X at login
status is-login && [ -z "$DISPLAY" -a "$XDG_VTNR" = 1 ] &&  exec startx -- -keeptty

# disale useless stuf
function fish_greeting; end
function fish_mode_prompt; end

set PATH $HOME/.nimble/bin/ $HOME/.local/bin $HOME/.cargo/bin $PATH
# set NNN_COLORS '1234'
# set NNN_PLUG 'i:imgview;d:dragdrop'
#
# set XDG_CONFIG_HOME "$HOME/.config"
# set XDG_CACHE_HOME "$HOME/.cache"
# set XDG_DATA_HOME "$HOME/.local/share"
#
set EDITOR "nvim"
set BROWSER "qutebrowser"
set SHELL "fish"
set TERMINAL "alacritty"
set PAGER "less"

# seting up prompt
function fish_prompt
    set error $status
    set mode --bold red

    if set -q SSH_CLIENT
        set color1 green
    else
        set color1 red
    end

    switch $fish_bind_mode
        case default;     set color2 --bold red
        case insert;      set color2 --bold white
        case replace-one; set color2 --bold white
        case visual;      set color2 --bold brmagenta
    end

    if [ $error -eq 0 ]
        printf '[%s%s%s] ' (set_color $color1) \
                           (basename $PWD)     \
                           (set_color normal)
        printf '[%s%s%s] ' (set_color $color2) \
                           $fish_bind_mode     \
                           (set_color normal)
        echo -e "\n"
    else
        printf '[%s%s%s] ' (set_color $color1) \
                           (basename $PWD)     \
                           (set_color normal)
        printf '[%s%s%s] ' (set_color $color2) \
                           $fish_bind_mode     \
                           (set_color normal)
        printf '[%s%s%s] ' (set_color red)     \
                           (echo $error)       \
                           (set_color normal)
        echo -e "\n"
    end
end

function hide
    set WID (xdo id)
    xdo hide
    command $argv
    xdo show $WID
end

function ls
    exa $argv
end

function ll
    ls -la $argv
end

function la
    ls -a $argv
end

function l
    ls -l $argv
end

function :q
    exit
end

function :Q  
    exit
end

function :wq
    exit
end

function :Wq
    exit
end

function :WQ 
    exit
end

function vf
    set path (fd | fzf)
    if [ -n "$path" ]
        nvim $path
    end
end

function md
    mkdir -p $argv
    cd $argv[1]
end

function forever
    while true
        command $argv
    end
end

function tor-del-all
    transmission-remote -l                          |
        awk ' $2 == "100%" && $4 "Done" {print $1}' |
        xargs -n 1 -I % transmission-remote -t % -r
end

function tor-del
    for i in $argv
        transmission-remote -t $i -r
    end
end

function tor-add
    for i in $argv
        transmission-remote -a $i
    end
end

function tor-ls
    transmission-remote -l
end

function conf
    nvim (find ~/.config/ -type f | fzf)
end

function yt-mp3
    youtube-dl                                    \
        --extract-audio                           \
        --audio-format mp3                        \
        --ignore-errors                           \
        --output "%(uploader)s/%(title)s.%(ext)s" \
        $argv
end
