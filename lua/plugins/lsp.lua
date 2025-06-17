return{
	-- nvim-lspconfig
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			-- typescript
			lspconfig["ts_ls"].setup({})
			-- lua
			lspconfig["lua_ls"].setup({})
			-- c & cpp
			lspconfig["clangd"].setup({})
			-- assembly
			lspconfig["asm_lsp"].setup({})
			-- cmake
			lspconfig["cmake"].setup({})
			--rust
			lspconfig["rust_analyzer"].setup({})
			-- python
			lspconfig["pyright"].setup({})
			-- markdown
			lspconfig["marksman"].setup({})
			-- json
			lspconfig["jsonls"].setup({})
			-- html
			lspconfig["html"].setup({})
			-- css
			lspconfig["cssls"].setup({})
			-- yaml
			lspconfig["yamlls"].setup({})
			-- toml
			lspconfig["taplo"].setup({})
			--typst
			lspconfig["tinymist"].setup({})
			--verilog
			lspconfig["svls"].setup({})
			--matlab
			lspconfig["matlab_ls"].setup({})
		end
	},

	-- mason lspconfig
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"ts_ls",
					"lua_ls",
					"clangd",
					"asm_lsp",
					"cmake",
					"rust_analyzer",
					"pyright",
					"marksman",
					"jsonls",
					"html",
					"cssls",
					"yamlls",
					"taplo",
					"tinymist",
					"svls",
					"matlab_ls",
				},
			})
		end
	},

	-- mason which install the lsp
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end
	}
}
