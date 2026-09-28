return {{
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        require("nvim-treesitter").install({
            "c", "cpp", "objc", "cuda", "cmake", "make", 
            "python", 
            "lua", "luadoc", "query",
            "vim", "vimdoc", 
            "javascript", "typescript", "html", "css", "scss", "tsx",
            "json", "yaml", "toml",
            "markdown", "markdown_inline", 
            "bash", "diff", "gitcommit", "dockerfile", "regex", 
            "asm", 
            "matlab",
            "rust", 
            "go", "gomod", "gotmpl", "gowork",
            "systemverilog",
            "typst",
        })
    end
}}