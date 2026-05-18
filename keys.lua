RESET_SUBMAP = function()
  hl.dispatch(hl.dsp.submap("reset"))
  hl.dispatch(hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/reset-submap.sh"))
end

function switch_submap(prompt, submap)
  return function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p '" .. prompt .. "' " .. submap))
    hl.dispatch(hl.dsp.submap(submap))
  end, {
    description = "+" .. submap,
    release = true,
  }
end

--------------------------------------------------------------------------------

require("keys.core")
require("keys.leader")
require("keys.mouse")
