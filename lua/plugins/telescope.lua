return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    cmd = "Telescope",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    keys = {
        { "<leader>F",  "<cmd>Telescope<cr>",                                desc = "Telescope" },
        { "<leader>ff", "<cmd>Telescope find_files<cr>",                     desc = "Telescope Find Files" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>",                      desc = "Telescope Live Grep" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>",                        desc = "Telescope Buffers" },
        { "<leader>fc", "<cmd>Telescope command_history theme=dropdown<cr>", desc = "Telescope Command History" },
        { "<leader>fk", "<cmd>Telescope keymaps<cr>",                        desc = "Telescope Keymaps" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>",                      desc = "Telescope Help Tags" },
        { "<leader>ft", "<cmd>Telescope filetypes theme=dropdown<cr>",       desc = "Telescope File Types" },
        { "<leader>fr", "<cmd>Telescope oldfiles<cr>",                       desc = "Telescope Old Files" },
        { "gd",         "<cmd>Telescope lsp_definitions theme=ivy<cr>",      desc = "Goto Definitions+" },
        { "gr",         "<cmd>Telescope lsp_references theme=ivy<cr>",       desc = "Goto References+" },
        { "gI",         "<cmd>Telescope lsp_implementations theme=ivy<cr>",  desc = "Goto Implementations+" },
        { "gy",         "<cmd>Telescope lsp_type_definitions theme=ivy<cr>", desc = "Goto T[Y]pe Definitions+" },
        { "gl",         "<cmd>Telescope diagnostics<cr>",                    desc = "Goto Diagnostics" },
        { "gs",         "<cmd>Telescope lsp_document_symbols<cr>",           desc = "Goto Diagnostics" },
        { "<leader>gf", "<cmd>Telescope git_files<cr>",                      desc = "Telescope Git Files" },
        { "<leader>gs", "<cmd>Telescope git_status<cr>",                     desc = "Telescope Git Status" },
        { "<leader>gS", "<cmd>Telescope git_stash<cr>",                      desc = "Telescope Git Stash" },
        { "<leader>gc", "<cmd>Telescope git_commits<cr>",                    desc = "Telescope Git Commits" },
        { "<leader>gb", "<cmd>Telescope git_branches<cr>",                   desc = "Telescope Git Branches" }
    }
}
