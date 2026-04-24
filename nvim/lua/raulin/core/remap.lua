vim.g.mapleader = " "

-- Disable Space bar since it'll be used as the leader key
vim.keymap.set("n", "<leader>", "<nop>")

-- Redo remap
vim.keymap.set("n", "U", "<C-r>")

-- Swap between split buffers
vim.keymap.set("n", "<C-Up>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-Down>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-Left>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-Right>", ":wincmd l<CR>")

vim.keymap.set("n", "<S-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<S-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<S-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<S-l>", ":wincmd l<CR>")

-- Save and quit current file quicker
vim.keymap.set("n", "<C-w>", "<cmd>w<cr>", { silent = false })
vim.keymap.set("n", "<C-q>", "<cmd>q<cr>", { silent = false })
vim.keymap.set("n", "<leader>q", ":bd<CR>")

-- Little one from Primeagen to mass replace string in a file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { silent = false })

-- Navigate through buffers
vim.keymap.set("n", "<C-L>", ":bnext<CR>", { silent = false })
vim.keymap.set("n", "<C-H>", ":bprevious<CR>", { silent = false })

-- Close currently active buffer
vim.keymap.set("n", "<C-c>", ":bwipeout<CR>", { silent = false })

vim.keymap.set("n", "<C-f>", "/")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>l", ":Lazy<CR>")

-- vim.keymap.set(
--     "n",
--     "<leader>jj",
--     "<cmd>:lua require('pdfview.renderer').next_page()<CR>",
--     { desc = "PDFview: Next page" }
-- )
-- vim.keymap.set(
--     "n",
--     "<leader>kk",
--     "<cmd>:lua require('pdfview.renderer').previous_page()<CR>",
--     { desc = "PDFview: Previous page" }
-- )

-- Oil.nvim
vim.keymap.set("n", "<C-]>", ":Neotree toggle right<CR>", { desc = "Toggle Neo-tree" })
vim.keymap.set("n", "<leader>e", ":Neotree float toggle<CR>", { desc = "Toggle Neo-tree" })
vim.keymap.set("n", "<C-b>", "<Cmd>Neotree focus<CR>", { desc = "Focus Neo-tree" })

-- Simple keymap to open Navbuddy (e.g., using <leader>n)
vim.keymap.set("n", "<C-p>", ":Navbuddy<cr>", { desc = "Toggle Navbuddy" })
