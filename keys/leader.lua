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
local mySysLog = "alacritty --class syslog -e $myScript/syslog.sh"
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



hl.bind("SUPER + space", hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC-' leader"), { description = "" })
hl.bind("SUPER + space", hl.dsp.submap("leader")                                         , { description = "" })

hl.define_submap("leader", function()
                   hl.bind("c", function()
                             hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC c-' config"))
                             hl.dispatch(hl.dsp.submap("config"))
                   end, { description = "+config" })


                   hl.bind("e", function()
                             hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC e-' eww"))
                             hl.dispatch(hl.dsp.submap("eww"))
                   end, { description = "+Elkowars Wacky Widgets" })


                   hl.bind("l", function()
                             hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC l-' layout"))
                             hl.dispatch(hl.dsp.submap("layout"))
                   end, { description = "+layout" })


                   hl.bind("t", function()
                             hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC t-' toggle"))
                             hl.dispatch(hl.dsp.submap("toggle"))   
                   end, { description = "+toggle" })


                   hl.bind("w", function()
                             hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC w-' window"))
                             hl.dispatch(hl.dsp.submap("window"))   
                   end, { description = "+window" })


                   hl.bind("SHIFT + W", function()
                             hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC W-' workspace"))
                             hl.dispatch(hl.dsp.submap("workspace"))
                   end, { description = "+workspace" })


                   hl.bind("catchall", hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh"), { release = true, description = "" })
end)

--------------------------------------------------------------------------------
-- [c] config
--------------------------------------------------------------------------------
hl.define_submap("config", function()
                   hl.bind("a", function()
                             hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC c a-' autostart"))
                             hl.dispatch(hl.dsp.exec_cmd("eww open " .. eww_autostart))
                             hl.dispatch(hl.dsp.submap("autostart"))
                   end, { description = "open autostart list" })

  hl.bind("catchall" , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")             , { release = true, description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC-' leader"), { description = "" })
  hl.bind("backspace", hl.dsp.submap("leader")                                         , { description = "" })
  hl.bind("a"        , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")             , { release = true, description = "" })
end)

-- [c] config → [a] autostart
--------------------------------------------------------------------------------
hl.define_submap("autostart", function()
  hl.bind("b", hl.dsp.exec_cmd(exile .. "autostart toggle blueman-applet       && eww update autostart-enabled-apps=$(" .. exile .. " autostart list)"), { description = "toggle bluetooth" })
  hl.bind("d", hl.dsp.exec_cmd(exile .. "autostart toggle dunst                && eww update autostart-enabled-apps=$(" .. exile .. " autostart list)"), { description = "toggle dunst" })
  hl.bind("e", hl.dsp.exec_cmd(exile .. "autostart toggle emacs                && eww update autostart-enabled-apps=$(" .. exile .. " autostart list)"), { description = "toggle emacs" })
  hl.bind("k", hl.dsp.exec_cmd(exile .. "autostart toggle kdeconnect-indicator && eww update autostart-enabled-apps=$(" .. exile .. " autostart list)"), { description = "toggle kdeconnect" })
  hl.bind("l", hl.dsp.exec_cmd(exile .. "autostart toggle lutris               && eww update autostart-enabled-apps=$(" .. exile .. " autostart list)"), { description = "toggle lutris" })
  hl.bind("n", hl.dsp.exec_cmd(exile .. "autostart toggle nextcloud            && eww update autostart-enabled-apps=$(" .. exile .. " autostart list)"), { description = "toggle nextcloud" })
  hl.bind("q", hl.dsp.exec_cmd(exile .. "autostart toggle qutebrowser          && eww update autostart-enabled-apps=$(" .. exile .. " autostart list)"), { description = "toggle browser" })
  hl.bind("s", hl.dsp.exec_cmd(exile .. "autostart toggle steam                && eww update autostart-enabled-apps=$(" .. exile .. " autostart list)"), { description = "toggle steam" })
  hl.bind("t", hl.dsp.exec_cmd(exile .. "autostart toggle thunderbird          && eww update autostart-enabled-apps=$(" .. exile .. " autostart list)"), { description = "toggle thunderbird" })

  hl.bind("catchall" , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh"), { release = true                            , description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd(myEwwScript  .. "/which-key.sh -p 'SPC c-' config"), { description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd("eww close " .. eww_autostart))
  hl.bind("backspace", hl.dsp.submap("config"))
end)

--------------------------------------------------------------------------------
-- [e] eww
--------------------------------------------------------------------------------
hl.define_submap("eww", function()
  hl.bind("d"         , hl.dsp.exec_cmd("eww set debug=true")          , { description = "toggle debug panel" })
  hl.bind("p"         , hl.dsp.exec_cmd("eww open --toggle playground"), { description = "open playground" })

  hl.bind("catchall" , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")              , { release = true, description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd(myEwwScript  .. "/which-key.sh -p 'SPC-' leader"), { description = "" })
  hl.bind("backspace", hl.dsp.submap("leader")                                          , { description = "" })
  hl.bind("d"        , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")              , { release = true, description = "" })
  hl.bind("p"        , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")              , { release = true, description = "" })
end)
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- [l] layout
--------------------------------------------------------------------------------
hl.define_submap("layout", function()
  hl.bind("g"            , hl.dsp.exec_cmd(myEwwScript  .. "/which-key.sh -p 'SPC l g-' gaps"), { description = "" })
  hl.bind("d"            , hl.dsp.exec_cmd(myHyprScript .. "/layoutctl.sh set dwindle")       , { description = "dwindle" })
  hl.bind("g"            , hl.dsp.submap("gaps")                                              , { description = "+gaps" })
  hl.bind("l"            , hl.dsp.exec_cmd(myHyprScript .. "/layoutctl.sh toggle")            , { description = "switch layout" })
  hl.bind("m"            , hl.dsp.exec_cmd(myHyprScript .. "/layoutctl.sh set master")        , { description = "master" })
  hl.bind("s"            , hl.dsp.exec_cmd(myHyprScript .. "/layoutctl.sh set scrolling")     , { description = "scrolling" })

  hl.bind("catchall" , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")             , { release = true, description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC-' leader"), { description = "" })
  hl.bind("backspace", hl.dsp.submap("leader")                                         , { description = "" })
end)

-- [l] layout → [g] gaps
hl.define_submap("gaps"  , function()
  hl.bind("g"            , hl.dsp.exec_cmd(myHyprScript .. "/gapctl.sh " .. gaps_inner .. " toggle")  , { description = "toggle" })
  hl.bind("0"            , hl.dsp.exec_cmd(myHyprScript .. "/gapctl.sh " .. gaps_inner .. " reset")   , { description = "reset" })
  hl.bind("minus"        , hl.dsp.exec_cmd(myHyprScript .. "/gapctl.sh " .. gaps_inner .. " shrink 1"), { repeating = true, description = "shrink" })
  hl.bind("equal"        , hl.dsp.exec_cmd(myHyprScript .. "/gapctl.sh " .. gaps_inner .. " grow 1")  , { repeating = true, description = "grow" })
  hl.bind("SHIFT + 0"    , hl.dsp.exec_cmd(myHyprScript .. "/gapctl.sh " .. gaps_inner .. " disable") , { description = "disable" })
  hl.bind("SHIFT + minus", hl.dsp.exec_cmd(myHyprScript .. "/gapctl.sh " .. gaps_inner .. " shrink 5"), { repeating = true, description = "shrink more" })
  hl.bind("SHIFT + equal", hl.dsp.exec_cmd(myHyprScript .. "/gapctl.sh " .. borders .. " grow 5")     , { repeating = true, description = "grow more" })
end)
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- [t] toggle
--------------------------------------------------------------------------------
hl.define_submap("toggle", function()
  hl.bind("b"            , hl.dsp.exec_cmd(myHyprScript .. "/borderctl.sh " .. borders .. " toggle")             , { description = "window borders" })
  hl.bind("c"            , hl.dsp.exec_cmd(myHyprScript .. "/toggle-corners.sh " .. corners)                     , { description = "rounded corners" })
  hl.bind("d"            , hl.dsp.exec_cmd(myHyprScript .. "/toggle-dimming.sh 1")                               , { description = "window dimming" })
  hl.bind("g"            , hl.dsp.exec_cmd(myHyprScript .. "/gapctl.sh " .. gaps_inner .. " toggle")             , { description = "window gaps" })
  hl.bind("p"            , hl.dsp.exec_cmd(myEwwScript  .. "/which-key.sh -p 'SPC t p-' panels")                 , { description = "" })
  hl.bind("p"            , hl.dsp.submap("panels")                                                               , { description = "+panels" })
  hl.bind("q"            , hl.dsp.exec_cmd(myEwwScript  .. "/which-key.sh -p 'SPC t q-' quick-settings")         , { description = "" })
  hl.bind("q"            , hl.dsp.submap("quick-settings")                                                       , { description = "+quick-settings" })
  hl.bind("s"            , hl.dsp.exec_cmd(myHyprScript .. "/toggle-status-bar.sh")                              , { description = "status bar" })
  hl.bind("z"            , hl.dsp.exec_cmd(myHyprScript .. "/toggle-zen.sh " .. borders .. corners .. gaps_inner), { description = "zen mode" })

  hl.bind("catchall" , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")              , { release = true, description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd(myEwwScript  .. "/which-key.sh -p 'SPC-' leader"), { description = "" })
  hl.bind("backspace", hl.dsp.submap("leader")                                          , { description = "" })
  hl.bind("b"        , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")              , { description = "" })
  hl.bind("c"        , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")              , { description = "" })
  hl.bind("d"        , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")              , { description = "" })
  hl.bind("g"        , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")              , { description = "" })
  hl.bind("s"        , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")              , { description = "" })
  hl.bind("z"        , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")              , { description = "" })
end)

-- [t] toggle → [p] panels
hl.define_submap("panels", function()
  hl.bind("m"            , hl.dsp.exec_cmd(myEwwScript .. "/toggle-window.sh -m $(" .. myScript .. "/get-current-monitor.sh id) " .. eww_monitor)       , { description = "monitor panel" })
  hl.bind("SHIFT + M"    , hl.dsp.exec_cmd(myEwwScript .. "/toggle-window.sh -m 1 " .. eww_monitor)                                                     , { description = "monitor panel on secondary monitor" })
  hl.bind("p"            , hl.dsp.exec_cmd(myEwwScript .. "/toggle-window.sh -m $(" .. myScript .. "/get-current-monitor.sh id) " .. eww_playground)    , { description = "playground panel" })
  hl.bind("SHIFT + P"    , hl.dsp.exec_cmd(myEwwScript .. "/toggle-window.sh -m 1 " .. eww_playground)                                                  , { description = "playground panel on secondary monitor" })
  hl.bind("q"            , hl.dsp.exec_cmd(myEwwScript .. "/toggle-window.sh -m $(" .. myScript .. "/get-current-monitor.sh id) " .. eww_quick_settings), { description = "quick-settings panel" })
  hl.bind("SHIFT + Q"    , hl.dsp.exec_cmd(myEwwScript .. "/toggle-window.sh -m 1 " .. eww_quick_settings)                                              , { description = "quick-settings panel on secondary monitor" })

  hl.bind("escape"   , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")                , { release = true, description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd(myEwwScript  .. "/which-key.sh -p 'SPC t-' toggle"), { description = "" })
  hl.bind("backspace", hl.dsp.submap("toggle")                                            , { description = "" })
end)

-- [t] toggle → [q] quick settings
hl.define_submap("quick-settings", function()
  hl.bind("b"                    , hl.dsp.exec_cmd("systemd-run --user -u btctl-toggle.service -- " .. myScript .. "/btctl.sh toggle")         , { description = "bluetooth" })
  hl.bind("e"                    , hl.dsp.exec_cmd(myScript .. "/netctl.sh toggle ethernet")                                                   , { description = "ethernet" })
  hl.bind("h"                    , hl.dsp.exec_cmd("systemd-run --user -u btctl-headphones.service -- " .. myScript .. "/toggle-headphones.sh"), { description = "bluetooth headphones" })
  hl.bind("s"                    , hl.dsp.exec_cmd("systemd-run --user -u btctl-speakers.service -- " .. myScript .. "/toggle-speakers.sh")    , { description = "bluetooth speakers" })
  hl.bind("v"                    , hl.dsp.exec_cmd(myScript .. "/vpnctl.sh toggle")                                                            , { description = "vpn" })
  hl.bind("w"                    , hl.dsp.exec_cmd(myScript .. "/netctl.sh toggle wifi")                                                       , { description = "wi-fi" })

  hl.bind("escape"   , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")                , { release = true, description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd(myEwwScript  .. "/which-key.sh -p 'SPC t-' toggle"), { description = "" })
  hl.bind("backspace", hl.dsp.submap("toggle")                                            , { description = "" })
end)
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- [w] window
--------------------------------------------------------------------------------
hl.define_submap("window", function()
  hl.bind("b"            , hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC w b-' borders") , { description = "" })
  hl.bind("b"            , hl.dsp.submap("borders")                                              , { description = "+borders" })
  hl.bind("s"            , hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC w s-' stack  ") , { description = "" })
  hl.bind("s"            , hl.dsp.submap("stack")                                                , { description = "+stack" })

  hl.bind("catchall" , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")              , { release = true, description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC-' leader") , { description = "" })
  hl.bind("backspace", hl.dsp.submap("leader")                                          , { description = "" })
end)

-- [w] window → [b] borders
hl.define_submap("borders", function()
  hl.bind("b"             , hl.dsp.exec_cmd(myHyprScript .. "/borderctl.sh $borders toggle")   ,  { description = "toggle" })
  hl.bind("0"             , hl.dsp.exec_cmd(myHyprScript .. "/borderctl.sh $borders reset")    ,  { description = "reset" })
  hl.bind("minus"         , hl.dsp.exec_cmd(myHyprScript .. "/borderctl.sh $borders shrink 1") ,  { description = "shrink" })
  hl.bind("equal"         , hl.dsp.exec_cmd(myHyprScript .. "/borderctl.sh $borders grow 1")   ,  { description = "grow" })
  hl.bind("SHIFT + 0"     , hl.dsp.exec_cmd(myHyprScript .. "/borderctl.sh $borders disable")  ,  { description = "disable" })
  hl.bind("SHIFT + minus" , hl.dsp.exec_cmd(myHyprScript .. "/borderctl.sh $borders shrink 5") ,  { description = "shrink more" })
  hl.bind("SHIFT + equal" , hl.dsp.exec_cmd(myHyprScript .. "/borderctl.sh $borders grow 5")   ,  { description = "grow more" })

  hl.bind("catchall" , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")                , { release = true, description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC w-' window") , { description = "" })
  hl.bind("backspace", hl.dsp.submap("window")                                            , { description = "" })
end)

-- [w] window → [s] stack
hl.define_submap("stack", function()
  hl.bind("tab"         , hl.dsp.group.next()                                 , { description = "next window" })
  hl.bind("l"           , hl.dsp.group.lock_active({ action = "toggle" })     , { description = "toggle lock on stack" })
  hl.bind("SHIFT + L"   , hl.dsp.group.lock({ action = "toggle" })            , { description = "toggle lock on all stacks" })
  hl.bind("s"           , hl.dsp.group.toggle()                               , { description = "toggle window stacking" })
  hl.bind("x"           , hl.dsp.window.deny_from_group({ action = "toggle" }), { description = "restict window from stacking" })

  hl.bind("catchall"  , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")                , { release = true , description = "" })
  hl.bind("backspace" , hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC w-' window") , { description = "" })
  hl.bind("backspace" , hl.dsp.submap("window")                                            , { description = "" })
  hl.bind("l"         , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")                , { description = "" })
  hl.bind("SHIFT + L" , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")                , { description = "" })
  hl.bind("s"         , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")                , { description = "" })
  hl.bind("x"         , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")                , { description = "" })
end)
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- [W] workspace
--------------------------------------------------------------------------------
hl.define_submap("workspace", function()
  hl.bind("b"               , hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC w b-' borders") , { description = "" })
  hl.bind("b"               , hl.dsp.submap("borders")                                              , { description = "+borders" })

  hl.bind("catchall" , hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh")              , { release = true, description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'SPC-' leader") , { description = "" })
  hl.bind("backspace", hl.dsp.submap("leader")                                          , { description = "" })
end)
--------------------------------------------------------------------------------
