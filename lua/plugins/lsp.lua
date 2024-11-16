-- lsp.lua - Lsp config
return { {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        {
            "williamboman/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            }
        }, {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "clangd",
                "lua_ls",
                "cmake"
            }
        }
    }
    },
    config = function()
        local lspconfig = require("lspconfig")

        -- lua_ls
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {}
            },
            root_dir = require("lspconfig.util").root_pattern(
                ".nvim.lua",
                "init.lua",
                ".git"
            ),
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
        { "gk",     vim.lsp.buf.hover,           desc = "LSP hover" },
        { "g<C-d>", vim.lsp.buf.definition,      desc = "LSP goto definition" },
        { "g<C-r>", vim.lsp.buf.references,      desc = "LSP goto references",     nowait = true },
        { "g<C-i>", vim.lsp.buf.implementation,  desc = "LSP goto implementation" },
        { "g<C-y>", vim.lsp.buf.type_definition, desc = "LSP goto type definition" },
        { "gD",     vim.lsp.buf.declaration,     desc = "LSP goto declaration" },
        { "ga",     vim.lsp.buf.code_action,     desc = "LSP code action" },
        { "gn",     vim.lsp.buf.rename,          desc = "LSP rename" },
        { "gw",     vim.lsp.buf.format,          desc = "LSP format" }
    }
} }
