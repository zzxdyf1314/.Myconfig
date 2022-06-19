local packer = require("packer")
packer.startup(
  function(use)
    use ("wbthomason/packer.nvim")
    ---------colorscheme---------
    --tokyonight
    use("folke/tokyonight.nvim")
    --nvcode
    use("ChristianChiarulli/nvcode-color-schemes.vim")
    --oceainc-next
    use("mhartington/oceanic-next")
    -- nvim-tree (新增)
    use({ "kyazdani42/nvim-tree.lua", 
                          requires = "kyazdani42/nvim-web-devicons" })
    -- bufferline
    -- bufferline (新增)
    use({ "akinsho/bufferline.nvim", requires = 
        { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
    -- lualine (新增)
    use({ "nvim-lualine/lualine.nvim", 
                  requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")
    -- telescope （新增）
    --use { 'nvim-telescope/telescope.nvim', 
    --             requires = { "nvim-lua/plenary.nvim" } }
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use ("savq/melange")
end)
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
