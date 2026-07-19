WS = {
  id = 0,
  name = "",
  monitor = "DP-1",
  default_layout = "dwindle",
  layout = "dwindle",
}

function WS:new(name, monitor)
  self.id = self.id + 10
  self.name = name
  self.monitor = monitor or self.monitor

  -- hl.workspace_rule({ workspace = "10", persistent = false, monitor = "DP-3" , gaps_in = 0   , gaps_out = 0   , on_created_empty = SYSLOG , no_rounding = true , default = true })

  hl.workspace_rule({
      workspace = tostring(self.id),
      monitor = self.monitor,
      persistent = false,
      on_created_empty = SYSLOG,
      no_rounding = true,
      default = true
  })

  return self
end

function WS:set_gapless(status)
  hl.workspace_rule({
      workspace = tostring(self.id),
      monitor = self.monitor,
      persistent = false,
      gaps_in = 0,
      gaps_out = 0,
      on_created_empty = SYSLOG,
      no_rounding = true,
      default = true
  })
end
  

--------------------------------------------------------------------------------

-- workspace = WS:new("10", "DP-3")
-- workspace:set_gapless()
