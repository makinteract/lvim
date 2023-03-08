local status_ok, hop = pcall(require, 'hop')

if not status_ok then
  vim.notify("hop not found!")
  return
end

-- Config
hop.setup(
  { keys = 'etovxqpdygfblzhckisuran' }
)

-- Keymappings
vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })

-- Which-key addition to category 'u' (Utils)
lvim.builtin.which_key.mappings['uh'] = { '<cmd>HopChar2<cr>', 'Hop2' }
