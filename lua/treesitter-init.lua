vim.treesitter.language.register("javascript", "javascriptreact")
vim.treesitter.language.register("tsx", "typescriptreact")
vim.treesitter.language.register("bash", "sh")
vim.treesitter.language.register("systemverilog", { "v", "verilog", "sv" })
vim.treesitter.language.register("objc", "objcpp")
vim.treesitter.language.register("asm", { "nasm", "masm", "tiasm" })

local ts_indent_filetypes = {
    "c", "cpp", "objc", "objcpp", "cuda", "cmake",
    "lua", "vim", "query", "python", "rust", "go", "gomod", "gowork", "gotmpl",
    "javascript", "javascriptreact", "typescript", "typescriptreact", "tsx",
    "html", "css", "scss", "json", "yaml", "toml", "markdown",
    "typst", "verilog", "systemverilog", "asm", "bash", "gitcommit", "dockerfile", "make",
}

vim.api.nvim_create_autocmd("FileType", {
    group = vim.api.nvim_create_augroup("UserTreesitter", { clear = true }),
    callback = function(ev)
        if not pcall(vim.treesitter.start, ev.buf) then
            return
        end

        vim.wo.foldmethod = "expr"
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"

        if vim.tbl_contains(ts_indent_filetypes, ev.match) then
            pcall(function()
                vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end)
        end
    end,
})
