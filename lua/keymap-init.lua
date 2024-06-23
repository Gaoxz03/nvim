-- Alt + m open file tree
vim.keymap.set("n","<A-m>", ":NvimTreeToggle<CR>",opt)

-- Ctrl + h, l change file
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
