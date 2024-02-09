local status, xcode = pcall(require, "xcodebuild")

if not status then
  print("Error installing xcodebuild")
  print()
  return
end

xcode.setup({
  code_coverage = {
    enabled = true,
  },
})
