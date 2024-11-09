return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "VeryLazy" },
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
        }
    }
}
