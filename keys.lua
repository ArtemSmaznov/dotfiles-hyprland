RESET_SUBMAP = function()
  hl.dispatch(hl.dsp.submap("reset"))
  hl.dispatch(hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/reset-submap.sh"))
end

function switch_submap(prompt, submap)
  return function()
    if (WHICH_KEY_ENABLED) then
      hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p '" .. prompt .. "' " .. submap))
    end
    hl.dispatch(hl.dsp.submap(submap))
  end, {
    description = "+" .. submap,
  }
end

--------------------------------------------------------------------------------

require("keys.core")
require("keys.leader")
require("keys.mouse")
