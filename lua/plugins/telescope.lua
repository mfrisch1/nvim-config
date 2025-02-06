return {
	{
		'nvim-telescope/telescope.nvim',
		name = "telescope",
		tag = "0.1.8",
		dependencies = {"nvim-lua/plenary.nvim"},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set('n', '<C-f>', builtin.find_files)
		end
	},
}
