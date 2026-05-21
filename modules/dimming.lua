Dimming = {
  enabled = false,
  description = "Inactive window dimming",
}

function Dimming:new(o)
  o.parent = self
  return o
end

function Dimming:enable()
  if (self.enabled) then return end

  hl.config({ decoration = { dim_inactive = true } })

  self.enabled = true
  Notification:shorter(self.description .. " enabled"):send()
end

function Dimming:disable()
  if (not self.enabled) then return end

  hl.config({ decoration = { dim_inactive = false } })

  self.enabled = false
  Notification:shorter(self.description .. " disabled"):send()
end

function Dimming:toggle()
  local dimming = hl.get_config("decoration.dim_inactive")

  if (not dimming)
  then self:enable()
  else self:disable()
  end
end

--------------------------------------------------------------------------------

TOGGLE_DIMMING = function()
  Dimming:toggle()
end
