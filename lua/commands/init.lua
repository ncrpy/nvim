local update = require("commands.update")

vim.api.nvim_create_user_command("NvimCheckUpdate", update.check_update, {})
vim.api.nvim_create_user_command("NvimUpdate", update.update_nvim, {})
vim.api.nvim_create_user_command("NvimInstall", update.install_nvim, {
  nargs = "?",
  complete = "dir",
})
