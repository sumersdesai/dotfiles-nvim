-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap.set

-------------------------------------------------------------------------------
-- 1. Escape Shortcut (Insert Mode)
-------------------------------------------------------------------------------
keymap("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-------------------------------------------------------------------------------
-- 2. Bracket Auto-Closing Snippets (Cursor placed inside)
-------------------------------------------------------------------------------
keymap("i", "uu", "{}<Left>", { desc = "Insert curly braces" })
keymap("i", "jj", "()<Left>", { desc = "Insert parentheses" })
keymap("i", "mm", "[]<Left>", { desc = "Insert square brackets" })

-------------------------------------------------------------------------------
-- 3. Alt-Based Custom Numpad & Symbols (Insert & Normal Modes)
-------------------------------------------------------------------------------
local numpad = {
  ["<A-a>"] = "0",
  ["<A-s>"] = "1",
  ["<A-d>"] = "2",
  ["<A-f>"] = "3",
  ["<A-g>"] = "4",
  ["<A-q>"] = "5",
  ["<A-w>"] = "6",
  ["<A-e>"] = "7",
  ["<A-r>"] = "8",
  ["<A-t>"] = "9",
  ["<A-p>"] = "#",
}

for lhs, rhs in pairs(numpad) do
  -- Insert mode: typing the key inserts the number/symbol
  keymap("i", lhs, rhs, { desc = "Numpad/Symbol shortcut" })
end

-------------------------------------------------------------------------------
-- 4. Jump to End of Line (Alt + l)
-------------------------------------------------------------------------------
-- In Normal Mode: jumps cursor to end of line
keymap("n", "<A-l>", "$", { desc = "Go to end of line" })

-- In Insert Mode: moves cursor to end of line while staying in insert mode
keymap("i", "<A-l>", "<End>", { desc = "Go to end of line" })
