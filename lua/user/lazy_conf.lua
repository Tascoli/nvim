-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

-- Bootstrap to intalation Lazy plug manager.

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

--------------------------------------------------------------------------------


-- Call the Lazy with this different ways:


-- This way the plugins are passed directaly between the braces.
--
-- require("lazy").setup({
--
--   {plugin here!},
--   {other plugin here!},
--})

-- This way the plugin manager acess the directory 'plugins' and recive the plugin like a function put into  differents files.
--

require ("lazy").setup("user.plugins")
