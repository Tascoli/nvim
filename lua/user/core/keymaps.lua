-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

-----------
-- MODES --
-----------

--   Any_mode = "",
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-----------
-- KEYS --
-----------

-- <S-…>		shift-key			        *shift* *<S-*
-- <C-…>		control-key			        *control* *ctrl* *<C-*
-- <M-…>		alt-key or meta-key		    *META* *ALT* *<M-*
-- <A-…>		same as <M-…>			    *<A-*
-- <D-…>		command-key or "super" key	*<D-*
-- <CR>         Enter
-- <BS>         Backspace
-- <ESC>        Esc

-- Shorten function to remap
local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

--Remap space as leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better Escape
keymap("i", "jk", "<ESC>", opts)
keymap("c", "jk", "<ESC>", opts)
keymap("v", "jk", "<ESC>", opts)
keymap("x", "jk", "<ESC>", opts)

-- SAVE FINGERS
---------------

keymap('n', '<Leader>s', ':update<CR>', opts)           -- Save changes
keymap('n', '<Leader>q', ':quit<CR>', opts)             -- Quit Neovim
keymap('n', '<Leader>x', ':bd<CR>',opts)                -- close current buffer

-- BIND NOHL
-------------
-- Removes highlight of your last search

keymap("","<Leader>l","<ESC>:nohl<CR>", opts)       -- In any mode.

-- INCREMENT / DECREMENT NUMBERS
-------------------------------

keymap("","<Leader>=", "<C-a>", opts)
keymap("","<Leader>-", "<C-x>", opts)

--   COPY AND PASTE
-- ----------------------

keymap("", '<Leader>y', '"+y', opts)        -- Copy to Clipboard
keymap("", '<Leader>p', '"+p', opts)        -- Paste from Clipboard
keymap("", '<Leader>Y', '"*y', opts)        -- Copy to Primary Area
keymap("", '<Leader>P', '"*p', opts)        -- Paste from Primary Area

-- INDETENTION
---------------
-- Set TAB and Shift-TAB

keymap("n","<Tab>",">>_", opts)
keymap("n","<S-Tab>","<<_", opts)
keymap("i","<S-Tab>","<C-d>", opts)
keymap("v","<Tab>",">gv", opts)
keymap("v","<S-Tab>","<gv", opts)

-- MOVE BETWEEN TABs
---------------------

-- <S-l> - Move to tab right
-- <S-h> - Move to tab left

-- CLOSE TABs
---------------------
-- TODO:
-- keymap("", "", "", opts)
-- Command to buffer leave is "<ESC>:bn" it's close tab open

-- MOVE BETWEEN WINDOWS
---------------------
-- Better window navigation

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- SPLIT WINDOW
---------------------
-- Only in Normal mode

-- Vertically.
keymap("n", "<Leader>sv", "<C-w>v", opts)   -- Normal mode -> Ctrl + w, followed by the letter ‘v’.

-- Horizontally
keymap("n", "<Leader>sh", "<C-w>s", opts)   -- Normal mode -> Ctrl + w, followed by the letter ‘s’.

-- MOVE TEXT
---------------------
-- Move text up and down <Leader>

-- NOTE: Need review it
-- NORMAL and VISUAL modes
-- keymap("n", "<Leader>j", "<ESC>v :m .+1<CR>==", opts)
-- keymap("n", "<Leader>k", "<ESC>v :m .-2<CR>==", opts)
-- keymap("v", "<Leader>j", "<ESC>v :m .+1<CR>==", opts)
-- keymap("v", "<Leader>k", "<ESC>v :m .-2<CR>==", opts)
-- In V-Block mode move text with J and K
-- Maybe better option but need review it
-- keymap("x", "J", ":m .+1<CR>==", opts)
-- keymap("x", "K", ":m .-2<CR>==", opts)

-- TODO:
-- Review and Remapping plugins


-- PLUGINS Keymaps

-- NVIM TREE
---------------------

-- Open and Close NvimTree
keymap("n", "<Leader>e", ":NvimTreeToggle<cr>", opts)
-- keymap("n", "<S-o>", ":NvimTreeToggle<cr>", opts)

-- COMMENT
---------------------
-- The documentation can be find
-- :h comment.plugmap

vim.keymap.set('n', '<Leader>/', '<Plug>(comment_toggle_linewise_current)', { remap = true })
vim.keymap.set('v', '<Leader>/', '<Plug>(comment_toggle_linewise_visual)', { remap = true })


-- TOOGLE TERMINAL
---------------------

-- Keymap is Crtl + t - Open and close toggleterm. The config is in
-- plugins/toggleter.lua.


    -- Other samples to Comment.nvim
    -- Comment with Alt or Cmd + /

    -- vim.keymap.set('n', '<A/>', 'gcc', {remap = true })
    -- vim.keymap.set('i', '<A-/>', '<ESC>gcc', {remap = true })
    -- vim.keymap.set('v', '<A-/>', 'gc', {remap = true })
    --vim.keymap.set('', '<Leader>/', 'gco', {remap = true })

-- BUFFERLINE
---------------------

-- Navigate in Tabs
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)      -- Move next tab.
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)      -- Move previous tab.
--keymap('n', '<Leader>c', ':bdelete<CR>', opts)              -- Close Tab


-- TELESCOPE
---------------
-- Settings in telescope.lua

keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)

-- TODO COMMENT
-----------------


keymap("n", "<Leader>td", "<cmd>TodoLocList<CR>", opts)         -- Show Todo list in the project.
keymap("n", "<leader>tt", "<cmd>TodoTelescope<CR>", opts)       -- Show Todo list in anywhere.




