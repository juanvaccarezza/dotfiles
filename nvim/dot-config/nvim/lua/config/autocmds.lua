-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd("set spelllang=es,en")
vim.api.nvim_set_hl(0, "ColorColumn", { link = "CursorLine" })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "quarto", "md" },
  callback = function()
    vim.opt_local.conceallevel = 0 -- 0 = muestra todo, 2 = oculta todo
  end,
})
