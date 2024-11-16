-- task.lua - Task & Test & Run
return {
    {
        "stevearc/overseer.nvim",
        cmd = {
            "OverseerRun",
            "OverseerOpen",
            "OverseerInfo",
            "OverseerBuild",
            "OverseerClose",
            "OverseerRunCmd",
            "OverseerToggle",
            "OverseerClearCache",
            "OverseerTaskAction",
            "OverseerQuickAction"
        },
        keys = {
            {
                "<Leader>r",
                "<Cmd>OverseerRun<CR>",
                desc = "Overseer run"
            }
        },
        config = function()
            local overseer = require("overseer")
            overseer.setup({
                templates = { "builtin" },
                strategy = {
                    "toggleterm",
                    -- quit_on_exit = "success"
                }
            })

            -- Register global templates here
            -- (register local templates in .nvim.lua file)

            -- overseer.register_template({
            --     name = "Build C++ File",
            --     builder = function()
            --         -- Full path to current file (see :help expand())
            --         local filepath = vim.fn.expand("%:p")
            --         local fp_noext = filepath:match("(.*)%..+$") or filepath
            --         return {
            --             cmd = { "g++" },
            --             args = { filepath, "-o", fp_noext, "-O2" },
            --             cwd = vim.fn.getcwd()
            --         }
            --     end,
            --     condition = {
            --         filetype = { "cpp" },
            --     },
            --     priority = 65,
            --
            --
            -- })
        end
    },
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "orjangj/neotest-ctest",
        },
        cmd = "Neotest",
        opts = function()
            return {
                adapters = {
                    -- Load with default config
                    require("neotest-ctest").setup({})
                },
                consumers = {
                    overseer = require("neotest.consumers.overseer"),
                }
            }
        end,
        keys = {
            { "<Leader>t",     "<Cmd>Neotest summary<CR>",  desc = "Neotest summary" },
            { "<Leader>T",     "<Cmd>Neotest run last<CR>", desc = "Neotest run last" },
            { "<Leader><C-t>", "<Cmd>Neotest run file<CR>", desc = "Neotest run file" }
        }
    }
}
