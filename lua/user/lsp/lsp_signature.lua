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
