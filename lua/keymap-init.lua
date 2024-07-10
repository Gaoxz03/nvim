-- Ctrl + n open file tree
vim.keymap.set("n","<C-n>", ":NvimTreeToggle<CR>",opt)

-- Ctrl + h, l change file
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- Ctrl + F4 close tabs
vim.keymap.set("n", "<C-F4>", ":BufferLinePickClose<CR>", {noremap = true, silent = true})

-- lsp keymap
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- telescope keymap
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opt)
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opt)
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opt)

-- ctrl + f search
vim.keymap.set("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<CR>", opt)

-- ctrl + t open terminal
vim.keymap.set("n", "<C-t>", ":ToggleTerm<CR>", opt)

