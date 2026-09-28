-- Plugin Telescope
return {{
    'folke/snacks.nvim',
    lazy = false,
    opts = {
        bigfile = {
            enabled = true
        },
        quickfile = {
            enabled = true
        },
        indent = {
            enabled = true
        },
        input = {
            enabled = true
        },
        notifier = {
            enabled = false
        },
        picker = {
            enabled = true
        }
    },
}}
