require("themes/base16")
require("monitors")

-- style
local gaps_inner = 20
local gaps_outer = 40
local borders = 15
local borders_special = 10
local borders_dialog = 5
local corners = 15
local sound_effects_dir = "/usr/share/sounds/oxygen/stereo"
local volume_step = 1


-- scripts
local myScript = "$HOME/.local/bin"
local myDMScript = "$HOME/.local/bin/dm-scripts"
local myHyprScript = "$HOME/.config/hypr/scripts"
local myEwwScript = "$HOME/.config/eww/scripts"
local exile = "$HOME/projects/git/arts/exile/target/release/exile"

-- cli tools
local myTerm = "uwsm app -- Alacritty.desktop"
local myCliFiles = "uwsm app -- alacritty -e vifm"
local myCliMusic = "alacritty --class ncmpcpp -e ncmpcpp"
local myVisualizer = "alacritty --class mini-visualizer -e cava"
local mySysLog = "alacritty --class syslog -e " .. myScript .."/syslog.sh"
local myCliText = "vim"
local myCliSysAudio = "alsamixer"
local myCliSysMonitor = "btop"
local myCliSysTasks = "htop"

-- core tools
local myWebBrowser = "uwsm app -- org.qutebrowser.qutebrowser.desktop"
local myIncBrowser = "uwsm app -- qutebrowser --target private-window"
local myTorBrowser = "uwsm app -- torbrowser.desktop"
local myIde = "uwsm app -- emacs.desktop"
local myFiles = "uwsm app -- pcmanfm.desktop"
local myEmail = "uwsm app -- org.mozilla.Thunderbird.desktop"
local myEmailClass = "thunderbird"

-- gaming
local myGZDoom = "uwsm app -- gzdoom.desktop"
local myFHeroes2 = "uwsm app -- fheroes2.desktop"
local myGameHub = "uwsm app -- com.github.tkashkin.gamehub.desktop"

local myHeroic = "uwsm app -- heroic"
local myLutris = "uwsm app -- net.lutris.Lutris.desktop"
local mySteam = "uwsm app -- steam.desktop"
local myVCMI = "uwsm app -- vcmilauncher.desktop"
local myNexus = "uwsm app -- com.nexusmods.app.desktop"

-- extra tools
local myLauncher = "uwsm app -- wofi --show drun"
local myVirtManager = "uwsm app -- virt-manager.desktop"
local myTorrent = "uwsm app -- transmission-gtk"
local myCalculator = "uwsm app -- org.gnome.Calculator.desktop"
local myAnki = "uwsm app -- anki.desktop"
local myColorPicker = "uwsm app -- hyprpicker -anr"
local myVolumeControl = "uwsm app -- com.saivert.pwvucontrol.desktop"

-- graphics tools
local myPhotoLibrary = "uwsm app -- org.kde.digikam.desktop"
local myImgEditor = "uwsm app -- gimp.desktop"
local myVctEditor = "uwsm app -- org.inkscape.Inkscape.desktop"
local myVidEditor = "uwsm app -- org.kde.kdenlive.desktop"

-- chat apps
local myWhatsApp = "uwsm app -- whatsapp-for-linux"
local myDiscord = "uwsm app -- webcord.desktop"
local myDiscordClass = "WebCord"

-- system tools
local mySysPower = "xfce4-power-manager-settings"
local mySysNetwork = "uwsm app -- nm-connection-editor"
local mySysBluetooth = "uwsm app -- blueman-manager"

-- eww
local eww_config = "config"
local eww_autostart = "autostart"
local eww_indicators = "indicators"
local eww_monitor = "monitor"
local eww_playground = "playground"
local eww_power = "powermenu-panel"
local eww_quick_settings = "quick-settings"
local eww_which_key = "which-key"

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

require("layouts/dwindle")
require("layouts/master")
require("layouts/scrolling")

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
