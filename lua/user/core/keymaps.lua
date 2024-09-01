-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

M = {}

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- keymap("n", "<C-Space>", "<cmd>WhichKey \\<leader><cr>", opts)
-- keymap("n", "<C-i>", "<C-i>", opts)

-- Modes
--   Any_mode = "",
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Keys
-- <S-…>		shift-key			        *shift* *<S-*
-- <C-…>		control-key			        *control* *ctrl* *<C-*
-- <M-…>		alt-key or meta-key		    *META* *ALT* *<M-*
-- <A-…>		same as <M-…>			    *<A-*
-- <D-…>		command-key or "super" key	*<D-*
-- <CR>         Enter
-- <BS>         Backspace
-- <ESC>        Esc

-- INDETENTION
-- -------------
-- Set TAB and Shift-TAB

keymap("n","<Tab>",">>_", opts)
keymap("n","<S-Tab>","<<_", opts)
keymap("i","<S-Tab>","<C-D>", opts)
keymap("v","<Tab>",">gv", opts)
keymap("v","<S-Tab>","<gv", opts)

-- SAVE FINGERS

keymap('n', '<Leader>s', ':update<CR>', opts)   -- Save changes
keymap('n', '<Leader>q', ':quit<CR>', opts)     -- Quit Neovim


--      BIND NOHL
-- Removes highlight of your last search
-- ``<M>`` stands for ``Modify or Alt`` and therefore ``<M-l>`` stands for ``Alt+l``

keymap("","<Leader>l","<ESC>:nohl<CR>", opts)       -- In any mode.
-- keymap("i","<M-l>","<ESC>:nohl<CR>", opts)
-- keymap("v","<M-l>","<ESC>:nohl<CR>", opts)
-- keymap("c","<M-l>","<ESC>:nohl<CR>", opts)

--   COPY AND PASTE
-- ----------------------

keymap("", '<Leader>y', '"+y', opts)        -- Copy to Clipboard
keymap("", '<Leader>p', '"+p', opts)        -- Paste from Clipboard
keymap("", '<Leader>Y', '"*y', opts)        -- Copy to Primary Area NOTE: It seems doesn't works
keymap("", '<Leader>P', '"*y', opts)        -- Paste from Primary Area NOTE: It seems doesn't works


-- Normal

-- Split it vertically.
-- Normal mode -> Ctrl + w, followed by the letter ‘v’.
-- Split it horizontally
-- Normal mode -> Ctrl + w, followed by the letter ‘s’.

-- FIXME:
-- Need create a function that indentify a OS and setup keymap.

-- if ostype == 'darwin' or 'mac' then
--     require 'user.core.mac_maps'
-- else
--     require 'user.core.linux_maps'
-- end

-- Better window navigation <M is Ctrl
-- Exemple: keymap("n", "<M-h>", "<C-w>h", opts)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- keymap("n", "<C-tab>", "<c-6>", opts)


-- Better Escape
keymap("i", "jk", "<ESC>", opts)
keymap("c", "jk", "<ESC>", opts)
keymap("v", "jk", "<ESC>", opts)
keymap("x", "jk", "<ESC>", opts)


-- NORMAL and VISUAL modes
-- Move text up and down <Leader>


keymap("n", "<Leader>j", "<ESC>v :m .+1<CR>==", opts)
keymap("n", "<Leader>k", "<ESC>v :m .-2<CR>==", opts)
keymap("v", "<Leader>j", "<ESC>v :m .+1<CR>==", opts)
keymap("v", "<Leader>k", "<ESC>v :m .-2<CR>==", opts)

-- In V-Block mode move text with J and K
-- NOTE: maybe better option but need review it

-- keymap("x", "J", ":m .+1<CR>==", opts)
-- keymap("x", "K", ":m .-2<CR>==", opts)



-- PLUGINS Keymaps

-- NVIM TREE

-- Open and Close NvimTree
keymap("n", "<Leader>e", ":NvimTreeToggle<cr>", opts)


-- COMMENT
-- The documentation can be find
-- :h comment.plugmap


vim.keymap.set('n', '<Leader>/', '<Plug>(comment_toggle_linewise_current)', { remap = true })
vim.keymap.set('v', '<Leader>/', '<Plug>(comment_toggle_linewise_visual)', { remap = true })

-- TOOGLE TERMINAL

-- Keymap is Crtl + t - Open and close toggleterm. The config is in
-- plugins/toggleter.lua.


    -- Other samples to Comment.nvim
    -- Comment with Alt or Cmd + /

    -- vim.keymap.set('n', '<A/>', 'gcc', {remap = true })
    -- vim.keymap.set('i', '<A-/>', '<ESC>gcc', {remap = true })
    -- vim.keymap.set('v', '<A-/>', 'gc', {remap = true })
    --vim.keymap.set('', '<Leader>/', 'gco', {remap = true })

-- BUFFERLINE

-- Navigate in Tabs
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)      -- Move next tab.
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)      -- Move previous tab.
--keymap('n', '<Leader>c', ':bdelete<CR>', opts)              -- Close Tab

-- Todo Comment
-- keymap('n', '<Leader>td', ':TodoLocList<CR>', opts)         -- Show Todo list in the project.
-- keymap('n', '<Leader>tt', ':TodoTelescope<CR>', opts)       -- Show Todo list in anywhere.



-- TELESCOPE

--local builtin = require('telescope.builtin')

--vim.keymap.set('n', '<Leader>sf', builtin.find_files, {})
--vim.keymap.set('n', '<Leader>sg', builtin.live_grep, {})
--vim.keymap.set('n', '<Leader>sb', builtin.buffers, {})
--vim.keymap.set('n', '<Leader>sh', builtin.help_tags, {})

return M

