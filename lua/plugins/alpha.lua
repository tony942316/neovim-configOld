local M = {
    "goolord/alpha-nvim",
    event = "VimEnter"
}

function M.config()
    local alpha = require "alpha"
    local dashboard = require "alpha.themes.dashboard"
    dashboard.section.header.val = {
      [[      _=====_                               _=====_      ]],
      [[     / _____ \                             / _____ \     ]],
      [[   +.-'_____'-.---------------------------.-'_____'-.+   ]],
      [[  /   |     |  '.        S O N Y        .'  |  _  |   \  ]],
      [[ / ___| /|\ |___ \                     / ___| /_\ |___ \ ]],
      [[/ |      |      | ;  __           _   ; | _         _ | ;]],
      [[| | <---   ---> | | |__|         |_:> | ||_|       (_)| |]],
      [[| |___   |   ___| ;SELECT       START ; |___       ___| ;]],
      [[|\    | \|/ |    /  _     ___      _   \    | (X) |    /|]],
      [[| \   |_____|  .','" "', |___|  ,'" "', '.  |_____|  .' |]],
      [[|  '-.______.-' /       \ANALOG/       \  '-._____.-'   |]],
      [[|               |       |------|       |                |]],
      [[|              /\       /      \       /\               |]],
      [[|             /  '.___.'        '.___.'  \              |]],
      [[|            /                            \             |]],
      [[ \          /                              \           / ]],
      [[  \________/                                \_________/  ]]
    }
    dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
        dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("p", " " .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
        dashboard.button("r", "󰄉 " .. " Recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
        dashboard.button("q", " " .. " Quit", ":qa<CR>"),
    }
    local function footer()
        return "https://github.com/tony942316"
    end
    dashboard.section.footer.val = footer()

    dashboard.section.footer.opts.hl = "Type"
    dashboard.section.header.opts.hl = "Include"
    dashboard.section.buttons.opts.hl = "Keyword"

    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)
end

return M
