local status, toggleterm = pcall(require, 'toggleterm')

if not status then
  print("Toggleterm not installed")
  return
end

toggleterm.setup({
  size = 55,
  open_mapping = [[<c-\>]],
  direction = 'vertical',
})

