local M = {
    "hrsh7th/nvim-cmp",
    dependencies = {
        {
            "hrsh7th/cmp-nvim-lsp"
        },
        {
            "hrsh7th/cmp-buffer"
        },
        {
            "hrsh7th/cmp-path"
        },
        {
            "hrsh7th/cmp-cmdline"
        },
        {
            "saadparwaiz1/cmp_luasnip"
        },
        {
            "L3MON4D3/LuaSnip",
            event = "InsertEnter",
            dependencies = {
                "rafamadriz/friendly-snippets"
            }
        }
    },
    event = {
        "InsertEnter",
        "CmdlineEnter"
    }
}

function M.config()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    require("luasnip/loaders/from_vscode").lazy_load()

    local check_backspace = function()
        local col = vim.fn.col "." - 1
        return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
    end

    local kind_icons = {
        Text = "󰉿",
        Method = "m",
        Function = "󰊕",
        Constructor = "",
        Field = "",
        Variable = "󰆧",
        Class = "󰌗",
        Interface = "",
        Module = "",
        Property = "",
        Unit = "",
        Value = "󰎠",
        Enum = "",
        Keyword = "󰌋",
        Snippet = "",
        Color = "󰏘",
        File = "󰈙",
        Reference = "",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰇽",
        Struct = "",
        Event = "",
        Operator = "󰆕",
        TypeParameter = "󰊄",
        Codeium = "󰚩",
        Copilot = ""
    }

    cmp.setup {
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end
        },
        mapping = cmp.mapping.preset.insert {
            ["<A-k>"] = cmp.mapping.select_prev_item(),
            ["<A-j>"] = cmp.mapping.select_next_item(),
            ["<Tab>"] = cmp.mapping.confirm { select = true }
        },
        formatting = {
            fields = { "kind", "abbr", "menu" },
            format = function(entry, vim_item)
                vim_item.kind = kind_icons[vim_item.kind]
                vim_item.menu = ({
                    nvim_lsp = "",
                    luasnip = "",
                    buffer = "",
                    path = "",
                    emoji = ""
                })[entry.source.name]
                return vim_item
            end
        },
        sources = {
            { name = "nvim_lsp" },
            { name = "luasnip" },
            { name = "buffer" },
            { name = "path" }
        },
        confirm_opts = {
            behavior = cmp.ConfirmBehavior.Replace,
            select = false
        },
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered()
        },
        experimental = {
            ghost_text = true
        }

    }
end

return M
