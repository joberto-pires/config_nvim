local map = vim.keymap.set

--map("n", ";", ":", { desc = "CMD enter command mode" })
--vim.keymap.del('n', '<leader>v')
--vim.keymap.del('n', '<leader>h')
--vim.keymap.del('n', '<C-c>')

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<M-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<M-1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<M-2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<M-3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<M-4>", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<M-5>", function() harpoon:list():select(5) end)
vim.keymap.set("n", "<M-6>", function() harpoon:list():select(6) end)
vim.keymap.set("n", "<M-7>", function() harpoon:list():select(7) end)
vim.keymap.set("n", "<M-8>", function() harpoon:list():select(8) end)
vim.keymap.set("n", "<M-9>", function() harpoon:list():select(9) end)
 
-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<M-p>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<M-n>", function() harpoon:list():next() end)


--map({ "n" }, "<C-s>", "<cmd> w <cr>")

--vim.keymap.set("n", "<leader>b", '<cmd>lua require"dap".toggle_breakpoint()<cr>')
--vim.keymap.set("n", "<leader>nm", '<cmd>lua require"dap".continue()<cr>')
--vim.keymap.set("n", "<leader>mn", '<cmd>lua require"dap".step_out()<cr>')

vim.keymap.set("n", "<leader>v", '<cmd> vsplit <cr>')
vim.keymap.set("n", "<leader>h", '<cmd> split <cr>')


