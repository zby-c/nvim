-- task.lua - Task & Test & Run
return {
    {
        "stevearc/overseer.nvim",
        cmd = {
            "OverSeerRun",
            "OverSeerOpen",
            "OverSeerInfo",
            "OverSeerBuild",
            "OverSeerClose",
            "OverSeerRunCmd",
            "OverSeerToggle",
            "OverSeerClearCache",
            "OverSeerTaskAction",
            "OverSeerQuickAction"
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
    }
}
