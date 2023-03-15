local status_ok, _ = pcall(require, 'lsp_signature')

if not status_ok then
  vim.notify("lsp_signature not found!")
  return
end

-- Config
require "lsp_signature".setup({
  bind = true, -- This is mandatory, otherwise border config won't get registered.
  handler_opts = {
    border = "rounded"
  }
})


-- Which-key addition to category 'u' (User)
lvim.builtin.which_key.mappings['up'] = { '<cmd>lua require("lsp_signature").toggle_float_win()<cr>',
  'Toggle LSP signature' }
