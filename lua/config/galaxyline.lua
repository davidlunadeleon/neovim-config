local condition = require('galaxyline.condition')
local buffer = require('galaxyline.provider_buffer')
local gl = require('galaxyline')
local gls = gl.section

local colors = {
	fg = '#4c566a',
	bg = '#434C5E',
	green = '#A3BE8C',
	orange = '#FF8800',
	magenta = '#B48EAD',
	blue = '#81A1C1',
	red = '#BF616A',
	yellow = '#ebcb8b',
	grey = '#d8dee9'
}

-- Left side
gls.left[1] = {
	FirstElement = {
		provider = function() return '▋' end,
		highlight = {colors.blue,colors.blue}
	},
}

gls.left[2] = {
	ViMode = {
		provider = function()
			local alias = {n = 'NORMAL',i = 'INSERT',c= 'COMMAND',v= 'VISUAL',V= 'VISUAL LINE', [''] = 'VISUAL BLOCK'}
			return alias[vim.fn.mode()]
		end,
		separator = '',
		separator_highlight = {colors.blue,function()
			if not condition.buffer_not_empty() then
				return colors.blue
			end
			return colors.yellow
		end},
		highlight = {colors.fg,colors.blue,'bold'},
	},
}

gls.left[3] = {
	FileTypeName = {
		provider = { 'FileIcon', buffer.get_buffer_filetype },
		condition = condition.buffer_not_empty,
		separator = '',
		separator_highlight = {colors.yellow,colors.bg},
		highlight = {colors.fg, colors.yellow}
	}
}

gls.left[4] = {
	FileName = {
		provider = 'FileName',
		condition = condition.buffer_not_empty,
		highlight = {colors.magenta,colors.bg}
	}
}

gls.left[5] = {
	FileSize = {
		provider = 'FileSize',
		icon = '💾Size: ',
		condition = condition.buffer_not_empty,
		separator = '',
		separator_highlight = {colors.bg,colors.blue},
		highlight = {colors.magenta,colors.bg}
	}
}

gls.left[6] = {
	GitBranchAndIcon = {
		provider = { function () return '  ' end, 'GitBranch' },
		condition = condition.buffer_not_empty,
		highlight = {colors.fg,colors.blue},
	}
}

-- gls.left[7] = {
-- 	DiffAdd = {
-- 		provider = 'DiffAdd',
-- 		condition = condition.git_check_workspace,
-- 		icon = ' ',
-- 		highlight = {colors.green,colors.blue},
-- 	}
-- }
-- 
-- gls.left[8] = {
-- 	DiffModified = {
-- 		provider = 'DiffModified',
-- 		condition = condition.git_check_workspace,
-- 		icon = ' ',
-- 		highlight = {colors.orange,colors.blue},
-- 	}
-- }
-- 
-- gls.left[9] = {
-- 	DiffRemove = {
-- 		provider = 'DiffRemove',
-- 		condition = condition.git_check_workspace,
-- 		icon = ' ',
-- 		highlight = {colors.red,colors.blue},
-- 	}
-- }

gls.left[10] = {
	LeftEnd = {
		provider = function() return '' end,
		separator = '',
		separator_highlight = {colors.blue,colors.bg},
		highlight = {colors.blue,colors.blue}
	}
}

gls.left[11] = {
	DiagnosticError = {
		provider = 'DiagnosticError',
		icon = '  ',
		highlight = {colors.red,colors.bg}
	}
}

gls.left[12] = {
	Space = {
		provider = function () return '' end
	}
}

gls.left[13] = {
	DiagnosticWarn = {
		provider = 'DiagnosticWarn',
		icon = '  ',
		highlight = {colors.blue,colors.bg},
	}
}

-- Middle
gls.mid[1] = {
	ShowLspClient = {
		provider = 'GetLspClient',
		condition = function ()
			local tbl = {['dashboard'] = true,['']=true}
			if tbl[vim.bo.filetype] then
				return false
			end
			return true
		end,
		icon = ' LSP: ',
		separator = '',
		separator_highlight = {colors.bg,colors.red},
		highlight = {colors.grey,colors.red}
	}
}

gls.mid[2] = {
	EndLsp = {
		provider = function() return '' end,
		separator = '',
		separator_highlight = {colors.red,colors.bg},
		highlight = {colors.red,colors.bg}
	}
}

-- Right side
gls.right[1]= {
	FileFormat = {
		provider = 'FileFormat',
		separator = '',
		separator_highlight = {colors.bg,colors.blue},
		highlight = {colors.fg,colors.blue},
	}
}

gls.right[2] = {
	LineInfo = {
		provider = 'LineColumn',
		separator = ' | ',
		separator_highlight = {colors.bg,colors.blue},
		highlight = {colors.fg,colors.blue},
	},
}

gls.right[3] = {
	PerCent = {
		provider = 'LinePercent',
		separator = '',
		separator_highlight = {colors.bg,colors.blue},
		highlight = {colors.magenta,colors.bg},
	}
}

gls.right[4] = {
	ScrollBar = {
		provider = 'ScrollBar',
		highlight = {colors.magenta,colors.blue},
	}
}
