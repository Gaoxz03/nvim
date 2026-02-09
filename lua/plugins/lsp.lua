return { -- nvim-lspconfig
-- mason lspconfig
{
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {"ts_ls", "lua_ls", "clangd", "asm_lsp", "cmake", "rust_analyzer", "pyright", "marksman",
                                "jsonls", "html", "cssls", "yamlls", "taplo", "tinymist", "verible", "matlab_ls", "gopls"}
        })
    end
}, -- mason which install the lsp
{
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
    end
}}
