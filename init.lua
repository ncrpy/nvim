vim.g.python3_host_prog = vim.fn.stdpath("config") .. "/venv/bin/python"

vim.api.nvim_create_user_command(
  "SourceCfg",
  function(opts)
		local cfg = opts.args
		local tbl = vim.fn.split(cfg, "\\.")
		if tbl[#tbl] == "vim" then
      local cfg_path = vim.fn.stdpath("config") .. "/plugins/" .. cfg
			if vim.fn.filereadable(cfg_path) then
				vim.cmd("source " .. cfg_path)
			end
		elseif tbl[#tbl] == "lua" then
			local cfg_path = vim.fn.stdpath("config") .. "/lua/plugins/" .. cfg
			if vim.fn.filereadable(cfg_path) then
				dofile(cfg_path)
			end
		elseif package.loaders[2](cfg) then
			require("plugins." .. cfg)
		end
	end,
	{ nargs = 1 }
)

vim.cmd([[
let $PATH = $PATH.':'.stdpath('config').'/venv/bin'.':'.stdpath('config').'/node_modules/.bin'

runtime! dein/*.vim
" runtime! install.vim
runtime! init/*.vim
]])