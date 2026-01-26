return { -- clangd format to format c and cpp files
{
    "rhysd/vim-clang-format",
    conig = function()
        require("vim-clang-format").setup()
    end
}, -- cmake build tools to build cmake project in neovim
{
    'Civitasv/cmake-tools.nvim',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("cmake-tools").setup({
            cmake_build_directory = "build",
            cmake_build_type = "Debug",
            cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" }
        })
    end,
    keys = {
        { "<leader>cg", "<cmd>CMakeGenerate<cr>", desc = "Generate" },
        { "<leader>cb", "<cmd>CMakeBuild<cr>", desc = "Build" },
        { "<leader>cr", "<cmd>CMakeRun<cr>", desc = "Run" },
        { "<leader>cd", "<cmd>CMakeDebug<cr>", desc = "Debug" },
    }
}}
