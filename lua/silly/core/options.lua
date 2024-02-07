local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true


-- tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Line wrapping

opt.wrap = false

-- search settings

opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = false 

-- appearance
opt.termguicolors = true
-- opt.background = "dark"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- Split windows

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
