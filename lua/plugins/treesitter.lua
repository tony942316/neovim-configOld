local M = {
    "nvim-treesitter/nvim-treesitter",
    event = "BufReadPost",
    dependencies = {
        {
            "JoosepAlviste/nvim-ts-context-commentstring",
            event = "VeryLazy"
        },
        {
            "nvim-tree/nvim-web-devicons",
            event = "VeryLazy"
        }
    }
}

function M.config()
    local treesitter = require "nvim-treesitter"
    local configs = require "nvim-treesitter.configs"

    configs.setup {
        ensure_installed = require("utils.SyntaxHighlights").languages,
        sync_install = false,

        highlight = {
            enable = true
        }
    }
end

return M
