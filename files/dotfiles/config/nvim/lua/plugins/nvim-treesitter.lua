return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    ensure_installed = { "c", "lua", "python", "markdown" }
}
