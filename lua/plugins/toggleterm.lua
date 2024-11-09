return {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    opts = {
        open_mapping = [[<C-\>]],
        shell = "pwsh",
        direction = "float"
    },
    keys = {
        { "<leader>1", "<cmd>2 ToggleTerm direction=horizontal name=Term1<cr>", desc = "Toggle Term 1 (Horizontal)" },
        { "<leader>2", "<cmd>3 ToggleTerm direction=tab name=Term2<cr>",        desc = "Toggle Term 2 (Tab)" },
    }
}
