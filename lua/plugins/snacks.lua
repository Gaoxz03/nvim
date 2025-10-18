-- Plugin Telescope
return {{
    'folke/snacks.nvim',
    lazy = false,
    config = function()
        local map = function(key, func, desc)
            vim.keymap.set('n', key, func, {
                desc = desc
            })
        end
        -- all key maps for snacks picker
        -- ff to find the file 
        -- fc to find the content in file
        -- fh to find in help
        map('<leader>ff', Snacks.picker.smart, 'Smart find file')
        map('<leader>fc', Snacks.picker.grep, 'Find content')
        map('<leader>fh', function()
            Snacks.picker.help{ layout = 'dropdown' }
        end, 'Find in help')
        map('<leader>fk', function()
            Snacks.picker.keymaps { layout = 'dropdown' }
        end, 'Find keymap' )
    end
}}
