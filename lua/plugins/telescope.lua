return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    cmd = "Telescope",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    keys = {
        { "<Leader>ff", "<Cmd>Telescope find_files<CR>",                     desc = "Telescope Find Files" },
        { "<Leader>fg", "<Cmd>Telescope live_grep<CR>",                      desc = "Telescope Live Grep" },
        { "<Leader>fb", "<Cmd>Telescope buffers<CR>",                        desc = "Telescope Buffers" },
        { "<Leader>fc", "<Cmd>Telescope command_history theme=dropdown<CR>", desc = "Telescope Command History" },
        { "<Leader>fk", "<Cmd>Telescope keymaps<CR>",                        desc = "Telescope Keymaps" },
        { "<Leader>fh", "<Cmd>Telescope help_tags<CR>",                      desc = "Telescope Help Tags" },
        { "<Leader>ft", "<Cmd>Telescope filetypes theme=dropdown<CR>",       desc = "Telescope File Types" },
        { "<Leader>fr", "<Cmd>Telescope oldfiles<CR>",                       desc = "Telescope Old Files" },
        { "gd",         "<Cmd>Telescope lsp_definitions theme=ivy<CR>",      desc = "Goto Definitions+" },
        { "gr",         "<Cmd>Telescope lsp_references theme=ivy<CR>",       desc = "Goto References+" },
        { "gI",         "<Cmd>Telescope lsp_implementations theme=ivy<CR>",  desc = "Goto Implementations+" },
        { "gy",         "<Cmd>Telescope lsp_type_definitions theme=ivy<CR>", desc = "Goto T[Y]pe Definitions+" },
        { "gl",         "<Cmd>Telescope diagnostics<CR>",                    desc = "Goto Diagnostics" },
        { "gs",         "<Cmd>Telescope lsp_document_symbols<CR>",           desc = "Goto Diagnostics" },
        { "<Leader>gf", "<Cmd>Telescope git_files<CR>",                      desc = "Telescope Git Files" },
        { "<Leader>gs", "<Cmd>Telescope git_status<CR>",                     desc = "Telescope Git Status" },
        { "<Leader>gS", "<Cmd>Telescope git_stash<CR>",                      desc = "Telescope Git Stash" },
        { "<Leader>gc", "<Cmd>Telescope git_commits<CR>",                    desc = "Telescope Git Commits" },
        { "<Leader>gb", "<Cmd>Telescope git_branches<CR>",                   desc = "Telescope Git Branches" }
    }
}
