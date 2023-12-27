local default_plugins = {

	-- Colorschemes
	{
		"folke/tokyonight.nvim",
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
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
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						--"NvimTree",
					},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = true,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					},
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "filename" },
					lualine_c = { { "branch", icon = ' '}, "diff", "diagnostics" },
					lualine_x = { "encoding", { "fileformat", icons_enabled = false }, {
						"filetype",
						icons_enabled = false,
					} },
					lualine_y = {},
					lualine_z = { "progress" },
				},
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = {},
			})
		end,
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
}

require("lazy").setup(default_plugins)
