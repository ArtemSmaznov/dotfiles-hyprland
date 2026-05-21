Corners = {
  enabled = true,
  description = "Rounded corners",
  size = 15,
  disabled_size = 0,
}

function Corners:new(o)
  o.parent = self
  return o
end

function Corners:enable()
  if (self.enabled) then return end

  hl.config({ decoration = { rounding = self.size } })

  self.enabled = true
  hl.notification.create({ text = self.description .. " enabled", duration = 2000 })
end

function Corners:disable()
  if (not self.enabled) then return end

  hl.config({ decoration = { rounding = self.disabled_size } })

  self.enabled = false
  hl.notification.create({ text = self.description .. " disabled", duration = 2000 })
end

function Corners:toggle()
  local corners = hl.get_config("decoration.rounding")

  if (corners == self.disabled_size)
  then self:enable()
  else self:disable()
  end
end

--------------------------------------------------------------------------------

TOGGLE_CORNERS = function()
  Corners:toggle()
end
