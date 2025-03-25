require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local nomap = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Telescope

map("n", "<leader>sw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>sb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>sh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>so", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>sz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>sf", "<cmd>Telescope find_files<CR>", { desc = "telescope find files" })
map(
  "n",
  "<leader>sa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "telescope find all files" }
)

nomap("n", "<leader>fw")
nomap("n", "<leader>fb")
nomap("n", "<leader>fh")
nomap("n", "<leader>fo")
nomap("n", "<leader>fz")
nomap("n", "<leader>ff")
nomap("n", "<leader>fa")

-- MarkdownPreview

map("n", "<leader>mp", "<Plug>MarkdownPreview", { desc = "markdown preview" })
map("n", "<leader>mg", "<cmd>Glow<CR>", { desc = "markdown preview: glow" })

-- Quit

map("n", "<leader>q", "<cmd>quit", { desc = "quit" })
