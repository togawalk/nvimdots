vim.keymap.set("n", "<space>w", "<cmd> write <CR>", { desc = "Save" })
-- vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })

-- -- NvimTree
vim.keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle nvimtree" })
vim.keymap.set("n", "<leader>e", "<cmd> NvimTreeFocus <CR>", { desc = "Focus nvimtree" })

-- -- line numbers
vim.keymap.set("n", "<leader>rn", "<cmd> ToggleRelativeNumber <CR>", { desc = "Toggle relative number" })
