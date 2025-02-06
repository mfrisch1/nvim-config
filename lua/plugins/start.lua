return {
	'nvimdev/dashboard-nvim',
	event = 'Vimenter',
	config = function ()
		require('dashboard').setup {
			theme = 'hyper'
		}
	end,
	dependencies = {{"nvim-tree/nvim-web-devicons"}}
}
