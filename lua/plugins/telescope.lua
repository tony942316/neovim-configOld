local M = {
    "nvim-telescope/telescope.nvim",
    event = "Bufenter",
    cmd = { "Telescope" },
    dependencies = {
        {
            "ahmedkhalf/project.nvim"
        },
        {
            "nvim-lua/plenary.nvim",
            lazy = true
        }
    }
}

function M.config()

    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup {
        defaults = {
            prompt_prefix = " ",
            selection_caret = " ",
            path_display = { "smart" },
            file_ignore_patterns = { ".git/" },
            mappings = {
                i = {
                    ["<Down>"] = actions.move_selection_next,
                    ["<Up>"] = actions.move_selection_previous,
                    ["<A-j>"] = actions.move_selection_next,
                    ["<A-k>"] = actions.move_selection_previous,
                    -- ["<Tab>"] = actions.confirmation,
                    ["jk"] = actions.close
                }
            }
        }
    }
end

return M
