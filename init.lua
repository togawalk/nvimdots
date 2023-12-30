require("core")
require("core.lazy")
require("core.mappings")

--vim.cmd([[colorscheme catppuccin]])

-- kanagawa as a backup, `recall()` can return `nil`.
local theme = require('last-color').recall() or 'catppuccin'
vim.cmd(('colorscheme %s'):format(theme))
