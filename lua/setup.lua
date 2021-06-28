local plugins = {
  "lspconfig",
  "formatter",
  "treesitter",
}

for _, plugin in ipairs(plugins) do
  pcall(require, 'plugins.'..plugin)
end
