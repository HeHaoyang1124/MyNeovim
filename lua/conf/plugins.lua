local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])

return require('packer').startup(function(use)
    --packer
    use 'wbthomason/packer.nvim'

    --Theme
    -- use 'folke/tokyonight.nvim'
    -- use 'navarasu/onedark.nvim'

    --Gruvbox
    use { "ellisonleao/gruvbox.nvim" }
    --catppuccin
    use { "catppuccin/nvim", as = "catppuccin" }
    --Nightfox
    use { "EdenEast/nightfox.nvim" }
    --NvimTree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }
    -- use { "zgpio/tree.nvim" }

    --Debug

    use "Pocco81/DAPInstall.nvim"
    use 'mfussenegger/nvim-dap'
    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }

    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use { "theHamsta/nvim-dap-virtual-text" }
    -- use { "nvim-treesitter/nvim-treesitter" }


    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    --installer
    use { "nvim-treesitter/nvim-treesitter" }

    --commenter
    use 'scrooloose/nerdcommenter'
    
    --ClangFormat
    use "rhysd/vim-clang-format"

    --lsp
    use "neoclide/coc.nvim"

    --airline
    use "vim-airline/vim-airline"
    use 'vim-airline/vim-airline-themes'
    -- My plugins here
    -- use 'foo1/bar1.nvim'
    -- use 'foo2/bar2.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
