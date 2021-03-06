local plugins = {
  "lspconfig",
  "formatter",
  "nvim-treesitter",
  "telescope",
}

for _, plugin in ipairs(plugins) do
  if package.loaders[2](plugin) then
    require("plugins."..plugin)
  end
end
