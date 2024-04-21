local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

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

map("n", "<leader>qq", ":qall!<CR>", opts)

-- Resize with arrows
map("n", "<S-Up>", ":resize -4<CR>", opts)
map("n", "<S-Down>", ":resize +4<CR>", opts)
map("n", "<S-Left>", ":vertical resize -4<CR>", opts)
map("n", "<S-Right>", ":vertical resize +4<CR>", opts)

-- Navigate buffers
map("n", "<S-h>", ":bnext<CR>", opts)
map("n", "<S-l>", ":bprevious<CR>", opts)

-- Save shorcuts
map("n", "<leader>w", ":w!<CR>", opts)

map("n", "<leader><tab>", ":Neotree toggle<cr>", opts)

-- Telescope --
--[[ keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts) ]]
map("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown())<cr>", opts)
--[[ keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files({search_dirs = {'%:p'}})<cr>", opts) ]]
map("n", "<leader>fl", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>pv", ":lua require('swenv.api').pick_venv()<cr>", opts)
map("n", "<leader>,", ":nohlsearch<CR>", opts)
