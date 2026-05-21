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
  Notification:shorter(self.description .. " enabled"):send()
end

function Corners:disable()
  if (not self.enabled) then return end

  hl.config({ decoration = { rounding = self.disabled_size } })

  self.enabled = false
  Notification:shorter(self.description .. " disabled"):send()
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
