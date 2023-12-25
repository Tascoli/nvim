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
                    width = 20,
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
                                arrow_closed = "", -- arrow when folder is closed
                                arrow_open = "", -- arrow when folder is open
                            },
                        },
                        show = {
                            file = true,
                            folder = true,
                            folder_arrow = true,
                            git = false,
                        },
                    },
                },
                filters = {
                    dotfiles = true,
                },
            })
        end,
}
