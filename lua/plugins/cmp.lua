return {
	{
		"hrsh7th/cmp-nvim-lsp"
	},
	{
		"L3MON4D3/LuaSnip",
		name = "LuaSnip",
		dependencies =  {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
		{
			"hrsh7th/nvim-cmp",
			config = function()
				local cmp = require("cmp") -- load main module 
				local luasnip = require("luasnip")
				require("luasnip/loaders/from_vscode").lazy_load()

				cmp.setup({
					snippet = {
						expand= function(args)
							luasnip.lsp_expand(args.body)
						end,
					},

					window = {
						completion = cmp.config.window.bordered(),
						documentaion = cmp.config.window.bordered(),
					},

					completion = {
						completeopt = "menu,menuone,preview,noselect"
					},

					mapping = cmp.mapping.preset.insert({
					  ["<C-b"] = cmp.mapping.scroll_docs(-4),
					  ["<C-f"] = cmp.mapping.scroll_docs(4),
						['<C-Space>'] = cmp.mapping.complete(),
						["<CR>"] = cmp.mapping.confirm({ select = true}), -- carraige return aka Enter
						["C-e"] = cmp.mapping.abort(),
						["<Esc>"] = cmp.mapping.abort(),
						["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jumpable()
						else
							fallback()
						end
					end, {"i", "s"}),
					}),

					sources = cmp.config.sources({
						{ name = "nvim_lsp" },
						{ name = "luasnip" }
					},
					{
						{ name = "path"},
						{ name = "buffer" },
					})
			})
		end,
	}
}

