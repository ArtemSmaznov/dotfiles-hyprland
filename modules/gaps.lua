Gaps = {
  enabled = true,
  description = "Window gaps",
  size = 20,
  disabled_size = 0,
}

function Gaps:new(o)
  o.parent = self
  return o
end

function Gaps:enable()
  if (self.enabled) then return end

  hl.config({
    general = {
      gaps_in  = self.size,
      gaps_out = self.size * 2,
    }
  })

  self.enabled = true
  hl.notification.create({ text = self.description .. " enabled", duration = 2000 })
end

function Gaps:disable()
  if (not self.enabled) then return end

  hl.config({
    general = {
      gaps_in  = self.disabled_size,
      gaps_out = self.disabled_size * 2,
    }
  })

  self.enabled = false
  hl.notification.create({ text = self.description .. " disabled", duration = 2000 })
end

function Gaps:toggle()
  local gaps_in = hl.get_config("general.gaps_in").top
  local gaps_out = hl.get_config("general.gaps_out").top

  if (gaps_in == self.disabled_size or gaps_out == self.disabled_size * 2)
  then self:enable()
  else self:disable()
  end
end

--------------------------------------------------------------------------------

TOGGLE_GAPS = function()
  Gaps:toggle()
end
