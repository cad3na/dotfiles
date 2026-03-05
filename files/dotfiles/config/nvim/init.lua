require("config.globals")
require("config.lazy")
require("config.bindings")
require("config.lsp")

vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99

local function setup_treesitter_folds(filetype, query_str)
    vim.treesitter.query.set(filetype, "folds", query_str)
end

setup_treesitter_folds("python", [[
(function_definition) @fold
(class_definition) @fold
]])

setup_treesitter_folds("cpp", [[
(function_definition) @fold
(class_definition) @fold
]])
