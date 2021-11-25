require("packer").init(
  {
    compile_path = "~/.local/share/nvim/plugin/packer_compiled.lua",
    display = {
      non_interactive = false,
      open_fn = require("packer.util").float,
      show_all_info = false,
      prompt_border = "single"
    }
  }
)

return require("packer").startup(
  function(use)
    use "wbthomason/packer.nvim"

    -- colors
    use "folke/tokyonight.nvim"

    --ui
    -- use "glepnir/dashboard-nvim"
    use "kyazdani42/nvim-tree.lua"
    use "akinsho/bufferline.nvim"
    -- use "romgrk/barbar.nvim"
    use "hoob3rt/lualine.nvim"
    -- use 'glepnir/galaxyline.nvim'
    use "folke/which-key.nvim"
    use "folke/trouble.nvim"

    -- use {"kevinhwang91/nvim-bqf", ft = "qf"}

    -- syntax
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

    use "nvim-telescope/telescope.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"

    use "kyazdani42/nvim-web-devicons"
    use "lewis6991/gitsigns.nvim"
    use "lukas-reineke/indent-blankline.nvim"

    -- use "github/copilot.vim"
    use "neovim/nvim-lspconfig"
    use "onsails/lspkind-nvim"
    use "williamboman/nvim-lsp-installer"

    -- snip
    use "hrsh7th/vim-vsnip"
    use "rafamadriz/friendly-snippets"

    --completion
    use "ms-jpq/coq_nvim"
    use {
      "ms-jpq/coq.artifacts",
      branch = "artifacts"
    }
    use {
      "ms-jpq/coq.thirdparty",
      branch = "3p"
    }

    use {
      "hrsh7th/nvim-cmp",
      requires = {
        {"hrsh7th/cmp-nvim-lsp"},
        {"hrsh7th/cmp-path"},
        {"hrsh7th/cmp-buffer"},
        {"hrsh7th/cmp-vsnip"}
      }
    }
    -- use "hrsh7th/nvim-cmp"
    -- use 'hrsh7th/cmp-nvim-lsp'

    -- auto
    use "windwp/nvim-ts-autotag"
    use "windwp/nvim-autopairs"
    use "rmagatti/auto-session"
    use "Pocco81/AutoSave.nvim"

    use "folke/twilight.nvim"

    --workspace
    -- use 'terrortylor/nvim-comment'
    use "folke/todo-comments.nvim"
    use "tpope/vim-commentary"
    use "mhartington/formatter.nvim"

    --misc
    use "karb94/neoscroll.nvim"
    use "max397574/better-escape.nvim"
    use "ThePrimeagen/harpoon"
    use "ThePrimeagen/refactoring.nvim"

    -- languages
    use "pantharshit00/vim-prisma"
  end
)
