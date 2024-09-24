-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	{ 'phaazon/hop.nvim' },

	{
    		"nvim-neo-tree/neo-tree.nvim",
    		branch = "v3.x",
    		dependencies = {
      			"nvim-lua/plenary.nvim",
      			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
    		}
	},

	{
		"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate"
	},
	{
    		"hrsh7th/nvim-cmp",
    		dependencies = {
      			"hrsh7th/cmp-nvim-lsp",
      			"hrsh7th/cmp-buffer",
      			"hrsh7th/cmp-path",
      			"L3MON4D3/LuaSnip",
      			"saadparwaiz1/cmp_luasnip",
    		},
	},
    {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'}, {'lewis6991/gitsigns.nvim'},
    {'williamboman/mason.nvim'}, {'williamboman/mason-lspconfig.nvim'}, 
    {'neovim/nvim-lspconfig'},
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {'marko-cerovac/material.nvim'},
    {'scottmckendry/cyberdream.nvim'},
    {'jose-elias-alvarez/null-ls.nvim'},
    {'windwp/nvim-autopairs'},
    {'windwp/nvim-ts-autotag'}, {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
        }
    },
    {'windwp/nvim-ts-autotag'}, {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
        }
    },
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {{'nvim-tree/nvim-web-devicons'}}
    },
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    {"akinsho/bufferline.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},
    {'terrortylor/nvim-comment'},
    {'hrsh7th/cmp-nvim-lsp-signature-help'},
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'
        }
    },
})
