local default_plugins = {

	{
		"nvim-tree/nvim-tree.lua",
		config = true,
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},

	{
		"RRethy/vim-illuminate",
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
}

require("lazy").setup(default_plugins)
