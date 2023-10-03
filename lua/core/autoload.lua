local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup('buf_new_file', { clear = true })
autocmd('BufNewFile', {
	command = "Neorg templates load journal",
	pattern = { "**/*.norg" },
	group = "buf_new_file",
})
