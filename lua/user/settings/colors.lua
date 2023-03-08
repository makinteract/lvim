local colortheme = "rose-pine"

local status_ok, theme_extension = pcall(require, colortheme)

if not status_ok then
  vim.notify("colortheme " .. colortheme .. " not found!")
  return
end

theme_extension.setup()
lvim.colorscheme = colortheme
