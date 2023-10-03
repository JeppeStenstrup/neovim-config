local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup('buf_new_file', { clear = true })
autocmd('BufNewFile', {
	group = "buf_new_file",
	command = "Neorg templates load journal",
	pattern = { "**/*.norg" },
})

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

augroup('git', { clear = true })
autocmd('BufWinEnter', {
	group = "git",
	pattern = "*",
	callback = function()
		if vim.bo.ft ~= "fugitive" then
			return
		end

		local bufnr = vim.api.nvim_get_current_buf()
		local opts = {buffer = bufnr, remap = false}
		vim.keymap.set("n", "<leader>p", function()
			vim.cmd.Git('push')
		end, opts)

		-- rebase always
		vim.keymap.set("n", "<leader>P", function()
			vim.cmd.Git({'pull',  '--rebase'})
		end, opts)

		-- NOTE: It allows me to easily set the branch i am pushing and any tracking
		-- needed if i did not set the branch up correctly
		vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts);
	end,
})
