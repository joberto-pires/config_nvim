return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<C-l>",
          clear_suggestion = "<C-\\>",
          next_suggestion = "<C-j>",
          prev_suggestion = "<C-k>",
        },
      })
    end,
  },
  -- Correctly add supermaven as a cmp source
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "supermaven-inc/supermaven-nvim" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local supermaven = require("supermaven-nvim.cmp")
      if supermaven then
        table.insert({opts.sources}, { name = "supermaven" })
      end
    end,
  },
}
