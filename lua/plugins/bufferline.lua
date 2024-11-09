return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        options = {
            diagnostics = "nvim_lsp",
            offsets = { {
                filetype = "neo-tree",
                text = "Neo-Tree",
                highlight = "Directory",
                text_align = "left"
            } }
        }
    },
    event = "BufEnter",
    keys = {
        { "<Tab>",     "<Cmd>BufferLineCycleNext<CR>",  desc = "Buffer Cycle Next" },
        { "<Leader>s", "<Cmd>BufferLineSortByTabs<CR>", desc = "Buffer Sort By Tabs" },
        { "<Leader>c", "<Cmd>BufferLinePickClose<CR>",  desc = "Buffer Pick Close" },
        { "<Leader>p", "<Cmd>BufferLinePick<CR>",       desc = "Buffer Pick" }
    }
}
