local M = {}

M.keys = {
  {
    "<C-k>",
    "<Plug>(skkeleton-toggle)",
    mode = { "i", "c", "t" },
    { desc = "Toggle SKK" },
  },
}

M.setup = function()
  local skkeleton_init = function()
    local global_dicts = vim.fn.glob("$XDG_DATA_HOME/skk/*")

    vim.fn["skkeleton#config"]({
      -- debug = true,
      eggLikeNewline = true,
      globalDictionaries = global_dicts == "" and {} or vim.fn.split(global_dicts, "\n"),
      showCandidatesCount = 1,
    })

    vim.fn["skkeleton#register_kanatable"]("rom", {
      ["ca"] = { "か", "" },
      ["cu"] = { "く", "" },
      ["co"] = { "こ", "" },
      ["ci"] = { "し", "" },
      ["ce"] = { "せ", "" },
      ["xn"] = { "ん", "" },
    })

    local mapped_keys = vim.fn["skkeleton#get_default_mapped_keys"]()

    table.insert(mapped_keys, "<C-n>")
    table.insert(mapped_keys, "<C-p>")
    vim.g["skkeleton#mapped_keys"] = mapped_keys

    vim.fn["skkeleton#register_keymap"]("input", "<C-n>", "henkanFirst")
    vim.fn["skkeleton#register_keymap"]("henkan", "<C-n>", "henkanForward")
    vim.fn["skkeleton#register_keymap"]("input", "<C-p>", "cancel")
    vim.fn["skkeleton#register_keymap"]("henkan", "<C-p>", "henkanBackward")
  end

  vim.api.nvim_create_augroup("skkeleton-initialize-pre", {})
  vim.api.nvim_create_autocmd("User", {
    group = "skkeleton-initialize-pre",
    pattern = "skkeleton-initialize-pre",
    callback = skkeleton_init,
  })

  vim.api.nvim_create_augroup("skkeleton-cmp", {})
  vim.api.nvim_create_autocmd("User", {
    group = "skkeleton-cmp",
    pattern = "skkeleton-disable-post",
    callback = function()
      local ok, cmp = pcall(require, "cmp")
      if ok then
        cmp.setup.buffer({ enabled = true })
      end
    end,
  })
  vim.api.nvim_create_autocmd("User", {
    group = "skkeleton-cmp",
    pattern = "skkeleton-enable-pre",
    callback = function()
      local ok, cmp = pcall(require, "cmp")
      if ok then
        cmp.setup.buffer({ enabled = false })
      end
    end,
  })

  -- vim.api.nvim_create_augroup("skkeleton-mode-changed", {})
  -- vim.api.nvim_create_autocmd("User", {
  --   pattern = "skkeleton-mode-changed",
  --   callback = function()
  --     vim.cmd.redrawstatus()
  --   end
  -- })

  -- config for skkeleton_indicator.nvim

  vim.api.nvim_set_hl(0, "SkkeletonIndicatorEiji", { fg = "#88c0d0", bg = "#2e3440", bold = true })
  vim.api.nvim_set_hl(0, "SkkeletonIndicatorHira", { fg = "#2e3440", bg = "#a3be8c", bold = true })
  vim.api.nvim_set_hl(0, "SkkeletonIndicatorKata", { fg = "#2e3440", bg = "#ebcb8b", bold = true })
  vim.api.nvim_set_hl(0, "SkkeletonIndicatorHankata", { fg = "#2e3440", bg = "#b48ead", bold = true })
  vim.api.nvim_set_hl(0, "SkkeletonIndicatorZenkaku", { fg = "#2e3440", bg = "#88c0d0", bold = true })
  vim.api.nvim_set_hl(0, "SkkeletonIndicatorAbbrev", { fg = "#e5e9f0", bg = "#bf616a", bold = true })

  require("skkeleton_indicator").setup({
    eijiText = "Aa",
    hiraText = "あ",
    kataText = "ア",
    hankataText = "ｶﾅ",
    zenkakuText = "Ａ",
    abbrevText = "Aｱ",
  })
end

return M
