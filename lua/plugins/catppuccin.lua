-- catppuccin.lua - Theme
return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme [[catppuccin-macchiato]]
    end,
    keys = {
        {
            "<Leader>\\",
            function()
                if vim.g.colors_name == "catppuccin-mocha" then
                    vim.cmd.colorscheme [[catppuccin-latte]]
                elseif vim.g.colors_name == "catppuccin-latte" then
                    vim.cmd.colorscheme [[catppuccin-frappe]]
                elseif vim.g.colors_name == "catppuccin-frappe" then
                    vim.cmd.colorscheme [[catppuccin-macchiato]]
                elseif vim.g.colors_name == "catppuccin-macchiato" then
                    vim.cmd.colorscheme [[catppuccin-mocha]]
                end
            end,
            desc = "Switch catppuccin flavors"
        }
    }
}
