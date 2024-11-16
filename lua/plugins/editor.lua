-- editor.lua - Operations in the editor
return {
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
            { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
            { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Flash Remote Flash" },
            { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Flash Treesitter Search" },
            { "<C-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Flash Toggle Search" },
        }
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function()
            require("lazy").load({ plugins = { "markdown-preview.nvim" } })
            vim.fn["mkdp#util#install"]()
        end,
        keys = {
            { "<F4>", "<Cmd>MarkdownPreviewToggle<CR>", desc = "Markdown preview" }
        }
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            icons = {
                mappings = false
            }
        },
        keys = {
            {
                "<leader>/",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer local keymaps (which-key)",
            },
            {
                "<leader>?",
                function()
                    require("which-key").show({ --[[  global = false  ]] })
                end,
                desc = "Global keymaps (which-key)",
            }
        }
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        cmd = "TodoTelescope",
        event = { "BufReadPost", "BufNewFile" },
        opts = {},
        keys = {
            { "]c",        function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
            { "[c",        function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },
            { "<Leader>c", "<Cmd>TodoTelescope<CR>",                            desc = "Todo telescope" },
        }
    },
}
