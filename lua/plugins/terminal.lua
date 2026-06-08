return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,              -- height of the terminal (in lines)
        open_mapping = [[<A-c>]], -- Alt+c to toggle
        direction = "float",    -- floating window
        float_opts = {
          border = "double",    -- border style: single, double, solid, etc.
          width = function()
            return math.floor(vim.o.columns * 0.8) -- 80% of screen width
          end,
          height = function()
            return math.floor(vim.o.lines * 0.6)   -- 60% of screen height
          end,
          winblend = 3,         -- transparency (0-100)
        },
        shade_filetypes = {},
        autochdir = true,
      })
    end,
  },
}
