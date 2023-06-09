require("conf.core.options")
require("conf.core.keymap")
require("conf.plugins")
require("conf.plugins.theme")
require("conf.plugins.nvimtree")
require("conf.plugins.mason")
require("conf.plugins.Treesitter")
require("conf.plugins.coc")
require("conf.plugins.airline")
require("conf.plugins.aerial")
require("conf.dap.config")

vim.cmd [[
    let g:leetcode_browser='chrome'
]]
