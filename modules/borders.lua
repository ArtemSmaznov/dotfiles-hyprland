Borders = {
  enabled = true,
  description = "Window borders",
  size = 15,
  disabled_size = 2,
}

function Borders:new(o)
  o.parent = self
  return o
end

function Borders:enable()
  if (self.enabled) then return end

  hl.config({ general = { border_size = self.size } })

  self.enabled = true
  hl.notification.create({ text = self.description .. " enabled", duration = 2000 })
end

function Borders:disable()
  if (not self.enabled) then return end

  hl.config({ general = { border_size = self.disabled_size } })

  self.enabled = false
  hl.notification.create({ text = self.description .. " disabled", duration = 2000 })
end

function Borders:toggle()
  local borders = hl.get_config("general.border_size")

  if (borders == self.disabled_size)
  then self:enable()
  else self:disable()
  end
end

--------------------------------------------------------------------------------

TOGGLE_BORDERS = function()
  Borders:toggle()
end
