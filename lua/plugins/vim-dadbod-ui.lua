return {
	{
		"kristijanhusak/vim-dadbod-ui",
		dependencies = {
			{ "tpope/vim-dadbod", lazy = true },
		},
		cmd = {
			"DBUI",
			"DBUIToggle",
			"DBUIAddConnection",
			"DBUIFindBuffer",
		},
		init = function()
			vim.g.db_ui_use_nerd_fonts = 1
		end,
		keys = {
			{ "<leader>du", "<cmd>DBUI<cr>", desc = "Open DBUI" },
			{ "<leader>dt", "<cmd>DBUIToggle<cr>", desc = "Toggle DBUI" },
			{ "<leader>da", "<cmd>DBUIAddConnection<cr>", desc = "Add DB Connection" },
			{ "<leader>df", "<cmd>DBUIFindBuffer<cr>", desc = "Find DB Buffer" },

			-- run query
			{ "<leader>dr", "<cmd>DB<cr>", desc = "Run SQL in buffer" },
			{ "<leader>dl", ":.,.DB<cr>", desc = "Run SQL on current line" },
		},
	},
}
