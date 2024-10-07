-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

-- File: config/autocmds.lua
-- Description: Autocommand functions
-- Author: Kien Nguyen-Tuan <kiennt2609@gmail.com>
-- Define autocommands with Lua APIs
-- See: h:api-autocmd, h:augroup
local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- General settings

-- Highlight on yank
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = "1000"
        })
    end
})

-- Remove whitespace on save
autocmd("BufWritePre", {
    pattern = "",
    command = ":%s/\\s\\+$//e"
})

-- -- Auto format on save using the attached (optionally filtered) language servere clients
-- -- https://neovim.io/doc/user/lsp.html#vim.lsp.buf.format()
-- autocmd("BufWritePre", {
--     pattern = "",
--     command = ":silent lua vim.lsp.buf.format()"
-- })

-- -- Don"t auto commenting new lines
-- autocmd("BufEnter", {
--     pattern = "",
--     command = "set fo-=c fo-=r fo-=o"
-- })

-- Set two spaces idendetion by filetype
autocmd("Filetype", {
    pattern = {"xml", "html", "xhtml", "css", "scss", "javascript", "typescript", "yml", "yaml", "lua"},
    command = "setlocal shiftwidth=2 tabstop=2"
})

-- Set colorcolumn
autocmd("Filetype", {
    pattern = {"python", "rst", "c", "cpp"},
    command = "set colorcolumn=80"
})

-- Set autowrap and splel by filetype
autocmd("Filetype", {
    pattern = {"gitcommit", "markdown", "text"},
    callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.spell = true
    end
})







-- SHOW WHITHESPACE
-- MUST be inserted BEFORE the colorscheme command

vim.cmd [[autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red]]   -- TODO: - Review color for whitespace maybe 88(red)
-- vim.cmd [[autocmd BufWinEnter * match ExtraWhitespace /^\s* \s*\|\s\+$/]]
vim.cmd [[autocmd InsertLeave * match ExtraWhitespace /\s\+$/]]




-- TODO: - Review autocommand
-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd([[
--  augroup packer_user_config
--    autocmd!
--    autocmd BufWritePost plugins_setup.lua source <afile> | PackerSync
-- autocmd('BufWritePost', {pattern = 'plugins_setup.lua', command = 'source <afile> | PackerSync'})


-- Transparency without plugin
-- vim.cmd [[
--   highlight Normal guibg=none
--   highlight NonText guibg=none
--   highlight Normal ctermbg=none
--   highlight NonText ctermbg=none
-- ]]

-- transparent background
-- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })
