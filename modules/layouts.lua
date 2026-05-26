Layouts = {
  list = {
    "dwindle",
    "scrolling",
    "master",
  },

  current = "dwindle",
}

--------------------------------------------------------------------------------

function Layouts:new(o)
  o.parent = self
  return o
end

--------------------------------------------------------------------------------

function Layouts:pull()
  self.current = hl.get_config("general.layout")
end

function Layouts:push()
  hl.config({
    general = {
      layout = self.current,
    },
  })
end

--------------------------------------------------------------------------------

function Layouts:index(layout)
  for i, l in ipairs(self.list) do
    if (l == layout) then
      return i
    end
  end
  return nil
end

function Layouts:next()
  self:pull()
  local index = self:index(self.current) - 1
  local new_index = (index + 1) % #self.list + 1
  self.current = self.list[new_index]
  self:push()
end

function Layouts:prev()
  self:pull()
  local index = self:index(self.current) - 1
  local new_index = (index - 1) % #self.list + 1
  self.current = self.list[new_index]
  self:push()
end

function Layouts:reset(layout)
  if (layout) then
    self.current = layout
    self:push()
    return
  end

  self.current = self.list[1]
  self:push()
end
