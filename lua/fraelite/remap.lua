vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ls", vim.cmd.Ex)


-- muove porzioni di testo
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- quando incolli del testo cancellando dell'altro testo, puoi continuare a 
-- copiare il testo
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Used to increment a number
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- opens a new tab
vim.keymap.set("n", "te", ":tabedit<Return>", {silent = true} )
-- closes the current tab
vim.keymap.set("n", "tq", ":tabc<Return>", {silent = true} )

-- bufferline options to move between tabs with Tab and S-Tab
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<Return>", {silent = true})
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<Return>", {silent = true})


-- TELESCOPE keybindings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fl', builtin.git_files, {})

-- HARPOON keybindings
local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-N>", function() harpoon:list():next() end)
