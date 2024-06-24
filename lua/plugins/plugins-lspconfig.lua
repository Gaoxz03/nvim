return{
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			-- typescript
			lspconfig["tsserver"].setup({})
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
			-- matlab
			lspconfig["matlab_ls"].setup({})
			-- vhd
			lspconfig["hdl_checker"].setup({})
		end
	}
}
