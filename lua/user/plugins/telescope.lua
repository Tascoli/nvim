-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

return{
    {
-- plugins/telescope.lua:
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = {
            { 'nvim-lua/plenary.nvim',
              'nvim-treesitter/nvim-treesitter',
            }
        },
      config = function()
          require('telescope').setup{
            defaults = {
            -- Default configuration for telescope goes here:
            -- config_key = value,
            mappings = {

                        -- TELESCOPE
                        ---------------------
                        -- local builtin = require('telescope.builtin')

                        --vim.keymap.set('n', '<Leader>sf', builtin.find_files, {})
                        --vim.keymap.set('n', '<Leader>sg', builtin.live_grep, {})
                        --vim.keymap.set('n', '<Leader>sb', builtin.buffers, {})
                        --vim.keymap.set('n', '<Leader>sh', builtin.help_tags, {})

                        -- keymap("n", "<C-Space>", "<cmd>WhichKey \\<leader><cr>", opts)
            i = {
                -- map actions.which_key to <C-h> (default: <C-/>)
                -- actions.which_key shows the mappings for your picker,
                -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                -- ["<C-h>"] = "which_key"
                }
              }
            },
            pickers = {
                -- Default configuration for builtin pickers goes here:
                -- picker_name = {
                --   picker_config_key = value,
                --   ...
                -- }
                -- Now the picker_config_key will be applied every time you call this
                -- builtin picker
            },
            extensions = {
                -- Your extension configuration goes here:
                -- extension_name = {
                --   extension_config_key = value,
                -- }
                -- please take a look at the readme of the extension you want to configure
            },
        }
      end,
    }
}
