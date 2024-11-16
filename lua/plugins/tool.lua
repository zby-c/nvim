-- tool.lua - Many useful features
return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        cmd = "Neotree",
        opts = {
            sources = { "filesystem", "buffers", "git_status" },
            filesystem = {
                filtered_items = {
                    hide_gitignored = false,
                    hide_hidden = false,
                    hide_dotfiles = false
                }
            },
            window = {
                width = 32
            }
        },
        keys = {
            { "<Leader>e", "<Cmd>Neotree left toggle dir=<CR>",     desc = "Neotree toggle (fs)" },
            { "<Leader>B", "<Cmd>Neotree float buffers toggle<CR>", desc = "Neotree toggle (buffers)" }
        }
    },
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        cmd = "Telescope",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release" }
        },
        config = function()
            require("telescope").setup({
                extensions = {
                    fzf = {
                        fuzzy = true,                   -- false will only do exact matching
                        override_generic_sorter = true, -- override the generic sorter
                        override_file_sorter = true,    -- override the file sorter
                        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                    }
                }
            })
            require("telescope").load_extension("fzf")
        end,
        keys = {
            { "<Leader>F", "<Cmd>Telescope<CR>",                                desc = "Telescope others" },
            { "<Leader>f", "<Cmd>Telescope find_files<CR>",                     desc = "Telescope find files" },
            { "<Leader>g", "<Cmd>Telescope live_grep<CR>",                      desc = "Telescope live grep" },
            { "<Leader>b", "<Cmd>Telescope buffers<CR>",                        desc = "Telescope buffers" },
            { "<Leader>k", "<Cmd>Telescope keymaps<CR>",                        desc = "Telescope keymaps" },
            { "<Leader>h", "<Cmd>Telescope help_tags<CR>",                      desc = "Telescope help tags" },
            { "gd",        "<Cmd>Telescope lsp_definitions theme=ivy<CR>",      desc = "LSP goto definitions+" },
            { "gr",        "<Cmd>Telescope lsp_references theme=ivy<CR>",       desc = "LSP goto references+" },
            { "gI",        "<Cmd>Telescope lsp_implementations theme=ivy<CR>",  desc = "LSP goto implementations+" },
            { "gy",        "<Cmd>Telescope lsp_type_definitions theme=ivy<CR>", desc = "LSP goto t[Y]pe definitions+" },
            { "gl",        "<Cmd>Telescope diagnostics<CR>",                    desc = "LSP goto diagnostics" },
            { "gs",        "<Cmd>Telescope lsp_document_symbols<CR>",           desc = "LSP document symbols" },
            { "gS",        "<Cmd>Telescope lsp_workspace_symbols<CR>",          desc = "LSP workspace symbols" }
        }
    },
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        event = "VeryLazy",
        cmd = {
            "ToggleTerm",
            "ToggleTermSetName",
            "ToggleTermToggleAll",
            "ToggleTermSendCurrentLine",
            "ToggleTermSendVisualLines",
            "ToggleTermSendVisualSelection",
        },
        opts = {
            shell = "pwsh",
            direction = "float",
            open_mapping = [[<C-\>]]
        }
    },

}
