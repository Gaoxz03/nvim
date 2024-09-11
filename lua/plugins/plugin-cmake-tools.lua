return{
    {
        'Civitasv/cmake-tools.nvim',
        lazy = false,
        config = function()
          require("cmake-tools").setup({})
        end
    }
}
