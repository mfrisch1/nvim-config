return {
   {
      "m4xshen/autoclose.nvim",
      name = "autoclose-config",
      opts = {
         options = {
            disabled_filetypes = { "text", "markdown" },
         }
      },
			config = function()
				require("autoclose").setup()
			end
   },
}
