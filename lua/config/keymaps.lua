-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- [[ Basic Keymaps ]]
vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Escape" })

--Search word under cursor
vim.keymap.set({ "n", "x" }, "gw", "*N", { desc = "Search word under cursor" })

-- HL as amplified versions of hjkl
vim.keymap.set({ "n", "x" }, "H", "0^") -- beginning of line
vim.keymap.set({ "n" }, "L", "$") --end of line
vim.keymap.set({ "x" }, "L", "g_") --end of line (without eol character)
vim.keymap.set({ "n", "x" }, "M", "%") --middle of line

-- map q: to nop in command mode
vim.keymap.set("c", "q:", "<nop>", { silent = true })

-- Toggle Explorer. Or usnig CTRL + SHIFT + E for two way toggle
local vscode = require("vscode")
vim.keymap.set("n", "<leader>e", function()
  vscode.action("workbench.view.explorer")
end, { desc = "Toggle Explorer" })

-- Find in Files (can be triggered by both <leader>/ and <leader>ff)
vim.keymap.set("n", "<leader>/", function()
  vscode.action("workbench.action.findInFiles")
end, { desc = "Find in Files" })

-- Quick Open Files (Ctrl+P)
vim.keymap.set("n", "<leader>ff", function()
  vscode.action("workbench.action.quickOpen")
end, { desc = "Quick Open Files" })

-- Rename Symbol
vim.keymap.set("n", "<leader>cr", function()
  vscode.call("editor.action.rename")
end, { desc = "Rename Symbol" })

-- Format Document
vim.keymap.set("n", "<leader>cf", function()
  vscode.call("editor.action.formatDocument")
end, { desc = "Format Document" })
