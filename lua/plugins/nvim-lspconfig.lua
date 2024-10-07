return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufNewFile", "FileReadPost" },
    config = function()
        local lspconfig = require("lspconfig")

        -- lua_ls
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {}
            },
            on_init = function(client)
                if client.workspace_folders then
                    local path = client.workspace_folders[1].name
                    if vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc') then
                        return
                    end
                end

                client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                    runtime = {
                        version = 'LuaJIT'
                    },
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME
                        }
                    }
                })
            end,
        }

        -- cmake
        lspconfig.cmake.setup {}

        -- clangd
        lspconfig.clangd.setup {
            root_dir = require("lspconfig.util").root_pattern(
                ".clangd",
                ".clang-tidy",
                ".clang-format",
                "compile_commands.json",
                "compile_flags.txt",
                "configure.ac",
                "Makefile",
                "meson.build",
                "build.ninja",
                ".git"
            ),
            cmd = {
                "clangd",
                "--background-index",
                "--clang-tidy"
            }

        }

    end,
    keys = {
        { "gk",     vim.lsp.buf.hover,           desc = "Hover" },
        { "g<C-d>", vim.lsp.buf.definition,      desc = "Goto Definition" },
        { "g<C-r>", vim.lsp.buf.references,      desc = "Goto References",     nowait = true },
        { "g<C-i>", vim.lsp.buf.implementation,  desc = "Goto Implementation" },
        { "g<C-y>", vim.lsp.buf.type_definition, desc = "Goto Type Definition" },
        { "gD",     vim.lsp.buf.declaration,     desc = "Goto Declaration" },
        { "ga",     vim.lsp.buf.code_action,     desc = "Code Action" },
        { "gn",     vim.lsp.buf.rename,          desc = "Rename" },
        { "gw",     vim.lsp.buf.format,          desc = "Format" }
    }
}
