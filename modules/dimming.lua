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
  hl.notification.create({ text = self.description .. " enabled", duration = 2000 })
end

function Dimming:disable()
  if (not self.enabled) then return end

  hl.config({ decoration = { dim_inactive = false } })

  self.enabled = false
  hl.notification.create({ text = self.description .. " disabled", duration = 2000 })
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
