return {
  {
    "Rimkomatic/switchscheme.nvim",
    lazy = true,
    cmd = { "SwitchColorscheme" }, -- Loads the plugin only when you use this command
    dependencies = {
      "nvim-telescope/telescope.nvim", -- Required for the UI picker
    },
    config = function()
      require("switchscheme").setup({
        preview = true, -- Enable live preview as you scroll through themes
        layout = {     -- Adjust the floating window size
          width = 0.4,
          height = 0.4,
        },
      })
      -- Optional: Create a keymap to open the theme picker
      vim.keymap.set("n", "<leader>ct", ":SwitchColorscheme<CR>", { noremap = true, silent = true, desc = "Switch Colorscheme" })
    end,
  }
}
