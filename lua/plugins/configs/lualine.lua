local M = {}

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
		lualine_c = { { "branch", icon = " " }, "diff", "diagnostics" },
		lualine_x = {
			"encoding",
			{ "fileformat", icons_enabled = false },
			{
				"filetype",
				icons_enabled = false,
			},
		},
		lualine_y = {},
		lualine_z = { "progress" },
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})

return M
