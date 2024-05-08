local opts = { noremap = true, silent = true }


-- Shorten function name
local map = vim.api.nvim_set_keymap

--Remap space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", ";", ":", opts)
map("v", ";", ":", opts)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

map("n", "<leader>sv", "<C-w>v", opts)
map("n", "<leader>sh", "<C-w>s", opts)
map("n", "<leader>se", "<C-w>=", opts)
map("n", "<leader>x", "<cmd>close<cr>", opts)

map("n", "<leader>qq", ":qall!<CR>", opts)

-- Resize with arrows
map("n", "<S-Up>", ":resize -4<CR>", opts)
map("n", "<S-Down>", ":resize +4<CR>", opts)
map("n", "<S-Left>", ":vertical resize -4<CR>", opts)
map("n", "<S-Right>", ":vertical resize +4<CR>", opts)

map("n", "J", "mzJ`z", opts)
map("v", "<S-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<S-k>", ":m '<-2<CR>gv=gv", opts)

-- Navigate buffers
map("n", "<S-h>", ":bnext<CR>", opts)
map("n", "<S-l>", ":bprevious<CR>", opts)

map("n", "<leader>fk", ":cprev<cr>", opts)
map("n", "<leader>fj", ":cnext<cr>", opts)

-- Save shorcuts
map("n", "<leader>w", ":w!<CR>", opts)

map("n", "<leader><tab>", ":NvimTreeToggle<cr>", opts)

-- Telescope --
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fl", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fs", "<cmd>Telescope grep_string<cr>", opts)
-- quick search something --
map("v", "<leader>f", "y<ESC>:Telescope live_grep default_text=<c-r>0<CR>", opts)


map("n", "<leader>pv", ":lua require('swenv.api').pick_venv()<cr>", opts)
map("n", "<leader>lo", ":Lspsaga outline<cr>", opts)
map("n", "<leader>,", ":nohlsearch<CR>", opts)
