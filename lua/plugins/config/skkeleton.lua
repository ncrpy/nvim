local skkeleton_init = function()
  vim.fn["skkeleton#config"]({
    eggLikeNewline = true,
    globalJisyo = vim.fn.expand("$HOME/.skk/SKK-JISYO.L"),
  })
  -- codes below are not working now
  --
  -- vim.fn["skkeleton#register_kanatable"]("rom", {
  --   ["ca"] = { "か", "" },
  --   ["cu"] = { "く", "" },
  --   ["co"] = { "こ", "" },
  --   ["ci"] = { "し", "" },
  --   ["xn"] = { "ん", "" },
  -- })
  -- table.insert(vim.g["skkeleton#mapped_keys"], "<C-n>")
  -- table.insert(vim.g["skkeleton#mapped_keys"], "<C-p>")
  -- vim.fn["skkeleton#register_keymap"]("henkan", "<C-n>", "henkanForward")
  -- vim.fn["skkeleton#register_keymap"]("henkan", "<C-p>", "henkanBackward")
end

vim.api.nvim_create_augroup("skkeleton-initialize-pre", {})
vim.api.nvim_create_autocmd("User", {
  pattern = "skkeleton-initialize-pre",
  callback = skkeleton_init
})

vim.api.nvim_create_augroup("skkeleton-disable-pre", {})
vim.api.nvim_create_autocmd("User", {
  pattern = "skkeleton-disable-pre",
  callback = function()
    require("cmp").setup.buffer { enabled = true, }
  end
})

vim.api.nvim_create_augroup("skkeleton-enable-post", {})
vim.api.nvim_create_autocmd("User", {
  pattern = "skkeleton-enable-post",
  callback = function()
    require("cmp").setup.buffer { enabled = false }
  end
})

-- vim.api.nvim_create_augroup("skkeleton-mode-changed", {})
-- vim.api.nvim_create_autocmd("User", {
--   pattern = "skkeleton-mode-changed",
--   callback = function()
--     vim.cmd.redrawstatus()
--   end
-- })

vim.api.nvim_set_hl(0, "SkkeletonIndicatorEiji",
  { fg = "#88c0d0", bg = "#2e3440", bold = true })
vim.api.nvim_set_hl(0, "SkkeletonIndicatorHira",
  { fg = "#2e3440", bg = "#a3be8c", bold = true })
vim.api.nvim_set_hl(0, "SkkeletonIndicatorKata",
  { fg = "#2e3440", bg = "#ebcb8b", bold = true })
vim.api.nvim_set_hl(0, "SkkeletonIndicatorHankata",
  { fg = "#2e3440", bg = "#b48ead", bold = true })
vim.api.nvim_set_hl(0, "SkkeletonIndicatorZenkaku",
  { fg = "#2e3440", bg = "#88c0d0", bold = true })
vim.api.nvim_set_hl(0, "SkkeletonIndicatorAbbrev",
  { fg = "#e5e9f0", bg = "#bf616a", bold = true })

require("skkeleton_indicator").setup {
  eijiText = "Aa",
  hiraText = "あ",
  kataText = "ア",
  hankataText = "ｶﾅ",
  zenkakuText = "Ａ",
  abbrevText = "Aｱ"
}
