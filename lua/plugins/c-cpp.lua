return{
	-- clangd format to format c and cpp files
	{
		"rhysd/vim-clang-format",
		conig = function ()
			require("vim-clang-format").setup()	
		end
	},

	-- cmake build tools to build cmake project in neovim
	{
		'Civitasv/cmake-tools.nvim',
		lazy = false,
		config = function()
			require("cmake-tools").setup({})
		end
	}
}
