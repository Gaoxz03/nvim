-- Ctrl + n open file tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", {})

-- Ctrl + h, l change tabs
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", {})
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", {})

-- <space> + tc close tabs
vim.keymap.set("n", "<leader>tc", function() Snacks.bufdelete() end, { desc = "Delete buffer"})

-- lsp keymap
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspAttach", { clear = true }),
    callback = function(ev)
        local buf = ev.buf
        local map = function(mode, lhs, rhs, desc)
            vim.keymap.set(mode, lhs, rhs, { buffer = buf, desc = desc })
        end
        map("n", "K", vim.lsp.buf.hover, "Hover")
        map("n", "gd", vim.lsp.buf.definition, "Definition")
        map("n", "gr", vim.lsp.buf.references, "Reference")
        map("n", "gi", vim.lsp.buf.implementation, "Implementation")
        map("n", "gt", vim.lsp.buf.type_definition, "Type definition")
        map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
        map("n", "x", vim.lsp.buf.code_action, "Code action")
        map("n", "<leader>cf", function() vim.lsp.buf.format({ async = true }) end , "Format buffer")
        map("n", "<leader>[d", function() vim.diagnostic.jump({ count = -1, float = true}) end , "Prev diagnostic")
        map("n", "<leader>[d", function() vim.diagnostic.jump({ count = -1, float = true}) end , "Next diagnostic")
    end,
})

-- Resize file explorer size
-- <space> + th to reduce 
-- <space> + tj to expand  
vim.keymap.set("n", "<leader>th", ":NvimTreeResize -10<CR>", { desc = "Tree shrink"})
vim.keymap.set("n", "<leader>tj", ":NvimTreeResize +10<CR>", { desc = "Tree expand"})

-- Snacks.picker keymap details see ./lua/plugins/snacks.lua
-- <spcae> + ff to find the file 
-- <space> + fc to find the content in file
-- <space> + fh to find Find in help
-- <space> + fk to Find Keymaps
-- <space> + fw to Grep Word
-- <space> + fb to find buffers
-- <space> + fs to find LSP symbols
-- <space> + fd to find diagnostics
-- <space> + fR to find LSP References

-- <space> + na to Generate annotation using neogen
vim.keymap.set("n", "<leader>na", function() require("neogen").generate({}) end, { desc = "Generate annotation" })


vim.keymap.set("n", "<leader>ff", function() Snacks.picker.smart() end, { desc = "Smart Find File"})
vim.keymap.set("n", "<leader>fc", function() Snacks.picker.grep() end, { desc = "Find Content"})
vim.keymap.set("n", "<leader>fh", function() Snacks.picker.help{layout = 'dropdown'} end , { desc = "Find in help"})
vim.keymap.set("n", "<leader>fk", function() Snacks.picker.keymaps{layout = 'dropdown'} end , { desc = "Find Keymaps"})
vim.keymap.set("n", "<leader>fw", function() Snacks.picker.grep_word() end, { desc = "Grep Word"})
vim.keymap.set("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Find Buffers"})
vim.keymap.set("n", "<leader>fs", function() Snacks.picker.lsp_symbols() end, { desc = "Find LSP Symbols"})
vim.keymap.set("n", "<leader>fd", function() Snacks.picker.diagnostics() end, { desc = "Find Diagnostics"})
vim.keymap.set("n", "<leader>fR", function() Snacks.picker.lsp_references() end, { desc = "Find LSP References"})
