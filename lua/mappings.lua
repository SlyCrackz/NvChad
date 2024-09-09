require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Harpoon keybindings (using <leader>o)
map("n", "<leader>oa", "<cmd>lua require('harpoon.mark').add_file()<CR>", { desc = "Harpoon add file" })
map("n", "<leader>om", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "Harpoon toggle menu" })
map("n", "<leader>o1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", { desc = "Navigate to file 1" })
map("n", "<leader>o2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", { desc = "Navigate to file 2" })
map("n", "<leader>o3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", { desc = "Navigate to file 3" })
map("n", "<leader>o4", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", { desc = "Navigate to file 4" })
map("n", "<leader>on", "<cmd>lua require('harpoon.ui').nav_next()<CR>", { desc = "Navigate to next file" })
map("n", "<leader>op", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", { desc = "Navigate to previous file" })

-- Fugitive (Git)
map("n", "<leader>ga", "<cmd>Git add .<CR>", { desc = "Git add all changes" })
map("n", "<leader>gc", "<cmd>Git commit<CR>", { desc = "Git commit" })
map("n", "<leader>gp", "<cmd>Git push<CR>", { desc = "Git push" })
map("n", "<leader>gl", "<cmd>Git pull<CR>", { desc = "Git pull" })

-- Hop keybindings (define here)
local hop = require('hop')
local directions = require('hop.hint').HintDirection

-- Forward hopping (context menu for possible locations)
map('n', 'f', function()
  hop.hint_char1({
    direction = directions.AFTER_CURSOR,
    current_line_only = false,  -- Full-page hopping
    hint_offset = 0
  })
end, { desc = "Hop forward"})

-- Backward hopping (context menu for possible locations)
map('n', 'F', function()
  hop.hint_char1({
    direction = directions.BEFORE_CURSOR,
    current_line_only = false,  -- Full-page hopping
    hint_offset = 0
  })
end, { desc = "Hop backward"})

-- Full-page hopping (jump to any two-character combo in the buffer)
map('n', 'H', function()
  hop.hint_char2({
    hint_offset = 0  -- Full-page context
  })
end, { desc = "Hop anywhere"})

-- tmux navigator
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Navigator left" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Navigator down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Navigator up" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Navigator right" })

-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc>", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
	"n",
	"<Leader>dd",
	"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
	{ desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- rustaceanvim
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger Rustlsp testables" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
