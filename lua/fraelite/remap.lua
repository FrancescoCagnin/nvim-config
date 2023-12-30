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


