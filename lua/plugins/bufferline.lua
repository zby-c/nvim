return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        options = {
            diagnostics = "nvim_lsp",
            offsets = { {
                filetype = "neo-tree",
                text = "Neotree",
                highlight = "Directory",
                text_align = "left"
            } }
        }
    },
    event = "BufEnter",
    keys = {
        { "<tab>n",     "<cmd>BufferLineCycleNext<cr>",       desc = "Buffer Cycle Next" },
        { "<tab>N",     "<cmd>BufferLineCyclePrev<cr>",       desc = "Buffer Cycle Prev" },
        { "<tab>s",     "<cmd>BufferLineSortByTabs<cr>",      desc = "Buffer Sort By Tabs" },
        { "<tab>S",     "<cmd>BufferLineSortByExtension<cr>", desc = "Buffer Sort By Extension" },
        { "<tab><C-s>", "<cmd>BufferLineSortByDirectory<cr>", desc = "Buffer Sort By Directory" },
        { "<tab>c",     "<cmd>BufferLinePickClose<cr>",       desc = "Buffer Pick Close" },
        { "<tab>p",     "<cmd>BufferLinePick<cr>",            desc = "Buffer Pick" }
    }
}
