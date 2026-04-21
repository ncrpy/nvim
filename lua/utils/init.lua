local M = {}

local function normname(name)
  local ret = name:lower():gsub("^n?vim%-", ""):gsub("%.n?vim$", ""):gsub("[%.%-]lua", "")
  return ret
end

function M.wrap_opts(config_name, do_merge)
  return function(plugin, opts)
    local c_name = config_name or normname(plugin.name)
    local c_opts = require("plugins.config")[c_name].opts
    if type(c_opts) == "function" then
      return c_opts(plugin, opts)
    end
    c_opts = type(c_opts) == "table" and c_opts or {}
    return do_merge and vim.tbl_deep_extend("force", opts, c_opts) or c_opts
  end
end

function M.wrap_setup(config_name)
  return function(plugin, opts)
    local c_name = config_name or normname(plugin.name)
    local setup = require("plugins.config")[c_name].setup
    if type(setup) ~= "function" then
      local modname = plugin.main or c_name
      require(modname).setup(opts)
      return
    end
    setup(plugin, opts)
  end
end

function M.executable(cmd)
  return function()
    return vim.fn.executable(cmd) == 1
  end
end

return M
