-- Plugin Bufferline Config
return{
    {
        "akinsho/bufferline.nvim",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("bufferline").setup({
                options = {
                    offsets = {
                        {
                            filetype = "NvimTree",
                            text = "NvimTree",
                            highlight = "Directory",
                            text_align = "left",
                            separator = true
                        }
                    }
                }
            })
        end
    }
}
