hl.workspace_rule({ workspace = "1" , persistent = true , monitor = "DP-1" , default = true })
hl.workspace_rule({ workspace = "2" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "3" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "4" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "5" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "6" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "7" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "8" , persistent = true , monitor = "DP-1" })
hl.workspace_rule({ workspace = "9" , persistent = true , monitor = "DP-1" , gaps_in = 100 , gaps_out = 200 })
hl.workspace_rule({ workspace = "10", persistent = true , monitor = "DP-3" , default = true })


hl.window_rule({ match = { workspace = "9"  }, border_size = 3 })
hl.window_rule({ match = { workspace = "10" }, border_size = 5 })


-- special workspaces
hl.workspace_rule({ workspace = "special:anki"       , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:audio"      , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:btop"       , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:bluetooth"  , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:calculator" , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:chats"      , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:email"      , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:files"      , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:htop"       , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:music"      , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:phone"      , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 20  })
hl.workspace_rule({ workspace = "special:term"       , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:torrent"    , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 125 })
hl.workspace_rule({ workspace = "special:vm"         , border_size = BORDERS_SPECIAL , gaps_in = 50 , gaps_out = 125 })


-- spawn apps on empty workspaces
local workspace_apps = {
  ["9"] = { MUSIC_CLI },
  ["10"] = { SYSLOG },
}

hl.on("workspace.created", function(ws)
        if not ws.is_empty then return end

        -- use apps associated with window id by default
        local app = ws.id and workspace_apps[tostring(ws.id)]
          or workspace_apps[ws.name]
        if app == nil then return end

        local cmd, provided_rules = table.unpack(app)
        -- shallow-copy the rules table so we can add workspace to it
        local rules = {}
        if provided_rules ~= nil then
          for k, v in provided_rules do rules[k] = v end
        end
        -- force program to open on desired workspace, even if focus is moved to
        -- another workspace before the program window appers
        rules.workspace = (ws.id and tostring(ws.id) or ws.name) .. " silent"
        -- run it
        hl.exec_cmd(cmd, rules)
end)
