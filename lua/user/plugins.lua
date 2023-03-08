-- Additional Plugins
lvim.plugins = {
  {
    'rose-pine/neovim', -- theme
    as = 'rose-pine'
  },
  { 'phaazon/hop.nvim' },                             -- hop is similar to Avy
  {
    "windwp/nvim-spectre",                            -- spectre
    requires = "nvim-lua/plenary.nvim",               -- dependency
  },                                                  -- search and replace
  { "ray-x/lsp_signature.nvim" },                     -- function signature
  { "dhruvasagar/vim-open-url" },                     -- gB => open link uner cursor in Browser
  { "https://git.sr.ht/~whynothugo/lsp_lines.nvim" }, -- lsp lines for better diagnostics
  { "mrjones2014/nvim-ts-rainbow" },                  -- ts rainbow for matching parenthesis
  {
    -- ts playground
    "nvim-treesitter/playground",
    event = "BufRead",
  },
  { 'mbbill/undotree' }, -- undo tree
  {
    "junegunn/fzf.vim"   -- fzf
  },
  {
    "junegunn/fzf"           --fzf
  },
  { 'github/copilot.vim' },  -- copilot
  {
    'heavenshell/vim-jsdoc', -- JSdoc (requires lehre)
  }
}
