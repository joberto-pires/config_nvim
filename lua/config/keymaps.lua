local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
--vim.keymap.del('n', '<leader>v')
--vim.keymap.del('n', '<leader>h')
--vim.keymap.del('n', '<C-c>')

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<M-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<M-b>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<M-m>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<M-w>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<M-v>", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<M-z>", function() harpoon:list():select(5) end)
 
-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<M-p>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<M-n>", function() harpoon:list():next() end)


--map({ "n" }, "<C-s>", "<cmd> w <cr>")

--vim.keymap.set("n", "<leader>b", '<cmd>lua require"dap".toggle_breakpoint()<cr>')
--vim.keymap.set("n", "<leader>nm", '<cmd>lua require"dap".continue()<cr>')
--vim.keymap.set("n", "<leader>mn", '<cmd>lua require"dap".step_out()<cr>')

vim.keymap.set("n", "<leader>v", '<cmd> vsplit <cr>')
vim.keymap.set("n", "<leader>h", '<cmd> split <cr>')


vim.keymap.set("n", "<M-t>", '<cmd>lua vim.treesitter.start()  <cr>')
vim.keymap.set("n", "<C-j>", '<cmd> m +1 <cr>')
vim.keymap.set("n", "<C-k>", '<cmd> m -2 <cr>')


local term_buf = nil
local term_win = nil

local function toggle_floating_term()
  if term_win and vim.api.nvim_win_is_valid(term_win) then
    vim.api.nvim_win_close(term_win, true)
    term_win = nil
    term_buf = nil
    return
  end

  -- Calculate size (80% width, 60% height)
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.6)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  -- Create a new buffer and window
  term_buf = vim.api.nvim_create_buf(false, true)
  term_win = vim.api.nvim_open_win(term_buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "double",
  })
  vim.fn.termopen(vim.o.shell)  -- open shell
  vim.cmd("startinsert")        -- enter insert mode
end

vim.keymap.set("n", "<A-c>", toggle_floating_term, { desc = "Toggle floating terminal" })
vim.keymap.set("t", "<A-c>", toggle_floating_term, { desc = "Toggle floating terminal" })
