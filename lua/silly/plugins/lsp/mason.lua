local status, mason = pcall(require, "mason")
if not status then
  return
end

local status_mason_lsp, mason_lsp = pcall(require, "mason-lspconfig")
if not status_mason_lsp then
  return
end

mason.setup()

mason_lsp.setup({
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "lua_ls",
    "emmet_ls",
    "bashls",
    "csharp_ls",
    "clangd",
    "gopls",
    "eslint",
    "jsonls",
    "swift_mesonls"
  },
  -- auto-install configured servers (with lspconfig)
  automatic_installation = true, -- not the same as ensure_installed
})
