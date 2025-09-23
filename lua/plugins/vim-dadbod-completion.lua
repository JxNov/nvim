return {
	"kristijanhusak/vim-dadbod-completion",
	lazy = true,
	ft = { "sql", "mysql", "plsql" },
	config = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "sql", "mysql", "plsql" },
			callback = function()
				require("cmp").setup.buffer({
					sources = {
						{ name = "vim-dadbod-completion" },
						{ name = "buffer" },
					},
				})
			end,
		})
	end,
}
