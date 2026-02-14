vim.lsp.config('ruff', {
    init_options = {
        settings = {
            configurationPreference = "filesystemFirst",
            exclude = {'**/tests/**'},
            logLevel = 'debug',
            lineLength = 120,
            fixAll = false,
            showSyntaxErrors = true,
            lint = {
                enable = true,
                ignore = { "E402" }
            }
        }
    },
    on_attach = function(client) client.server_capabilities.hoverProvider = false end
})

vim.lsp.config('ty', {
    settings = {
        ty = {
            -- ty language server settings go here
            configuration = {
                environment = {
                    ["extra-paths"] = {
                        "/Users/roberto/wylie/pipeline-modules/"
                    }
                }
            }
        }
    }
})

vim.lsp.enable('ty')

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
})

vim.lsp.config("tinymist", {
    settings = {
        formatterMode = "typstyle",
        exportPdf = "onType",
        semanticTokens = "disable"
    }
})

vim.diagnostic.config({
    virtual_text = true
})
