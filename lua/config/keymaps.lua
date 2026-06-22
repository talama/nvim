-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, opts)
end

-- Move end/beginning line
map("n", "H", "^", { desc = "Beginning of line" })
map("n", "L", "$", { desc = "End of line" })

-- Change split orientation
map("n", "<leader>tv", "<C-w>t<C-w>K")
map("n", "<leader>th", "<C-w>t<C-w>H")

-- Tab Navigation
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })

-- comments
map({ "n", "v" }, "<leader>/", "gcc", { remap = true, desc = "Comment line" })
map({ "n", "v" }, "<leader>.", "gcb", { remap = true, desc = "Comment block" })

-- window split
map("n", "<leader>vv", "<C-W>v", { desc = "Split window right", remap = true })
