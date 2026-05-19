-- scripts
SCRIPTS            = "$HOME/.local/bin"
DM_SCRIPTS         = "$HOME/.local/bin/dm-scripts"
HYPR_SCRIPTS       = "$HOME/.config/hypr/scripts"
EWW_SCRIPTS        = "$HOME/.config/eww/scripts"
EXILE              = "$HOME/projects/git/arts/exile/target/release/exile"

-- cli tools
TERM               = "uwsm app -- Alacritty.desktop"
FILES_CLI          = "uwsm app -- alacritty -e vifm"
MUSIC_CLI          = "alacritty --class ncmpcpp -e ncmpcpp"
VISUALIZER         = "alacritty --class mini-visualizer -e cava"
SYSLOG             = "alacritty --class syslog -e " .. SCRIPTS .. "/syslog.sh"
TEXT_CLI           = "vim"
SYS_AUDIO_CLI      = "alsamixer"
SYS_MONITOR_CLI    = "btop"
SYS_TASKS_CLI      = "htop"

-- core tools
BROWSER            = "uwsm app -- org.qutebrowser.qutebrowser.desktop"
BROWSER_INCOGNITO  = "uwsm app -- qutebrowser --target private-window"
BROWSER_TOR        = "uwsm app -- torbrowser.desktop"
IDE                = "uwsm app -- emacs.desktop"
FILES              = "uwsm app -- pcmanfm.desktop"
EMAIL              = "uwsm app -- org.mozilla.Thunderbird.desktop"
EMAIL_CLASS        = "thunderbird"

-- gaming
GZDOOM             = "uwsm app -- gzdoom.desktop"
FHEROES2           = "uwsm app -- fheroes2.desktop"
GAMEHUB            = "uwsm app -- com.github.tkashkin.gamehub.desktop"
HEROIC             = "uwsm app -- heroic"
LUTRIS             = "uwsm app -- net.lutris.Lutris.desktop"
STEAM              = "uwsm app -- steam.desktop"
VCMI               = "uwsm app -- vcmilauncher.desktop"
NEXUS              = "uwsm app -- com.nexusmods.app.desktop"

-- extra tools
LAUNCHER           = "uwsm app -- wofi --show drun"
VM                 = "uwsm app -- virt-manager.desktop"
TORRENT            = "uwsm app -- transmission-gtk"
CALCULATOR         = "uwsm app -- org.gnome.Calculator.desktop"
ANKI               = "uwsm app -- anki.desktop"
COLOR_PICKER       = "uwsm app -- hyprpicker -anr"

-- graphics tools
PHOTO_LIBRARY      = "uwsm app -- org.kde.digikam.desktop"
IMAGE_EDITOR       = "uwsm app -- gimp.desktop"
VECTOR_EDITOR      = "uwsm app -- org.inkscape.Inkscape.desktop"
VIDEO_EDITOR       = "uwsm app -- org.kde.kdenlive.desktop"

-- chat apps
WHATSAPP           = "uwsm app -- whatsapp-for-linux"
DISCORD            = "uwsm app -- webcord.desktop"
DISCORD_CLASS      = "WebCord"

-- system tools
SYS_POWER          = "xfce4-power-manager-settings"
SYS_NETWORK        = "uwsm app -- nm-connection-editor"
SYS_BLUETOOTH      = "uwsm app -- blueman-manager"
SYS_AUDIO          = "uwsm app -- com.saivert.pwvucontrol.desktop"

-- eww
EWW_BAR_MAIN       = "main-bar"
EWW_BAR_SECOND     = "second-bar"
EWW_CONFIG         = "config"
EWW_AUTOSTART      = "autostart"
EWW_INDICATORS     = "indicators"
EWW_MONITOR        = "monitor"
EWW_PLAYGROUND     = "playground"
EWW_POWER          = "powermenu-panel"
EWW_QUICK_SETTINGS = "quick-settings"
EWW_WHICH_KEY      = "which-key"
