local status_ok, _ = pcall(require, 'lsp_lines')

if not status_ok then
  vim.notify("lsp_lines not found!")
  return
end

-- Config
require "lsp_lines".setup()

-- Toggle lines on/off with C-l - Key binding for this feature
vim.keymap.set(
  "",
  "<C-l>",
  require("lsp_lines").toggle,
  { desc = "Toggle lsp_lines" }
)

-- Which-key addition to category 'u' (User)
lvim.builtin.which_key.mappings['ul'] = { '<cmd>lua require("lsp_lines").toggle()<cr>', 'Toggle LSP lines' }
