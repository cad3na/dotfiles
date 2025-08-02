return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    ensure_installed = { "c", "lua", "python", "markdown", "toml", "yaml", "json" },
    auto_install = true,
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    }
}
