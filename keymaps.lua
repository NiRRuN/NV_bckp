local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('', '<up>', ':echoe "Use k, bro"<CR>', {noremap = true, silent = false})
map('', '<down>', ':echoe "Use j, bro"<CR>', {noremap = true, silent = false})
map('', '<left>', ':echoe "Use h, bro"<CR>', {noremap = true, silent = false})
map('', '<right>', ':echoe "Use l, bro"<CR>', {noremap = true, silent = false})

map('i', '<a-i>', '<Esc>', {noremap = true})
map('n', '<c-t>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)
map('n', '<c-q>', ':q<CR>', default_opts)
