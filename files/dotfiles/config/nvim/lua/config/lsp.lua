vim.lsp.config('ruff', {
  init_options = {
    settings = {
      logLevel = 'debug',
      lineLength = 120,
      -- Ruff language server settings go here
    }
  }
})

vim.lsp.enable('ruff')

vim.diagnostic.config({ virtual_text = true })
