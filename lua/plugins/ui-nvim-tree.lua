-- nvim-tree
return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup({
                git = {
                    enable = true,
                },
                filters = {
                    dotfiles = false,
                },
                view = {
                    side = "left",
                    number = false,
                    relativenumber = false,
                    signcolumn = "yes",
                    width = 30,
                },
                renderer = {
                    group_empty = true,
               }
            })
        end,
    }
}