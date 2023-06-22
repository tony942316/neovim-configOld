-- define options
local opts = {
    noremap = true,                                 -- non-recursive... idk someone said this was important
    silent = true                                   -- don't talk to me
}

-- vim.keymap.set(.....) too long ain't got time for that
local keymapN = function(new, old)
    vim.keymap.set("n", new, old, opts)
end
local keymapI = function(new, old)
    vim.keymap.set("i", new, old, opts)
end
local keymapV = function(new, old)
    vim.keymap.set("v", new, old, opts)
end
local keymapT = function(new, old)
    vim.keymap.set("t", new, old, opts)
end

vim.keymap.set("", "<Space>", "<Nop>", opts)        -- just in case
vim.g.mapleader = " "                               -- space is a good leader

-----------------
-- NORMAL MODE --
-----------------

-- Window Navigation
keymapN("<C-h>", "<C-w>h")                          -- left
keymapN("<C-j>", "<C-w>h")                          -- down
keymapN("<C-k>", "<C-w>h")                          -- up
keymapN("<C-l>", "<C-w>h")                          -- right

-- Buffer Navigation
keymapN("<S-l>", ":bnext<CR>")
keymapN("<S-h>", ":bprevious<CR>")
keymapN("<S-q>", "<cmd>Bdelete!<CR>")

-- Window Resizing
keymapN("<C-Up>", ":resize -2<CR>")
keymapN("<C-Down>", ":resize +2<CR>")
keymapN("<C-Left>", ":vertical resize -2<CR>")
keymapN("<C-Right>", ":vertical resize +2<CR>")

-- give me a terminal
keymapN("<leader>t", ":terminal<CR>")

-----------------
-- VISUAL MODE --
-----------------

-- why would "<" exit visual mode?
keymapV("<", "<gv")
keymapV(">", ">gv")

-- when pasting overwrites your clipboard...
keymapV("p", "P")

-----------------
-- INSERT MODE --
-----------------

-- esc is just so far way...
keymapI("jk", "<ESC>")

-------------------
-- TERMINAL MODE --
-------------------

-- some of these maps are just crazy
keymapT("jk", "<C-\\><C-N>")

--------------
-- NVIMTREE --
--------------

keymapN("<leader>e", ":NvimTreeToggle<CR>")

---------------
-- TELESCOPE --
---------------

keymapN("<leader>ff", ":Telescope find_files<CR>")
keymapN("<leader>ft", ":Telescope live_grep<CR>")
keymapN("<leader>fp", ":Telescope projects<CR>")
keymapN("<leader>fb", ":Telescope buffers<CR>")
