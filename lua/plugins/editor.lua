return {
	-- auto-pairs
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
			-- use opts = {} for passing setup options
			-- this is equivalent to setup({}) function
	},

	-- rainbow-delimiters for rainbow brackets
	{
    "HiPhish/rainbow-delimiters.nvim",
    config = function ()
      require("rainbow-delimiters.setup").setup({
        highlight = {
          "RainbowDelimiterBlue",
          "RainbowDelimiterViolet",
          "RainbowDelimiterRed",
          "RainbowDelimiterYellow",
          "RainbowDelimiterGreen",
          "RainbowDelimiterOrange",
          "RainbowDelimiterCyan",
        }
      })
    end
  },

	-- rainbow for tabs
  {
	  "lukas-reineke/indent-blankline.nvim",
  	dependencies = {
		  "TheGLander/indent-rainbowline.nvim",
	  },
	  config = function()
		  opts = {}
		  local highlight = {
			  "RainbowBlue",
		  	"RainbowViolet",
	  		"RainbowRed",
  			"RainbowYellow",
	  		"RainbowGreen",
  			"RainbowOrange",
			  "RainbowCyan",
		  }
		  local hooks = require("ibl.hooks")
		-- create the highlight groups in the highlight setup hook, so they are reset
		-- every time the colorscheme changes
	  	hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  			vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
  			vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
  			vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
  			vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
			  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
		  	vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
	  		vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
  		end)

		  require("ibl").setup({ indent = { highlight = highlight } })
	  end,
  },

	-- neogen to generate doxygen
	{
    "danymat/neogen",
    config = function ()
      require("neogen").setup({})
    end
  },

	-- trouble to located errors and warnings
	{
		"folke/trouble.nvim",
		cmd = { "Trouble" },
		opts = {
			modes = {
				lsp = {
					win = { position = "right" },
				},
			},
		},
		keys = {
			{ "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
			{ "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
			{ "<leader>cs", "<cmd>Trouble symbols toggle<cr>", desc = "Symbols (Trouble)" },
			{ "<leader>cS", "<cmd>Trouble lsp toggle<cr>", desc = "LSP references/definitions/... (Trouble)" },
			{ "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
			{ "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
			{
				"[q",
				function()
					if require("trouble").is_open() then
						require("trouble").prev({ skip_groups = true, jump = true })
					else
						local ok, err = pcall(vim.cmd.cprev)
						if not ok then
							vim.notify(err, vim.log.levels.ERROR)
						end
					end
				end,
				desc = "Previous Trouble/Quickfix Item",
			},
			{
				"]q",
				function()
					if require("trouble").is_open() then
						require("trouble").next({ skip_groups = true, jump = true })
					else
						local ok, err = pcall(vim.cmd.cnext)
						if not ok then
							vim.notify(err, vim.log.levels.ERROR)
						end
					end
				end,
				desc = "Next Trouble/Quickfix Item",
			},
		},
	}
}
