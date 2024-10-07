return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    opts = {
        filesystem = {
            filtered_items = {
                hide_gitignored = false,
                hide_hidden = false,
                hide_dotfiles = false
            }
        },
        window = {
            width = 35
        }
    },
    keys = {
        { "<leader>e", "<cmd>Neotree left toggle dir=<cr>",  desc = "Neotree" },
        { "<leader>E", "<cmd>Neotree float toggle dir=<cr>", desc = "Neotree float" }
    }
}
