require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- local dap_install = require("dap-install")

-- dap_install.setup({
-- 	installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
-- })