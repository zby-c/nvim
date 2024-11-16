-- ui.lua - Better ui
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
    { "stevearc/dressing.nvim", event = "VeryLazy" }
}
