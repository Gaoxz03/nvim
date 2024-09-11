return{
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "tsserver",
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
                    "matlab_ls",
                    -- "hdl_checker"
                },
            })
        end
    }
}
