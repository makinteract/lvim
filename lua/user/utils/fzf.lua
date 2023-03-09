vim.api.nvim_create_user_command('FilesCWD',
  function()
    vim.cmd(":Files " .. vim.fn.expand('%:p:h'))
  end,
  { nargs = 0 })

-- Keybinding
vim.api.nvim_set_keymap("", "<C-f>", ":Files<CR>", { silent = true })
vim.api.nvim_set_keymap("", "<S-f>", ":Rg<CR>", { silent = true })

-- Which-key addition to category 'u' (Utils)
lvim.builtin.which_key.mappings['.'] = { '<cmd>FilesCWD<cr>', 'Search here' }
lvim.builtin.which_key.mappings[','] = { '<cmd>Rg<cr>', 'Search here' }
