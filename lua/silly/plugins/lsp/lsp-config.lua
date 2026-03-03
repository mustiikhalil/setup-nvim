-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local keymap = vim.keymap -- for conciseness
-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- configure lua server (with special settings)
vim.lsp.enable("lua_ls")
vim.lsp.enable("bashls")
vim.lsp.enable("clangd")
vim.lsp.enable("gopls")
vim.lsp.enable("sourcekit")
vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP Actions',
    callback = function(args)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {noremap = true, silent = true})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {noremap = true, silent = true})
    end,
})

vim.lsp.enable("jsonls")
