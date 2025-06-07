return{
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "ts_ls",
                    "lua_ls",
                    "clangd",
                    "asm_lsp",
                    "cmake",
                    "rust_analyzer",
                    "pyright",
                    "marksman",
                    "jsonls",
                    "html",
                    "cssls",
                    "yamlls",
                    "taplo",
                    "tinymist",
                    "svls",
                },
            })
        end
    }
}
