local present, alpha = pcall(require, "alpha")
if not present then
	return
end

local header = {
	type = "text",
	val = {

		[[  ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆         ]],
		[[   ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦      ]],
		[[         ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄    ]],
		[[          ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄   ]],
		[[         ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀  ]],
		[[  ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄ ]],
		[[ ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄  ]],
		[[⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄ ]],
		[[⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄]],
		[[     ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆    ]],
		[[      ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃    ]],
		[[                                 ]],
	},
	opts = {
		position = "center",
		hl = "AlphaHeader",
	},
}

local thingy = io.popen('echo "$(date +%a) $(date +%d) $(date +%b)" | tr -d "\n"')
local date = thingy:read("*a")
thingy:close()

local stats = require("lazy").stats()

local plugin_count = {
	type = "text",
	val = "└─ " .. stats.count .. " plugins in total ─┘",
	opts = {
		position = "center",
		hl = "Comment",
	},
}

local heading = {
	type = "text",
	val = "┌─ Today is " .. date .. " ─┐",
	opts = {
		position = "center",
		hl = "Comment",
	},
}

local footer = {
	type = "text",
	val = "-togawalk-",
	opts = {
		position = "center",
		hl = "AlphaFooter",
	},
}

local function button(sc, txt, keybind)
	local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

	local opts = {
		position = "center",
		text = txt,
		shortcut = sc,
		cursor = 3,
		width = 30,
		align_shortcut = "right",
		hl_shortcut = "AlphaButtons",
		hl = "AlphaButtons",
	}
	if keybind then
		opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
	end

	return {
		type = "button",
		val = txt,
		on_press = function()
			local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
			vim.api.nvim_feedkeys(key, "normal", false)
		end,
		opts = opts,
	}
end

local buttons = {
	type = "group",
	val = {
		button("c", "  Config", ":e ~/.config/nvim/<CR>"),
		button("l", "󰒲  Lazy", ":Lazy<CR>"),
		button("q", "  Quit", ":qa<CR>"),
	},
	opts = {
		spacing = 1,
	},
}

local quote = "First, solve the problem. Then, write the code."
local quoteAuthor = "John Johnson"
local fullQuote = quote .. "\n \n                  - " .. quoteAuthor

local fortune = {
	type = "text",
	val = fullQuote,
	opts = {
		position = "center",
		hl = "Comment",
	},
}

local section = {
	header = header,
	buttons = buttons,
	plugin_count = plugin_count,
	heading = heading,
	footer = footer,
}

local opts = {
	layout = {
		{ type = "padding", val = 3 },
		section.header,
		section.heading,
		section.plugin_count,
		{ type = "padding", val = 1 },
		section.buttons,
		{ type = "padding", val = 1 },
		section.footer,
	},
	opts = {
		margin = 5,
	},
}

alpha.setup(opts)
