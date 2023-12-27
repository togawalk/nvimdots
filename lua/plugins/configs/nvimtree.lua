local options = {
	view = {
		adaptive_size = false,
		side = "right",
		width = 30,
	},
	git = {
		enable = true,
		ignore = false,

		show_on_dirs = true,
		show_on_open_dirs = false,
		timeout = 200,
	},
	filesystem_watchers = {
		enable = true,
	},
	actions = {
		open_file = {
			resize_window = true,
		},
	},
	renderer = {
		highlight_git = true,
		root_folder_label = ":t",
		indent_markers = {
			enable = true,
			inline_arrows = true,
			icons = {
				corner = "└",
				edge = "│",
				item = "│",
				none = " ",
			},
		},

		icons = {
			show = {
				file = false,
				git = false,
				folder_arrow = false,
			},
			glyphs = {
				folder = {
					default = "󰉋",
					empty = "󱧴",
					empty_open = "󱧴",
					open = "󰝰",
					symlink = "",
					symlink_open = "",
				},
			},
		},
	},
}

return options
