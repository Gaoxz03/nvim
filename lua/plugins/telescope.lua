-- Plugin Telescope
return {{
    'nvim-telescope/telescope.nvim',
    version = '*',
    lazy = false,
    dependencies = {'nvim-telescope/telescope.nvim'},
    config = function()
        require('telescope').setup {}
    end
}}
