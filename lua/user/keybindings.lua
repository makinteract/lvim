-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- Other keybindings and whichkey
-- double space to go to :
lvim.builtin.which_key.mappings[' '] = { ':', 'Command', silent = false }

-- Remove from lvim default
lvim.builtin.which_key.mappings['s'].b = nil

-- Adding util to create and delete a scratch buffer
lvim.builtin.which_key.mappings['bs'] = { '<cmd>enew<cr>', 'Scratch' }
lvim.builtin.which_key.mappings['bk'] = { '<cmd>bd<cr>', 'Kill buffer' }
lvim.builtin.which_key.mappings['bK'] = { '<cmd>bd!<cr>', 'Kill buffer-no save' }

-- Utils
lvim.builtin.which_key.mappings["u"] = {
  name = "+Utils",
  x = {
    name = "+Split",
    h = { "<cmd>:split<cr>", "Horizontal split" },
    v = { "<cmd>:vsplit<cr>", "Vertical split" },
  }
}
