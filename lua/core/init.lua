local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  once = true,
  callback = function()
    vim.api.nvim_exec_autocmds("User", {
      pattern = "VeryLazyPre",
      modeline = false,
    })
  end,
})

vim.api.nvim_create_autocmd("User", {
  pattern = "LazyDone",
  once = true,
  callback = function()
    vim.defer_fn(function()
      require("lazy.manage.checker").start()
    end, 1000)
  end
})

local lazy_opts = require("plugins.config.lazy").opts

require("core.options")
require("lazy").setup("plugins", lazy_opts)
