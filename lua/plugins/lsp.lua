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
					"clangd",
					"harper_ls",
					"dockerls",
					"docker_compose_language_service",
				}
			}
			)
			end
	},
	{
		"neovim/nvim-lspconfig",
		name = "nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.docker_compose_language_service.setup({
				capabilities = capabilities
			})

			lspconfig.dockerls.setup({
				capabilities = capabilities
			})
			lspconfig.gopls.setup({
				capabilities = capabilities
			})
			lspconfig.clangd.setup({
				capabilities = capabilities
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
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
