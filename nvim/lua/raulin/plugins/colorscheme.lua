-- ~/.config/nvim/lua/raulin/plugins/colorscheme.lua

return {
	-- "catppuccin/nvim",
	-- name = "catppuccin",
	-- priority = 1000,
	-- config = function()
	-- 	vim.cmd.colorscheme("catppuccin")
	-- 	require("catppuccin").setup({
	-- 		auto_integrations = true,
	-- 	})
	-- end,

	-- "marko-cerovac/material.nvim",
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	vim.g.material_style = "deep ocean"
	-- 	vim.cmd.colorscheme("material")
	-- end,

	"ellisonleao/gruvbox.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			contrast = "hard",
			transparent_mode = true,
		})
		vim.cmd.colorscheme("gruvbox")
	end,
}
