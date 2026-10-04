-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.clipboard = "unnamedplus"

if vim.g.neovide then
  vim.g.neovide_opacity = 0.80 -- Lower = more clear blur, Higher = more solid dark blue
end
