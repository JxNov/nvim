-- ================================================================================================
-- TITLE : noice-nvim
-- LINKS :
--   > github : https://github.com/folke/noice.nvim
-- ABOUT : notify, cmd custom
-- ================================================================================================

return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    cmdline = {
      view = "cmdline_popup",
      format = {
        cmdline = { pattern = "^:", icon = "", lang = "vim" },
        search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
        search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
      },
    },
    messages = { enabled = true },
    popupmenu = { enabled = true },
    notify = { enabled = true },
  },
}

