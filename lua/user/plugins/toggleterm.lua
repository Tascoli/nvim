-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com


return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
--        opts = {--[[ things you want to change go here]]},
        config = function()
            require("toggleterm").setup
        {
            -- size can be a number or function which is passed the current terminal
            size = 22,
            open_mapping = [[<leader>t]],-- TODO: Change keymap to open toogleterm.
            hide_numbers = true, -- hide the number column in toggleterm buffers
            shade_filetypes = {},
            shade_terminals = false, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
            shading_factor = '3', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
            start_in_insert = true,
            insert_mappings = true, -- whether or not the open mapping applies in insert mode
            terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
            persist_size = true,
            direction = 'float', -- 'vertical' | 'horizontal' | 'tab' | 'float'
            close_on_exit = true, -- close the terminal window when the process exits
         -- shell = vim.o.shell, -- change the default shell
         -- This field is only relevant if direction is set to 'float'
            float_opts = {
                -- The border key is *almost* the same as 'nvim_open_win'
                -- see :h nvim_open_win for details on borders however
                -- the 'curved' border is a custom border type
                -- not natively supported but implemented in this plugin.
                border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved'
                -- width = <value>,
                -- height = <value>,
                winblend = 3,
                         }
        }
        end,
    },
}

--Go to the documentation for more information on Github project.

                -- function _G.set_terminal_keymaps()
                -- local opts = {noremap = true}
                -- vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
                -- -- vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
                -- -- vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
                -- -- vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
                -- -- vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
                -- -- vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
                -- end

                -- if you only want these mappings for toggle term use term://*toggleterm#* instead
                -- vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

