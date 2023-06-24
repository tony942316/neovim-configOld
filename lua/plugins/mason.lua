local M = {
    "williamboman/mason.nvim",
    cmd = "Mason",
    event = "BufReadPre",
    dependencies = {
        {
            "williamboman/mason-lspconfig.nvim",
        }
    }
}

local settings = {
    ui = {
        border = "none",
        icons = {

        }
    },
    log_level = vim.log.levels.INFO,
    max_concurrent_installers = 4
}

function M.config()
    require("mason").setup(settings)
    require("mason-lspconfig").setup {
        ensure_installed = require("utils.LSPServers"),
        automatic_installation = true
    }
end

return M
