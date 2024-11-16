-- dap.lua - DAP debug
return { {
    "mfussenegger/nvim-dap",
    dependencies = {
        {
            "rcarriga/nvim-dap-ui",
            dependencies = { "nvim-neotest/nvim-nio" },
            opts = {
            }
        },

        {
            "theHamsta/nvim-dap-virtual-text",
            opts = {
            }
        },

        -- Installs the debug adapters for you
        'williamboman/mason.nvim',
        'jay-babu/mason-nvim-dap.nvim',
    },
    keys = {
        { "<Leader><S-4>", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Dap breakpoint condition" },
        { "<Leader>4",     function() require("dap").toggle_breakpoint() end,                                    desc = "Dap toggle breakpoint" },

        { "<Leader>1",     function() require("dap").continue() end,                                             desc = "Dap run/continue" },
        { "<Leader>2",     function() require("dap").run_last() end,                                             desc = "Dap run last" },
        { "<Leader><S-3>", function() require("dap").pause() end,                                                desc = "Dap pause" },
        { "<Leader>3",     function() require("dap").terminate() end,                                            desc = "Dap terminate" },

        { "<Leader>5",     function() require("dap").step_into() end,                                            desc = "Dap step into" },
        { "<Leader>6",     function() require("dap").step_out() end,                                             desc = "Dap step out" },
        { "<Leader>7",     function() require("dap").step_over() end,                                            desc = "Dap step over" },

        { "<Leader><S-8>", function() require("dap.ui.widgets").hover() end,                                     desc = "Dap widgets" },
        { "<Leader>8",     function() require("dapui").eval() end,                                               desc = "Dap eval",                mode = { "n", "v" } },
        { "<Leader>9",     function() require("dapui").toggle() end,                                             desc = "Dap UI" },
    },
    config = function()
        -- Install & configure adapters and configurations
        require("mason-nvim-dap").setup({
            automatic_installation = true,
            ensure_installed = {
                "cpptools"
            },
            handlers = {
                function(config)
                    require('mason-nvim-dap').default_setup(config)
                end,
                codelldb = function(config)
                    config.adapters = {
                        type = "executable",
                        command = vim.fn.stdpath("config") ..
                            "/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
                        options = {
                            detached = false -- On Windows
                        }
                    }

                    require('mason-nvim-dap').default_setup(config) -- don't forget this!
                end,
            },
        })

        -- Toggle dapui automatically
        local dap, dapui = require("dap"), require("dapui")
        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
    end
} }
