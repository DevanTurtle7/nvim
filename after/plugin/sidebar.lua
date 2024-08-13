require("sidebar-nvim").setup({
    open = true,
    sections = {"files"}
})

vim.keymap.set("n", "<leader>f", vim.cmd.SidebarNvimFocus)

-- Automatically focus on sidebar on startup
--[[
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd.SidebarNvimFocus()
	end,
})
]]--
