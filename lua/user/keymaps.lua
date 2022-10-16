local map = vim.api.nvim_set_keymap

map("n", "<Space>", "<NOP>", { noremap = true, silent = true })

-- Leader key
vim.g.mapleader = " "

-- Ease window movement
map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Scroll down / up
map("n", "<C-Up>", "<C-u>", { noremap = true, silent = true })
map("n", "<C-Down>", "<C-d>", { noremap = true, silent = true })

-- Toggle highlight search
map("n", "<Leader>hl", ":set hlsearch!<CR>", { noremap = true, silent = true })

-- Toggle file explorer
map("n", "<Leader>e", ":lua require('user.explorer').toggle_replace()<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Toggle mouse
map("n", "<Leader>tm", ":lua require('user.functions').toggle_mouse()<CR>", { noremap = true, silent = true })

-- Toggle colorcolumn 
-- map("n", "<Leader>tc", ":lua require('user.functions').toggle_colorcolumn()<CR>", { noremap = true, silent = true })

-- Move selected line / block of text in visual mode
-- map("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
-- map("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true })

-- Telescope
map("n", "<Leader>f", ":Telescope find_files previewer=false theme=dropdown disable_devicons=true<CR>", { noremap = true, silent = true })

-- Comment
map("n", "<Leader>/", ":CommentToggle<CR>", { noremap = true, silent = true })
map("v", "<Leader>/", ":CommentToggle<CR>", { noremap = true, silent = true })

-- Trouble

-- Trouble Commands:
-- - TroubleToggle
-- - TroubleToggle workspace_diagnostics
-- - TroubleToggle document_diagnostics
-- - TroubleToggle quickfix
-- - TroubleToggle loclist

map("n", "<Leader>d", ":TroubleToggle<CR>", { noremap = true, silent = true })

-- Harpoon
map("n", "<Leader>j", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true, silent = true })
map("n", "<Leader>h", ":lua require('harpoon.mark').add_file()<CR>", { noremap = true, silent = true })
map("n", "L", ":lua require('harpoon.ui').nav_next()<CR>", { noremap = true, silent = true })
map("n", "H", ":lua require('harpoon.ui').nav_prev()<CR>", { noremap = true, silent = true })

-- Gitsigns
map("n", "<Leader>,", ":Gitsigns preview_hunk<CR>", { noremap = true, silent = true })
map("n", "<Leader>>", ":Gitsigns next_hunk<CR>", { noremap = true, silent = true })
map("n", "<Leader><", ":Gitsigns prev_hunk<CR>", { noremap = true, silent = true })
map("n", "<Leader>.", ":Gitsigns diffthis<CR>", { noremap = true, silent = true })
map("n", "<Leader>u", ":Gitsigns reset_hunk<CR>", { noremap = true, silent = true })

-- I hate escape
map("i", "<C-c>", "<ESC>", { noremap = true, silent = true })
