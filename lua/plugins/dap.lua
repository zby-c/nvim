return {
    "mfussenegger/nvim-dap",
    dependencies = {
        {
            "theHamsta/nvim-dap-virtual-text",
            opts = {}
        }
    },
    config = function()
        local dap = require("dap")

        dap.adapters.gdb = {
            type = "executable",
            command = "gdb",
            args = { "--interpreter=dap" }
        }

        dap.configurations.c = {
            {
                name = "Launch",
                type = "gdb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = "${workspaceFolder}",
                stopAtBeginningOfMainSubprogram = false,
            },
            {
                name = "Select and attach to process",
                type = "gdb",
                request = "attach",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                pid = function()
                    local name = vim.fn.input('Executable name (filter): ')
                    return require("dap.utils").pick_process({ filter = name })
                end,
                cwd = '${workspaceFolder}'
            },
            {
                name = 'Attach to gdbserver :1234',
                type = 'gdb',
                request = 'attach',
                target = 'localhost:1234',
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}'
            },
        }
        dap.configurations.cpp = dap.configurations.c
        dap.configurations.rust = dap.configurations.c

        -- Signs Configurations
        vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "", linehl = "", numhl = "" })
        vim.fn.sign_define("DapBreakpointCondition", { text = "", texthl = "", linehl = "", numhl = "" })
        vim.fn.sign_define("DapLogPoint", { text = "", texthl = "", linehl = "", numhl = "" })
        vim.fn.sign_define("DapStopped", { text = "", texthl = "", linehl = "", numhl = "" })
        vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "", linehl = "", numhl = "" })
    end,
    keys = {
        { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Dap Breakpoint Condition" },
        { "<leader>db", function() require("dap").toggle_breakpoint() end,                                    desc = "Dap Toggle Breakpoint" },
        { "<leader>dc", function() require("dap").continue() end,                                             desc = "Dap Continue" },
        { "<leader>dC", function() require("dap").run_to_cursor() end,                                        desc = "Dap Run to Cursor" },
        { "<leader>dg", function() require("dap").goto_() end,                                                desc = "Dap Go to Line (No Execute)" },
        { "<leader>di", function() require("dap").step_into() end,                                            desc = "Dap Step Into" },
        { "<leader>dj", function() require("dap").down() end,                                                 desc = "Dap Down" },
        { "<leader>dk", function() require("dap").up() end,                                                   desc = "Dap Up" },
        { "<leader>dl", function() require("dap").run_last() end,                                             desc = "Dap Run Last" },
        { "<leader>do", function() require("dap").step_out() end,                                             desc = "Dap Step Out" },
        { "<leader>dO", function() require("dap").step_over() end,                                            desc = "Dap Step Over" },
        { "<leader>dp", function() require("dap").pause() end,                                                desc = "Dap Pause" },
        { "<leader>dr", function() require("dap").repl.toggle() end,                                          desc = "Dap Toggle REPL" },
        { "<leader>ds", function() require("dap").session() end,                                              desc = "Dap Session" },
        { "<leader>dt", function() require("dap").terminate() end,                                            desc = "Dap Terminate" },
        { "<leader>dw", function() require("dap.ui.widgets").hover() end,                                     desc = "Dap Widgets Hover" },
    },
}
