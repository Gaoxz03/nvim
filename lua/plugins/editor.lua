return { -- auto-pairs
{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
}, -- rainbow-delimiters for rainbow brackets
{
    "HiPhish/rainbow-delimiters.nvim",
    config = function()
        require("rainbow-delimiters.setup").setup({
            strategy = {
                [""] = require("rainbow-delimiters.strategy.global")
            },

            highlight = {"RainbowDelimiterBlue", "RainbowDelimiterViolet", "RainbowDelimiterRed",
                         "RainbowDelimiterYellow", "RainbowDelimiterGreen", "RainbowDelimiterOrange",
                         "RainbowDelimiterCyan"}
        })
    end
}, -- rainbow for tabs
{
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    dependencies = {"TheGLander/indent-rainbowline.nvim"},
    opts = function(_, opts)
        return require("indent-rainbowline").make_opts(opts)
    end
}, -- neogen to generate doxygen
{
    "danymat/neogen",
    dependencies = {"nvim-treesitter/nvim-treesitter"},
    cmd = {"Neogen"},

    config = function()
        require("neogen").setup({
            enabled = true,
            languages = {
                ['cpp.doxygen'] = require('neogen.configurations.cpp'),
                ['c.doxygen'] = require('neogen.configurations.c'),
                ['python.reST'] = require('neogen.configurations.python'),
                ['rust.rustdoc'] = require('neogen.configurations.rust')
            }
        })
    end
}, -- trouble to located errors and warnings
{
    "folke/trouble.nvim",
    cmd = {"Trouble"},
    opts = {

        modes = {
            test = {
                mode = "diagnostics",
                preview = {
                    type = "split",
                    relative = "win",
                    position = "right",
                    size = 0.3
                }
            },
            mydiags = {
                mode = "diagnostics", -- inherit from diagnostics mode
                filter = {
                    any = {
                        buf = 0, -- current buffer
                        {
                            severity = vim.diagnostic.severity.ERROR, -- errors only
                            -- limit to files in the current project
                            function(item)
                                return item.filename:find((vim.loop or vim.uv).cwd(), 1, true)
                            end
                        }
                    }
                }
            }
        }
    },
    keys = {{
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)"
    }, {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)"
    }, {
        "<leader>cs",
        "<cmd>Trouble symbols toggle<cr>",
        desc = "Symbols (Trouble)"
    }, {
        "<leader>cS",
        "<cmd>Trouble lsp toggle<cr>",
        desc = "LSP references/definitions/... (Trouble)"
    }, {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)"
    }, {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)"
    }, {
        "[q",
        function()
            if require("trouble").is_open() then
                require("trouble").prev({
                    skip_groups = true,
                    jump = true
                })
            else
                local ok, err = pcall(vim.cmd.cprev)
                if not ok then
                    vim.notify(err, vim.log.levels.ERROR)
                end
            end
        end,
        desc = "Previous Trouble/Quickfix Item"
    }, {
        "]q",
        function()
            if require("trouble").is_open() then
                require("trouble").next({
                    skip_groups = true,
                    jump = true
                })
            else
                local ok, err = pcall(vim.cmd.cnext)
                if not ok then
                    vim.notify(err, vim.log.levels.ERROR)
                end
            end
        end,
        desc = "Next Trouble/Quickfix Item"
    }}
}}
