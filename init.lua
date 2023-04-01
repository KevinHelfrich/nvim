require('plugins')
require('config/feline')
require('config/alpha')
require('config/cmp')
require('config/treesitter')
require('config/barbar')

vim.cmd([[colorscheme gruvbox-baby]])

function numberToggle()
    if vim.o.relativenumber then
        vim.o.number = true
        vim.o.relativenumber = false
    else
        vim.o.number = false
        vim.o.relativenumber = true
    end
end

function nnoremap(keys, binding)
    vim.cmd("nnoremap " .. keys .. " " .. binding)
end

function inoremap(keys, binding)
    vim.cmd("inoremap " .. keys .. " " .. binding)
end

function xnoremap(keys, binding)
    vim.cmd("xnoremap " .. keys .. " " .. binding)
end

function vnoremap(keys, binding)
    vim.cmd("vnoremap " .. keys .. " " .. binding)
end

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.wrap = true
vim.o.hidden = true

vim.o.relativenumber = true

vim.o.listchars = "tab:>-,trail:.,extends:>"
vim.o.list = true

vim.o.ignorecase = true

vim.g.mapleader = " "

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-t>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})

inoremap("jj", "<esc>")

nnoremap("j", "gj")
nnoremap("k", "gk")

nnoremap("/","/\\v")
vnoremap("/","/\\v")

nnoremap("<cr>", ":call v:lua.numberToggle()<cr>")

nnoremap("<Leader>-", ":Explore<cr>")
nnoremap("<Leader>.", ":bn<cr>")
nnoremap("<Leader>,", ":bp<cr>")
nnoremap("<leader>bd", "<C-w>s:bn<cr><C-W>j:bd<cr>")

nnoremap("<C-j>", "<C-W>j")
nnoremap("<C-k>", "<C-W>k")
nnoremap("<C-h>", "<C-W>h")
nnoremap("<C-l>", "<C-W>l")

nnoremap("<leader>]", ":put=''<cr>k")
nnoremap("<leader>[", "O<esc>j")

xnoremap("<", "<gv")
xnoremap(">", ">gv")

nnoremap("<up>", "<nop>")
nnoremap("<down>", "<nop>")
nnoremap("<left>", "<nop>")
nnoremap("<right>", "<nop>")
inoremap("<up>", "<nop>")
inoremap("<down>", "<nop>")
inoremap("<left>", "<nop>")
inoremap("<right>", "<nop>")

nnoremap("<leader>1", "<Cmd>BufferGoto 1<cr>")
nnoremap("<leader>2", "<Cmd>BufferGoto 2<cr>")
nnoremap("<leader>3", "<Cmd>BufferGoto 3<cr>")
nnoremap("<leader>4", "<Cmd>BufferGoto 4<cr>")
nnoremap("<leader>5", "<Cmd>BufferGoto 5<cr>")
nnoremap("<leader>6", "<Cmd>BufferGoto 6<cr>")
nnoremap("<leader>7", "<Cmd>BufferGoto 7<cr>")
nnoremap("<leader>8", "<Cmd>BufferGoto 8<cr>")
nnoremap("<leader>9", "<Cmd>BufferGoto 9<cr>")
