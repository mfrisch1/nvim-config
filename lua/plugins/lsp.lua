return {
	{
		"williamboman/mason.nvim",
		name = "mason",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		name = "mason-lspconfig",
		config = function()
			require("mason-lspconfig").setup({
				automatic_installation = true,
				ensure_installed = {
					"lua_ls",
					"clangd"
				}
			}
			)
			end
	},
	{
		"neovim/nvim-lspconfig",
		name = "nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.clangd.setup({})
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							-- Get the language server to recognise the `vim` global
							globals = {"vim"},
						},
						workspace = {
							library = {
								vim.env.VIMRUNTIME
							},
							checkThirdParty = false,
						},
						telemery = {
							enable = false,
						},
					}
				}
			})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {})
			vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {})
			-- Open Error Quick Fix Window
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
