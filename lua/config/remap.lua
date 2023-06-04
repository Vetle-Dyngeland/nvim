local map = vim.keymap.set

local function opts(description)
    return { silent = true, noremap = true, desc = description }
end

-- LSP
map("n", "<leader>f", vim.lsp.buf.format, opts("Format"))
map("n", "<leader>rm", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts("Search and replace"))
map("v", "<leader>rm", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts("Search and replace"))

-- Movement
map("n", "<A-j>", "<cmd>m .+1<cr>==", opts("Move down"))
map("n", "<A-k>", "<cmd>m .-2<cr>==", opts("Move up"))
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", opts("Move down"))
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", opts("Move up"))
map("v", "<A-j>", ":m '>+1<cr>gv=gv", opts("Move down"))
map("v", "<A-k>", ":m '<-2<cr>gv=gv", opts("Move up"))

-- BEST REMAPS
map("n", "<A-O>", "O<esc>")
map("n", "<A-o>", "o<esc>")

-- Windows
map("n", "<C-Up>", "<cmd>res +2<cr>", opts("Increase window height"))
map("n", "<C-Down>", "<cmd>res -2<cr>", opts("Decrease window height"))
map("n", "<C-Left>", "<cmd>vert res -2<cr>", opts("Decrease window width"))
map("n", "<C-Right>", "<cmd>vert res +2<cr>", opts("Increase window width"))

-- Buffers
map('n', '<A-,>', '<cmd>BufferPrevious<cr>', opts("Move to previous buffer"))
map('n', '<A-.>', '<cmd>BufferNext<cr>', opts("Move to next buffer"))

map('n', '<A-<>', '<cmd>BufferMovePrevious<cr>', opts("Move buffer back"))
map('n', '<A->>', '<cmd>BufferMoveNext<cr>', opts("Move buffer forward"))

map('n', '<A-1>', '<cmd>BufferGoto 1<cr>', opts("Go to buffer 1"))
map('n', '<A-2>', '<cmd>BufferGoto 2<cr>', opts("Go to buffer 2"))
map('n', '<A-3>', '<cmd>BufferGoto 3<cr>', opts("Go to buffer 3"))
map('n', '<A-4>', '<cmd>BufferGoto 4<cr>', opts("Go to buffer 4"))
map('n', '<A-5>', '<cmd>BufferGoto 5<cr>', opts("Go to buffer 5"))
map('n', '<A-6>', '<cmd>BufferGoto 6<cr>', opts("Go to buffer 6"))
map('n', '<A-7>', '<cmd>BufferGoto 7<cr>', opts("Go to buffer 7"))
map('n', '<A-8>', '<cmd>BufferGoto 8<cr>', opts("Go to buffer 8"))
map('n', '<A-9>', '<cmd>BufferGoto 9<cr>', opts("Go to buffer 9"))
map('n', '<A-0>', '<cmd>BufferLast<cr>', opts("Go to last buffer"))

map('n', '<A-p>', '<cmd>BufferPin<cr>', opts("Toggle buffer pin"))
map('n', '<A-c>', '<cmd>BufferClose!<cr>', opts("Close buffer"))

-- Other
map("t", "<leader>qq", "<C-\\><C-n>")
