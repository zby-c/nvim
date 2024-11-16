-- dashboard.lua - Let's start from here!

function ZOpenConfigDir()
    local cfg_path = vim.fn.fnameescape(vim.fn.stdpath("config"))
    vim.fn.execute("lcd " .. cfg_path)
    print("Enjoy your config!")
end

return {
    "nvimdev/dashboard-nvim",
    lazy = false,
    opts = {
        theme = "hyper",
        config = {
            week_header = {
                enable = true
            },
            shortcut = {
                {
                    desc = " Config",
                    group = "String",
                    action = "lua ZOpenConfigDir()",
                    key = "C"
                },
                {
                    desc = " Plugin",
                    group = "Number",
                    action = "Lazy",
                    key = "P"
                },
                {
                    desc = "󰋗 Help",
                    group = "@variable",
                    action = "help nvim",
                    key = "H"
                },
                {
                    desc = " Check",
                    group = "DashboardMruTitle",
                    action = "checkhealth",
                    key = "X"
                }
            },
            project = { limit = 5 },
            mru = { limit = 5 },
            footer = {
                "Have fun in coding!   "
            }
        }
    },
    keys = {
        { "<Leader>d", "<Cmd>Dashboard<CR>", desc = "Dashboard" }
    },
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
