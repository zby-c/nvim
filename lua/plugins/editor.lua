-- editor.lua - UI in the editor
return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "VeryLazy", "BufReadPost", "BufNewFile" },
        lazy = vim.fn.argc(-1) == 0,
        opts = {
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = {
                -- Install highlights
                "c",
                "cpp",
                "cmake",
                "lua",
                "luadoc",
                "vim",
                "vimdoc",
                "json",
                "toml",
                "yaml",
                "xml",
                "regex",
                "markdown",
                "markdown_inline",
                "html",
                "css",
                "ini",
                "bash",
                "diff",
                "http",
                "make",
                "json5",
                "jsonc",
                "ninja",
                "printf"
            }
        }
    },
    { "lewis6991/gitsigns.nvim", event = { "BufReadPost", "BufNewFile" } },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
        event = { "BufReadPost", "BufNewFile" },
    }
}
