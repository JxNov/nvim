-- ================================================================================================
-- TITLE : telescope-nvim
-- LINKS :
--   > github : https://github.com/nvim-telescope/telescope.nvim
--   > fzf-native : https://github.com/nvim-telescope/telescope-fzf-native.nvim
-- ABOUT : Highly extendable fuzzy finder over lists.
-- ================================================================================================

return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  keys = {
    { "<leader>tf", "<cmd>Telescope find_files<cr>", desc = "Telescope Find Files" },
    { "<leader>tg", "<cmd>Telescope live_grep<cr>",  desc = "Telescope Live Grep" },
    { "<leader>tb", "<cmd>Telescope buffers<cr>",    desc = "Telescope Buffers" },
    { "<leader>th", "<cmd>Telescope help_tags<cr>",  desc = "Telescope Help Tags" },
  },
  opts = {
    defaults = {
      layout_strategy = "flex",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
    },
  },
}

