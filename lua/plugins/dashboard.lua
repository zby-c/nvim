function z_config()
    local cfg_path = vim.fn.fnameescape(vim.fn.stdpath("config"))
    vim.fn.execute("lcd " .. cfg_path)
    vim.fn.execute("edit " .. cfg_path .. "/init.lua")
end

return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
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
                    action = "lua z_config()",
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
                    action = "help",
                    key = "H"
                },

            },
            project = { limit = 5 },
            mru = { limit = 5 },
            footer = {
                "Have fun in coding!   "
            }
        }
    },
    keys = {
        { "<Leader>h", "<Cmd>Dashboard<CR>", desc = "Dashboard" }
    },
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
