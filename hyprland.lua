require("themes/base16")
require("monitors")

-- style
gaps_inner = 20
gaps_outer = 40
borders = 15
borders_special = 10
borders_dialog = 5
corners = 15
sound_effects_dir = "/usr/share/sounds/oxygen/stereo"
volume_step = 1

-- scripts
myScript = "$HOME/.local/bin"
myDMScript = "$HOME/.local/bin/dm-scripts"
myHyprScript = "$HOME/.config/hypr/scripts"
myEwwScript = "$HOME/.config/eww/scripts"
exile = "$HOME/projects/git/arts/exile/target/release/exile"

-- cli tools
myTerm = "uwsm app -- Alacritty.desktop"
myCliFiles = "uwsm app -- alacritty -e vifm"
myCliMusic = "alacritty --class ncmpcpp -e ncmpcpp"
myVisualizer = "alacritty --class mini-visualizer -e cava"
mySysLog = "alacritty --class syslog -e " .. myScript .."/syslog.sh"
myCliText = "vim"
myCliSysAudio = "alsamixer"
myCliSysMonitor = "btop"
myCliSysTasks = "htop"

-- core tools
myWebBrowser = "uwsm app -- org.qutebrowser.qutebrowser.desktop"
myIncBrowser = "uwsm app -- qutebrowser --target private-window"
myTorBrowser = "uwsm app -- torbrowser.desktop"
myIde = "uwsm app -- emacs.desktop"
myFiles = "uwsm app -- pcmanfm.desktop"
myEmail = "uwsm app -- org.mozilla.Thunderbird.desktop"
myEmailClass = "thunderbird"

-- gaming
myGZDoom = "uwsm app -- gzdoom.desktop"
myFHeroes2 = "uwsm app -- fheroes2.desktop"
myGameHub = "uwsm app -- com.github.tkashkin.gamehub.desktop"

myHeroic = "uwsm app -- heroic"
myLutris = "uwsm app -- net.lutris.Lutris.desktop"
mySteam = "uwsm app -- steam.desktop"
myVCMI = "uwsm app -- vcmilauncher.desktop"
myNexus = "uwsm app -- com.nexusmods.app.desktop"

-- extra tools
myLauncher = "uwsm app -- wofi --show drun"
myVirtManager = "uwsm app -- virt-manager.desktop"
myTorrent = "uwsm app -- transmission-gtk"
myCalculator = "uwsm app -- org.gnome.Calculator.desktop"
myAnki = "uwsm app -- anki.desktop"
myColorPicker = "uwsm app -- hyprpicker -anr"
myVolumeControl = "uwsm app -- com.saivert.pwvucontrol.desktop"

-- graphics tools
myPhotoLibrary = "uwsm app -- org.kde.digikam.desktop"
myImgEditor = "uwsm app -- gimp.desktop"
myVctEditor = "uwsm app -- org.inkscape.Inkscape.desktop"
myVidEditor = "uwsm app -- org.kde.kdenlive.desktop"

-- chat apps
myWhatsApp = "uwsm app -- whatsapp-for-linux"
myDiscord = "uwsm app -- webcord.desktop"
myDiscordClass = "WebCord"

-- system tools
mySysPower = "xfce4-power-manager-settings"
mySysNetwork = "uwsm app -- nm-connection-editor"
mySysBluetooth = "uwsm app -- blueman-manager"

-- eww
eww_config = "config"
eww_autostart = "autostart"
eww_indicators = "indicators"
eww_monitor = "monitor"
eww_playground = "playground"
eww_power = "powermenu-panel"
eww_quick_settings = "quick-settings"
eww_which_key = "which-key"

hl.on("hyprland.start", function()
  hl.exec_cmd("exec uwsm finalize")
  hl.exec_cmd("docker ps") -- HACK
  hl.exec_cmd("paplay \"$HOME/public/audio/windows95-startup.wav\"")
  hl.exec_cmd("uwsm app -S both -- eww open-many main-bar second-bar " .. eww_indicators .. eww_quick_settings)
  hl.exec_cmd("hyprpm reload")
end)

require("config/animations")
require("config/binds")
require("config/cursor")
require("config/debug")
require("config/decoration")
require("config/devices")
require("config/ecosystem")
require("config/general")
require("config/group")
require("config/input")
require("config/misc")
require("config/permissions")
require("config/xwayland")

require("layouts")

require("keys/core")
require("keys/leader")
require("keys/mouse")

require("rules/applications/emacs")
require("rules/applications/games")
require("rules/applications/mini-visualizer")
require("rules/applications/mpv")
require("rules/applications/okular")
require("rules/applications/scrcpy")
require("rules/applications/thunderbird")
require("rules/applications/virtmanager")
require("rules/applications/wofi")
require("rules/layers/eww")
require("rules/layers/notifications")
require("rules/layers/wofi")
require("rules/idle-inhibit")
require("rules/windows")
require("rules/workspaces")
