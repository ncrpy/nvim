function contains(tab, val)
    local set = {}
    for _, l in ipairs(tab) do set[l] = true end
    return set[val] ~= nil
end

ft = vim.bo.filetype

if ft == "" then do end
elseif contains({"c", "cpp"}, ft) then
    require'lspconfig'.clangd.setup{}
elseif contains({"python"}, ft) then
    require'lspconfig'.pyls.setup{}
    require'lspconfig'.pyright.setup{}
elseif contains({"tex", "latex"}, ft) then
    require'lspconfig'.texlab.setup{}
elseif contains({"r"}, ft) then
    require'lspconfig'.r_language_server.setup{}
end
