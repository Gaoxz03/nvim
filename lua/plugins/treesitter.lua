return {{
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        require("nvim-treesitter").setup({
            ensure_installed = {"c", "cpp", "objc", "cuda", "cmake", "make", 
                                "python", 
                                "lua", "luadoc", "query",
                                "vim", "vimdoc", 
                                "javascript", "typescript", "html", "css", "scss", "vue", "tsx",
                                "json", "yaml", "toml",
                                "markdown", "markdown_inline", 
                                "bash", "diff", "gitcommit", "dockerfile", "regex", 
                                "asm", 
                                "matlab",
                                "rust", 
                                "go", "gomod", "gotmpl",
                                "verilog", "rust"
                            },
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