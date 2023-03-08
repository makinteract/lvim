-- Copilot (add also a way to toggle it on or off)
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.api.nvim_set_keymap("i", "<C-cr>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- Add a keybinding to toggle it on or off
lvim.builtin.which_key.mappings["uC"] = {
  name = "+Copilot",
  e = { "<cmd>Copilot enable<cr>", "Enable" },
  d = { "<cmd>Copilot disable<cr>", "Disable" },
}
