local plugins = {
  "lspconfig",
  "formatter",
  "treesitter",
}
for _, plugin in ipairs(plugins) do
  require("plugins."..plugin)
end
