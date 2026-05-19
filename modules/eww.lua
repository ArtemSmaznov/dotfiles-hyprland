function CLOSE_EWW_WINDOW(window_id)
  hl.exec_cmd("eww close " .. window_id)
end

function OPEN_EWW_WINDOW(window_id)
  hl.exec_cmd("eww open " .. window_id)
end

function TOGGLE_EWW_WINDOW(window_id)
  hl.exec_cmd("eww open --toggle " .. window_id)
end
