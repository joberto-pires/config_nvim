-- Simple theme switcher using a function and keymap
local function switch_theme()
  local themes = {
    "monochrome",
    "catppuccin",    -- Catppuccin will use its default flavour (latte? mocha?) – you can configure
    "monokai",
    "tokyonight",
  }
  local current = vim.g.colors_name
  local next_theme = nil
  for i, theme in ipairs(themes) do
    if theme == current then
      next_theme = themes[i % #themes + 1]
      break
    end
  end
  if not next_theme then
    next_theme = themes[1]
  end
  vim.cmd.colorscheme(next_theme)
  print("Switched to " .. next_theme)
end

-- Bind to a leader keymap, e.g. <leader>cs (change scheme)
vim.keymap.set("n", "<leader>cs", switch_theme, { desc = "Switch colorscheme" })
