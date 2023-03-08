-- Toggle spell checker

vim.g.spell = false
vim.api.nvim_create_user_command('ToggleSpell',
  function()
    if not vim.g.spell then
      vim.g.spell = true
      vim.cmd("set spell")
    else
      vim.g.spell = false
      vim.cmd("set nospell")
    end
  end,
  { nargs = 0 })


-- Autoactivate it in some files
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.txt", "*.md" },
  -- enable wrap mode for selected files only
  command = "ToggleSpell",
})

-- Which-key addition to category 'u' (Utils)
lvim.builtin.which_key.mappings['us'] = { '<cmd>ToggleSpell<cr>', 'Toggle Spell' }
