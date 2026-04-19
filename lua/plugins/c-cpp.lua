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
        local osys = require("cmake-tools.osys")
        require("cmake-tools").setup({
            cmake_command = "cmake",
            ctest_command = "ctest",
            ctest_show_labels = false, -- also show labels in the test picker
            cmake_build_preset = true,
            cmake_build_type = "Debug", -- Default build type as Debug
            -- EXPORT COMPILE COMMANDS as default
            cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
            
            -- Specific cmake build directory 
            cmake_build_directory = function()
                if osys.iswin32 then
                    return "out\\${variant:buildType}"
                else
                    return "out/{variant:buildType}"
                end
            end,
        })
    end,
    keys = {
        { "<leader>cg", "<cmd>CMakeGenerate<cr>", desc = "Generate" },
        { "<leader>cb", "<cmd>CMakeBuild<cr>", desc = "Build" },
        { "<leader>cr", "<cmd>CMakeRun<cr>", desc = "Run" },
        { "<leader>cd", "<cmd>CMakeDebug<cr>", desc = "Debug" },
    }
}}
