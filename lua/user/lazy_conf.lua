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
-- vim.opt.rtp:prepend(vim.env.LAZY or lazypath)
vim.opt.rtp:prepend(lazypath)
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

-- require ("lazy").setup("user.plugins")
require("lazy").setup({ {import = "user.plugins" }},
    {
    checker = {
        enabled = true,
        notify = false,
        },
    change_detection = {
        notify = false,
        },
    })


local modules = {"core.autocommand", "core.options", "core.keymaps"}

for _, mod in ipairs(modules) do
    local ok, err = pcall(require, mod)
    -- config.custom may be empty. It's a optional module
    -- if not ok and not mod == "config/custom" then
    --     error(("Error loading %s...\n\n%s"):format(mod, err))
    -- end
end
