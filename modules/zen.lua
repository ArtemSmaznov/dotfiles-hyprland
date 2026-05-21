Zen = {
  enabled = false,
  description = "ZEN mode"
}

function Zen:new(o)
  o.parent = self
  return o
end

function Zen:enable()
  if (self.enabled) then return end

  Borders:disable()
  Corners:disable()
  Gaps:disable()

  self.enabled = true
  Notification:default(self.description .. " enabled"):send()
end

function Zen:disable()
  if (not self.enabled) then return end

  Borders:enable()
  Corners:enable()
  Gaps:enable()

  self.enabled = false
  Notification:default(self.description .. " disabled"):send()
end

function Zen:toggle()
  if (self.enabled)
  then self:disable()
  else self:enable()
  end
end

--------------------------------------------------------------------------------

ZEN_MODE = function()
  Zen:toggle()
end
