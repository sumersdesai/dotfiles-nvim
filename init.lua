-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
  -- Set standard starting scale factor
  vim.g.neovide_scale_factor = 1.0

  -- Create a small helper function to safely change text scaling
  local change_scale = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end

  -- Keybindings: Zoom in / Zoom out instantly using the keyboard
  vim.keymap.set("n", "<C-=>", function()
    change_scale(1.1)
  end) -- Ctrl + = to zoom in
  vim.keymap.set("n", "<C-->", function()
    change_scale(0.9)
  end) -- Ctrl + - to zoom out

  -- Keybindings: Zoom in / Zoom out instantly using the mouse wheel (Optional)
  vim.keymap.set({ "n", "v" }, "<C-ScrollWheelUp>", function()
    change_scale(1.1)
  end)
  vim.keymap.set({ "n", "v" }, "<C-ScrollWheelDown>", function()
    change_scale(0.9)
  end)

  -- 📋 FORCE THE SYSTEM CLIPBOARD FOR COPY/PASTE
  vim.opt.clipboard = "unnamedplus" -- Force sync with system clipboard

  -- Map traditional Ctrl+C & Ctrl+V for Neovide context
  vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to System Clipboard" })
  vim.keymap.set({ "n", "v", "i" }, "<C-v>", function()
    vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
  end, { desc = "Paste from System Clipboard" })
end
