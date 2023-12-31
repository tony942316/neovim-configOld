local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath 
    }
end
vim.opt.rtp:prepend(lazypath)

-- just in case
vim.g.mapleader = " "

require("lazy").setup("plugins", {
    install = { colorscheme = { require("utils.ColorScheme") } },
    defaults = { lazy = true },
    ui = { 
        wrap = "true",
        icons = {
            cmd = " ",
            config = "",
            event = "",
            ft = " ",
            init = " ",
            import = " ",
            keys = " ",
            lazy = "󰒲 ",
            loaded = "●",
            not_loaded = "○",
            plugin = " ",
            runtime = " ",
            source = " ",
            start = "",
            task = "✔ ",
            list = {
                "●",
                "➜",
                "★",
                "‒"
            }
        }
    },
    change_detection = { enabled = true, notify = false },
    debug = false,
    performance = {
        rtp = {
            disabled_plugins = {
                "gzip",
                "matchit",
                "matchparen",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin"
            }
        }
    }
})

vim.cmd.colorscheme(require("utils.ColorScheme"))
vim.cmd("TransparentEnable")
