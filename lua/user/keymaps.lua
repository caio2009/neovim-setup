local map = vim.api.nvim_set_keymap

map("n", "<Space>", "<NOP>", { noremap = true, silent = true })

-- Leader key
vim.g.mapleader = " "

-- Toggle highlight search
map("n", "<Leader>hl", ":set hlsearch!<CR>", { noremap = true, silent = true })

-- Toggle explore
map("n", "<Leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Better window movement
map("n", "<C-h>", "<C-w>h", { silent = true })
map("n", "<C-j>", "<C-w>j", { silent = true })
map("n", "<C-k>", "<C-w>k", { silent = true })
map("n", "<C-l>", "<C-w>l", { silent = true })

-- Move selected line / block of text in visual mode
map("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
map("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true })

-- Resize window
map("n", "<C-Up>", ":resize +10<CR>", { noremap = true, silent = true })
map("n", "<C-Down>", ":resize -10<CR>", { noremap = true, silent = true })
map("n", "<C-Left>", ":vertical resize -10<CR>", { noremap = true, silent = true })
map("n", "<C-Right>", ":vertical resize +10<CR>", { noremap = true, silent = true })

-- Telescope
map("n", "<Leader>ff", ":Telescope find_files previewer=false theme=dropdown<CR>", { noremap = true, silent = true })

-- Comment
map("n", "<Leader>/", ":CommentToggle<CR>", { noremap = true, silent = true })
map("v", "<Leader>/", ":CommentToggle<CR>", { noremap = true, silent = true })

-- Trouble

-- Trouble Commands:
-- > TroubleToggle
-- > TroubleToggle workspace_diagnostics
-- > TroubleToggle document_diagnostics
-- > TroubleToggle quickfix
-- > TroubleToggle loclist

map("n", "<Leader>dd", ":TroubleToggle<CR>", { noremap = true, silent = true })

-- Harpoon
map("n", "<Leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true, silent = true })
map("n", "<Leader>hm", ":lua require('harpoon.mark').add_file()<CR>", { noremap = true, silent = true })
map("n", "L", ":lua require('harpoon.ui').nav_next()<CR>", { noremap = true, silent = true })
map("n", "H", ":lua require('harpoon.ui').nav_prev()<CR>", { noremap = true, silent = true })

-- I hate escape
-- map("i", "jk", "<ESC>", { noremap = true, silent = true })
