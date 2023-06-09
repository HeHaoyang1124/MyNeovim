vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("i", "jk", "<ESC>")
--DAP--
vim.keymap.set({ "i", "n", "v" }, "<F5>", "<cmd>lua require'dap'.continue()<CR>",
    { silent = true, noremap = true, buffer = bufnr })
vim.keymap.set({ "i", "n", "v" }, "<F10>", "<cmd>lua require'dap'.step_over()<CR>",
    { silent = true, noremap = true, buffer = bufnr })
vim.keymap.set({ "i", "n", "v" }, "<F11>", "<cmd>lua require'dap'.step_into()<CR>",
    { silent = true, noremap = true, buffer = bufnr })
vim.keymap.set({ "i", "n", "v" }, "<F9>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>",
    { silent = true, noremap = true, buffer = bufnr })


vim.keymap.set('n', '<Leader>df', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
end)

--NvimTree
vim.api.nvim_set_keymap("n", "<F2>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

--ClangFormat
vim.api.nvim_set_keymap("n", "<A-F>", ":ClangFormat<CR>", { noremap = true, silent = true })

--Airline Buffer
vim.api.nvim_set_keymap("n", "<C-n>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-p>", ":bprevious<CR>", { noremap = true, silent = true })

--LeetCode
-- nnoremap <leader>ll :LeetCodeList<cr>
-- nnoremap <leader>lt :LeetCodeTest<cr>
-- nnoremap <leader>ls :LeetCodeSubmit<cr>
-- nnoremap <leader>li :LeetCodeSignIn<cr>
vim.api.nvim_set_keymap("n", "<leader>ll", ":LeetCodeList<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>lt", ":LeetCodeTest<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ls", ":LeetCodeSubmit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>li", ":LeetCodeSignIn<CR>", { noremap = true, silent = true })
