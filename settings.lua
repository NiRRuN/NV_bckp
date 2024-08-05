local opt = vim.opt

opt.mouse = 'a'
opt.encoding = 'utf-8'
opt.showcmd = true
vim.cmd([[ filetype indent plugin on
	   syntax enable ]])
opt.number = true
opt.expandtab = true
opt.tabstop = 4
opt.smartindent = true
opt.cursorline = true
opt.termguicolors = true
opt.ignorecase = true
opt.smartcase = true

vim.g.tagbar_compact = 1
vim.g.tagbar_sort = 0

vim.cmd [[
autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,htmljinja setlocal shiftwidth=2 tabstop=2
]]
opt.foldcolumn = '2'
opt.colorcolumn =  '119'

vim.cmd [[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]]

local luasnip = require 'luasnip'
local cmp = require 'cmp'
cmp.setup {
    snippet = {
        expand = function(args)
        end,
    },
    sources = {
        { name = 'luasnip' },
        { name = 'path' },
        { name = 'buffer', option = {
            get_bufnrs = function()
                return vim.api.nvim_list_bufs()
            end
        },
    },
},
}
