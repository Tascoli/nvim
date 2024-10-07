-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

return {

-- TOKYONIGHT

    {
    "folke/tokyonight.nvim",
        -- lazy = false,
        -- priority = 1000,
        -- opts = {},
        -- config = function()
        --     --load the colorscheme here
        --     vim.cmd([[colorscheme tokyonight]])
        -- end,
    },

-- DARKPLUS - like VSCODE

    {
    "martinsione/darkplus.nvim",
        -- priority = 1000,
        -- config = function()
        --         -- load the colorscheme here
        --         vim.cmd([[colorscheme darkplus]])
        -- end,
    },


-- ONE_DARK

    {
    'navarasu/onedark.nvim',
        -- priority = 1000, -- make sure to load this before all the other start plugins
        -- config = function()
        --     -- load the colorscheme here
        --     vim.cmd([[colorscheme onedark]])
        -- end,
    },

-- NIGHTFLY GUICOLORS

    {
    "bluz71/vim-nightfly-guicolors",
        -- priority = 1000, -- make sure to load this before all the other start plugins config = function()
        --     -- load the colorscheme here
        --     vim.cmd([[colorscheme nightfly]])
        -- end,
    },

-- GRUVBOX

    {
    "ellisonleao/gruvbox.nvim",
      -- priority = 1000 ,
      -- config = function()
      --     -- load the colorscheme here
      --     vim.cmd([[colorscheme gruvbox]])
      -- end,
    },

-- NIGHTFOX

    {
    "EdenEast/nightfox.nvim",
        -- priority = 1000,
        -- setup = function()
        --     require("nightfox").setup({
        --     opition = {
        --         stykes = {
        --             comments = "italic",
        --             keywords = "bold",
        --             types = "italic, bold",
        --         },
        --     },
        -- })
        -- end,
        -- config = function()
        --     -- load the colorscheme here
        --     vim.cmd([[colorscheme nightfox]])
        -- end,
    },


-- CATPPUCCIN

  {
    "catppuccin/nvim",
      priority = 1000,
      name = "catppuccin",
      setup = function()
         require("catppuccin").setup({
            flavour = "mocha", -- latte, frappe, macchiato, mocha
            background = { -- :h background
                light = "latte",
                dark = "mocha",
            },
            transparent_background = true, -- disables setting the background color.
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = false, -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.15, -- percentage of the shade to apply to the inactive window
                },
            no_italic = false, -- Force no italic
            no_bold = false, -- Force no bold
            no_underline = false, -- Force no underline
            styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" }, -- Change the style of comments
                conditionals = { "italic" },
                loops = {},
                functions = {"bold"},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
                -- miscs = {}, -- Uncomment to turn off hard-coded styles
                },
            color_overrides = {},
            custom_highlights = {},
            default_integrations = true,
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = false,
                indent_blankline = {
                  enabled = true,
                  scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
                  colored_indent_levels = true,
                },
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
            },
      })
      end,
      config = function()
        vim.cmd("colorscheme catppuccin") --catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
      end,
  },

-- DOOM_ONE

   {
    'NTBBloodbath/doom-one.nvim',
        -- priority = 1000,
        -- setup = function()
        -- -- Add color to cursor
        --         vim.g.doom_one_cursor_coloring = false
        --         -- Set :terminal colors
        --         vim.g.doom_one_terminal_colors = true
        --         -- Enable italic comments
        --         vim.g.doom_one_italic_comments = false
        --         -- Enable TS support
        --         vim.g.doom_one_enable_treesitter = true
        --         -- Color whole diagnostic text or only underline
        --         vim.g.doom_one_diagnostics_text_color = false
        --         -- Enable transparent background
        --         vim.g.doom_one_transparent_background = false
        --
        --         -- Pumblend transparency
        --         vim.g.doom_one_pumblend_enable = false
        --         vim.g.doom_one_pumblend_transparency = 20
        --
        --         -- Plugins integration
        --         vim.g.doom_one_plugin_neorg = true
        --         vim.g.doom_one_plugin_barbar = false
        --         vim.g.doom_one_plugin_telescope = false
        --         vim.g.doom_one_plugin_neogit = true
        --         vim.g.doom_one_plugin_nvim_tree = true
        --         vim.g.doom_one_plugin_dashboard = true
        --         vim.g.doom_one_plugin_startify = true
        --         vim.g.doom_one_plugin_whichkey = true
        --         vim.g.doom_one_plugin_indent_blankline = true
        --         vim.g.doom_one_plugin_vim_illuminate = true
        --         vim.g.doom_one_plugin_lspsaga = false
        -- end,
        -- config = function()
        --     vim.cmd("colorscheme doom-one")
        -- end,

        },

}
