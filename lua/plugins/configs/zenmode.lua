local options = {
	window = {
		options = {
			number = false, -- disable number column
			relativenumber = false, -- disable relative numbers
		},
	},
	plugins = {
		options = {
			enabled = true,
			-- you may turn on/off statusline in zen mode by setting 'laststatus'
			-- statusline will be shown only if 'laststatus' == 3
			laststatus = 0, -- turn off the statusline in zen mode
		},
		gitsigns = { enabled = false }, -- disables git signs
		-- this will change the font size on kitty when in zen mode
		-- to make this work, you need to set the following kitty options:
		-- - allow_remote_control socket-only
		-- - listen_on unix:/tmp/kitty
		kitty = {
			enabled = true,
			font = "+4", -- font size increment
		},
	},
}

return options
