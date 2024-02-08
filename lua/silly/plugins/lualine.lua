local status, lualine = pcall(require, "lualine")

if not status then
  print("lualine not installed")
  return
end

local nightfly = require("lualine.themes.nightfly")

lualine.setup({
  option = {
    theme = nightfly 
  }
})
