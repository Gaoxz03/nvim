-- Ctrl + n open file tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", opt)

-- Ctrl + h, l change file
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- Ctrl + F4 close tabs
vim.keymap.set("n", "<C-F4>", ":BufferLinePickClose<CR>", {
    noremap = true,
    silent = true
})

-- lsp keymap
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- Resize file explorer size
-- Ctrl + Alt + Shift + <- to reduce 
-- Ctrl + Alt + Shift + -> to expand  
vim.keymap.set("n", "<C-A-S-Left>", ":NvimTreeResize -10<CR>", opt)
vim.keymap.set("n", "<C-A-S-Right>", ":NvimTreeResize +10<CR>", opt)

-- Snacks.picker keymap details see ./lua/plugins/snacks.lua
-- <spcae> + ff to find the file 
-- <space> + fc to find the content in file