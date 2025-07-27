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

vim.lsp.enable('ruff')
vim.lsp.enable('pyright')

vim.diagnostic.config({
    virtual_text = true
})
