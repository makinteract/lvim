-- Copilot (add also a way to toggle it on or off)
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.api.nvim_set_keymap("i", "<C-Right>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
