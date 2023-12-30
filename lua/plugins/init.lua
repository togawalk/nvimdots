local default_plugins = {

	{
		"folke/zen-mode.nvim",
		opts = function()
			return require("plugins.configs.zenmode")
		end,
	},

	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = {
			overrides = {
				SignColumn = { bg = "#282828" },
			},
		},
	},

	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},

	{
		"folke/tokyonight.nvim",
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				custom_highlights = function(colors)
					return {
						NvimTreeFolderArrowOpen = { fg = colors.surface1 },
						NvimTreeFolderArrowClosed = { fg = colors.surface1 },
					}
				end,
			})
		end,
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("plugins.configs.lualine")
		end,
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},

	{
		"RRethy/vim-illuminate",
		config = function()
			require("illuminate").configure({
				filetypes_denylist = {
					"NvimTree",
				},
			})
		end,
	},

	{
		"thedenisnikulin/vim-cyberpunk",
		name = "cyberpunk",
		priority = 1000,
	},

	{
		"ellisonleao/glow.nvim",
		config = true,
		cmd = "Glow",
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},

	-- file managing , picker etc
	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		opts = function()
			return require("plugins.configs.nvimtree")
		end,
	},

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},

	{
		"togawalk/relative-toggle.nvim",
		opts = {
			relativenumber = true,
		},
	},

	{ "rose-pine/neovim", name = "rose-pine" },
	{ "raddari/last-color.nvim" },
	{ "rebelot/kanagawa.nvim" },
}

require("lazy").setup(default_plugins)
