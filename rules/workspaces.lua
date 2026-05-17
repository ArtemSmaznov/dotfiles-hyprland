local borders_special = 10

local myScript = "$HOME/.local/bin"

local myCliMusic = "alacritty --class ncmpcpp -e ncmpcpp"
local mySysLog = "alacritty --class syslog -e " .. myScript .. "/syslog.sh"

hl.workspace_rule({ workspace = "1" , persistent = true , monitor = "DP-1" , default = true })
hl.workspace_rule({ workspace = "2" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "3" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "4" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "5" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "6" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "7" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "8" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "9" , persistent = false, monitor = "DP-1" , gaps_in = 100 , gaps_out = 200 , on_created_empty = myCliMusic })
hl.workspace_rule({ workspace = "10", persistent = false, monitor = "DP-3" , gaps_in = 0   , gaps_out = 0   , on_created_empty = mySysLog , no_rounding = true , default = true  })


hl.window_rule({ match = { workspace = "9"  }, border_size = 3 })
hl.window_rule({ match = { workspace = "10" }, border_size = 2 })


-- special workspaces
hl.workspace_rule({ workspace = "special:anki"       , border_size = borders_special , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:audio"      , border_size = borders_special , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:btop"       , border_size = borders_special , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:bluetooth"  , border_size = borders_special , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:calculator" , border_size = borders_special , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:chats"      , border_size = borders_special , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:email"      , border_size = borders_special , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:files"      , border_size = borders_special , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:htop"       , border_size = borders_special , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:music"      , border_size = borders_special , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:phone"      , border_size = borders_special , gaps_in = 50 , gaps_out = 20  })
hl.workspace_rule({ workspace = "special:term"       , border_size = borders_special , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:torrent"    , border_size = borders_special , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:vm"         , border_size = borders_special , gaps_in = 50 , gaps_out = 125 })
