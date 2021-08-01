local gl = require('galaxyline')
local gls = gl.section

local colors = {
	fg = '#4C566A',
	bg = '#373E4D',
	green = '#A3BE8C',
	orange = '#FF8800',
	magenta = '#B48EAD',
	blue = '#81A1C1',
	red = '#BF616A'
}

local buffer_not_empty = function()
	if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
		return true
	end
	return false
end

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
			if not buffer_not_empty() then
				return colors.blue
			end
			return colors.bg
		end},
		highlight = {colors.fg,colors.blue,'bold'},
	},
}

gls.left[3] ={
	FileIcon = {
		provider = 'FileIcon',
		condition = buffer_not_empty,
		highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
	},
}

gls.left[4] = {
	FileName = {
		provider = {'FileName','FileSize'},
		condition = buffer_not_empty,
		separator = '',
		separator_highlight = {colors.blue,colors.bg},
		highlight = {colors.magenta,colors.bg}
	}
}

gls.left[5] = {
	GitIcon = {
		provider = function() return '  ' end,
		condition = buffer_not_empty,
		highlight = {colors.bg,colors.blue},
	}
}
gls.left[6] = {
	GitBranch = {
		provider = 'GitBranch',
		condition = buffer_not_empty,
		highlight = {colors.fg,colors.blue},
	}
}

local checkwidth = function()
	local squeeze_width	= vim.fn.winwidth(0) / 2
	if squeeze_width > 40 then
		return true
	end
	return false
end

gls.left[7] = {
	DiffAdd = {
		provider = 'DiffAdd',
		condition = checkwidth,
		icon = ' ',
		highlight = {colors.green,colors.blue},
	}
}
gls.left[8] = {
	DiffModified = {
		provider = 'DiffModified',
		condition = checkwidth,
		icon = ' ',
		highlight = {colors.orange,colors.blue},
	}
}
gls.left[9] = {
	DiffRemove = {
		provider = 'DiffRemove',
		condition = checkwidth,
		icon = ' ',
		highlight = {colors.red,colors.blue},
	}
}
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
		provider = function () return ' ' end
	}
}
gls.left[13] = {
	DiagnosticWarn = {
		provider = 'DiagnosticWarn',
		icon = '  ',
		highlight = {colors.blue,colors.bg},
	}
}
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

gls.short_line_left[1] = {
	BufferType = {
		provider = 'FileTypeName',
		separator = '',
		separator_highlight = {colors.blue,colors.bg},
		highlight = {colors.fg,colors.blue}
	}
}

gls.short_line_right[1] = {
	BufferIcon = {
		provider= 'BufferIcon',
		separator = '',
		separator_highlight = {colors.blue,colors.bg},
		highlight = {colors.fg,colors.blue}
	}
}
