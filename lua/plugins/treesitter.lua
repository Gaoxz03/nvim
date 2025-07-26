return {{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {"c", "cpp", "python", "lua", "vim", "vimdoc", "javascript", "typescript", "html", "css",
                                "json", "yaml", "toml", "markdown", "bash", "asm", "matlab", "cmake", "make", "vue",
                                "verilog", "rust"},
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
            indent = {
                enable = true
            }
        })
    end
}}
