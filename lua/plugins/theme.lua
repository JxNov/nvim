-- ================================================================================================
-- TITLE : folke/tokyonight.nvim
-- ABOUT : A subtle, warm colorscheme for Neovim inspired by Tokyonight theme.
-- LINKS :
--   > github : https://github.com/folke/tokyonight.nvim
-- ================================================================================================

return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      transparent = true,
      styles = {
        floats = "transparent",
        sidebars = "transparent",
      },
      on_highlights = function(hl, colors)
        hl.ColorColumn = { bg = "NONE" }
      end,
    })
    vim.cmd("colorscheme tokyonight")
  end,
}
