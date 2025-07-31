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
    }
})

vim.lsp.config('pyright', {
    settings = {
        python = {
            analysis = {
                extraPaths = {
                    '/Users/roberto/wylie/pipeline-modules/',
                    '/Users/roberto/wylie/nuke-scripts/scripts/',
                    '/Users/roberto/wylie/nuke-scripts/scripts/jobs/',
                    'C:/Users/rob/src/pipeline-modules',
                    'C:/Users/rob/src/nuke-scripts/scripts',
                    'C:/Usres/rob/src/nuke-scripts/scripts/jobs'
                }
            },
            pythonPath = '/opt/homebrew/Caskroom/miniconda/base/envs/exploration/bin/python'
        }
    }
})

vim.diagnostic.config({
    virtual_text = true
})
