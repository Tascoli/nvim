-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

return{

    "nvim-tree/nvim-tree.lua",
        version = '*',
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
        config = function()
            require("nvim-tree").setup({

                sort_by = "case_sensitive",
                view = {
                    adaptive_size = true,
                    width = 10,
                    -- mappings = {
                    --     custom_only = false,
                    --     list = {
                    --         { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
                    --         { key = "h", cb = tree_cb "close_node" },
                    --         { key = "v", cb = tree_cb "vsplit" },
                    --     },
                    -- },
                },
                git = {
                    enable = true,
                },

                renderer = {
                    group_empty = true,
                    highlight_git = true,
                    icons = {
                        webdev_colors = true,
                        git_placement = "before",
                        padding = " ",
                        symlink_arrow = " ➛ ",
                        glyphs = {
                            folder = {
                                arrow_closed = "󱦰", -- arrow when folder is closed
                                arrow_open = "󱞩", -- arrow when folder is open
                                -- arrow_closed = "", -- arrow when folder is closed
                                -- arrow_open = "", -- arrow when folder is open
                            },
                        },
                        show = {
                            file = true,
                            folder = true,
                            folder_arrow = false,
                            git = false,
                        },
                    },

                    -- actions = {
                    --     open_file = {
                    --         window_picker = {
                    --             enable = false,
                    --         },
                    --     },
                    -- },
                },
                filters = {
                    dotfiles = true, },
            })
        end,
}
