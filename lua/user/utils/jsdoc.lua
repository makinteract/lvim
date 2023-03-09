-- JSdoc
-- A command to simplify the installation of JSdoc in the project folder
vim.api.nvim_create_user_command('JsDocInstall',
  function()
    io.popen('npm install --save-dev lehre')
  end,
  { nargs = 0 })

vim.g.jsdoc_lehre_path = "./node_modules/.bin/lehre"

-- Add the binding

-- Add a keybinding to toggle it on or off
lvim.builtin.which_key.mappings["uJ"] = {
  name = "+JsDoc",
  e = { "<cmd>JsDocInstall<cr>", "Install" },
  d = { "<cmd>JsDoc<cr>", "Create doc" },
}
