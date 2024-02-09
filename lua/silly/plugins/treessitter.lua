local status, configs = pcall(require, "nvim-treesitter.configs")

if not status then
  print("Error installing treesitter")
  return
end

configs.setup({
  ensure_installed = {
    "c",
    "lua",
    "swift",
    "go",
    "cpp",
    "c_sharp",
    "typescript",
    "json5"
  },
  sync_install = false,
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  -- auto install above language parsers
  auto_install = true,
})

