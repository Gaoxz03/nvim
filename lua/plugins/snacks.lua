-- Plugin Telescope
return {{
    'folke/snacks.nvim',
    lazy = false,
    opts = {
        bigfile = {
            enable = true
        },
        quickfile = {
            enable = true
        },
        indent = {
            enable = true
        },
        input = {
            enable = true
        },
        notifier = {
            enable = false
        },
        picker = {
            enable = true
        }
    },
}}
