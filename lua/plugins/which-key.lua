return {{
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        presets = "classic",
        delay = 300,
        win = { border = "rounded" },
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({
                    global = false
                })
            end,
            desc = "Buffer Local Keymaps (which-key)"
        }
    }
}}
