-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

return {

-- NIGHTFLY GUICOLORS
    {
    "bluz71/vim-nightfly-guicolors",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme nightfly]])
    end,
    },

-- GRUVBOX

    {
    "ellisonleao/gruvbox.nvim",
        priority = 1000 ,
--      config = function()
--          -- load the colorscheme here
--          vim.cmd([[colorscheme gruvbox]])
--      end,
    },

-- NIGHTFOX

    { "EdenEast/nightfox.nvim",
        priority = 1000,
--        require("nightfox").setup({
--            opition = {
--                stykes = {
--                    comments = "italic",
--                    keywords = "bold",
--                    types = "italic, bold",
--                }
--            }
--        })
--      config = function()
--          -- load the colorscheme here
--              vim.cmd([[colorscheme nightfox]])
--      end,
    },
}
