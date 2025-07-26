return {{
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = {'rafamadriz/friendly-snippets'},

    -- use a release tag to download pre-built binaries
    version = '1.*',
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
        -- 'super-tab' for mappings similar to vscode (tab to accept)
        -- 'enter' for enter to accept
        -- 'none' for no mappings
        --
        -- All presets have the following mappings:
        -- C-space: Open menu or open docs if already open
        -- C-n/C-p or Up/Down: Select next/previous item
        -- C-e: Hide menu
        -- C-k: Toggle signature help (if signature.enabled = true)
        --
        -- See :h blink-cmp-config-keymap for defining your own keymap
        cmdline = {
            keymap = {
                -- 选择并接受预选择的第一个
                ["<CR>"] = {"select_and_accept", "fallback"}
            },
            completion = {
                -- 不预选第一个项目，选中后自动插入该项目文本
                list = {
                    selection = {
                        preselect = false,
                        auto_insert = false
                    }
                },
                -- 自动显示补全窗口，仅在输入命令时显示菜单，而搜索或使用其他输入菜单时则不显示
                menu = {
                    auto_show = function(ctx)
                        return vim.fn.getcmdtype() == ":"
                        -- enable for inputs as well, with:
                        -- or vim.fn.getcmdtype() == '@'
                    end
                },
                -- 不在当前行上显示所选项目的预览
                ghost_text = {
                    enabled = false
                }
            }
        },
        keymap = {
            preset = 'none',

            ['<UP>'] = {'select_prev', 'fallback'},
            ['<Down>'] = {'select_next', 'fallback'},
            ['<C-space>'] = {'show', 'show_documentation', 'hide_documentation'},
            ['<cr>'] = {'select_and_accept', 'fallback'},
            ['<C-j>'] = {'scroll_documentation_up', 'fallback'},
            ['<C-k>'] = {'scroll_documentation_down', 'fallback'}
        },

        appearance = {
            -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            -- Adjusts spacing to ensure icons are aligned
            nerd_font_variant = 'mono'
        },

        -- (Default) Only show the documentation popup when manually triggered
        completion = {
            keyword = {
                range = "full"
            },
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 50
            },
            list = {
                selection = {
                    preselect = false,
                    auto_insert = false
                }
            }
        },

        -- Default list of enabled providers defined so that you can extend it
        -- elsewhere in your config, without redefining it, due to `opts_extend`
        sources = {
            default = {'buffer', 'lsp', 'path', 'snippets'},

            provider = {
                buffer = {
                    score_offset = 5
                },
                lsp = {
                    score_offset = 4
                },
                path = {
                    score_offset = 3
                },
                snippets = {
                    score_offset = 2
                }
            }
        },

        -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
        -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
        -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
        --
        -- See the fuzzy documentation for more information
        fuzzy = {
            implementation = "prefer_rust_with_warning"
        }
    },
    opts_extend = {"sources.default"}
}}
