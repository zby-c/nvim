-- ui.lua - Better UI

function ZOpenConfigDir()
    local cfg_path = vim.fn.fnameescape(vim.fn.stdpath("config"))
    vim.fn.execute("lcd " .. cfg_path)
    print("Enjoy your config!")
end

return {
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        keys = {
            { "<Leader>p", "<Cmd>BufferLineTogglePin<CR>",            desc = "BufferLine toggle pin" },
            { "<Leader>x", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "BufferLine delete non-pinned buffers" },
            { "[b",        "<cmd>BufferLineCyclePrev<cr>",            desc = "BufferLine prev buffer" },
            { "]b",        "<cmd>BufferLineCycleNext<cr>",            desc = "BufferLine next buffer" },
            { "[B",        "<cmd>BufferLineMovePrev<cr>",             desc = "BufferLine move buffer prev" },
            { "]B",        "<cmd>BufferLineMoveNext<cr>",             desc = "BufferLine move buffer next" },
        },
        opts = {
            options = {
                diagnostics = "nvim_lsp",
                always_show_bufferline = false,
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Neo-tree",
                        highlight = "Directory",
                        text_align = "left",
                    }
                }
            }
        }
    },
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            options = {
                theme = "auto"
            }
        }
    },
    { "stevearc/dressing.nvim",  event = "VeryLazy" },
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
    },
    {
        "nvimdev/dashboard-nvim",
        lazy = false,
        opts = {
            theme = "hyper",
            config = {
                week_header = {
                    enable = true
                },
                shortcut = {
                    {
                        desc = " Config",
                        group = "String",
                        action = "lua ZOpenConfigDir()",
                        key = "C"
                    },
                    {
                        desc = " Plugin",
                        group = "Number",
                        action = "Lazy",
                        key = "P"
                    },
                    {
                        desc = "󰋗 Help",
                        group = "@variable",
                        action = "help nvim",
                        key = "H"
                    },
                    {
                        desc = " Check",
                        group = "DashboardMruTitle",
                        action = "checkhealth",
                        key = "X"
                    }
                },
                project = { limit = 5 },
                mru = { limit = 5 },
                footer = {
                    "Have fun in coding!   "
                }
            }
        },
        keys = {
            { "<Leader>d", "<Cmd>Dashboard<CR>", desc = "Dashboard" }
        },
        dependencies = { { 'nvim-tree/nvim-web-devicons' } }
    }
}
