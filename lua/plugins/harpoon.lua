return {
	"ThePrimeagen/harpoon",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	keys = {
		{ "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
		{ "<C-e>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
		{ "<leader>1", "<cmd>lua require('harpoon.ui').ui.nav_file(1)", desc = "Go to mark 1" },
		{ "<leader>2", "<cmd>lua require('harpoon.ui').ui.nav_file(2)", desc = "Go to mark 2" },
		{ "<leader>3", "<cmd>lua require('harpoon.ui').ui.nav_file(3)", desc = "Go to mark 3" },
		{ "<leader>4", "<cmd>lua require('harpoon.ui').ui.nav_file(4)", desc = "Go to mark 4" },
	},
}
