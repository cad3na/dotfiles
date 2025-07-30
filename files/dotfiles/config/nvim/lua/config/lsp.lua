vim.lsp.config('ruff', {
    init_options = {
        settings = {
            configurationPreference = "filesystemFirst",
            exclude = {'**/tests/**'},
            logLevel = 'info',
            lineLength = 120,
            fixAll = false,
            showSyntaxErrors = true,
            lint = {
	            enable = true,
	            preview = true,
	            ignore = {}
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
                        '/Users/roberto/wylie/nuke-scripts/scripts/jobs/'
                }
            },
            pythonPath = '/opt/homebrew/Caskroom/miniconda/base/envs/exploration/bin/python'
        }
    }
})
-- vim.lsp.enable('ruff')
-- vim.lsp.enable('pyright')

vim.diagnostic.config({
    virtual_text = true
})
