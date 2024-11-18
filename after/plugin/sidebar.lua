require("sidebar-nvim").setup({
    open = true,
    sections = {"files", "todos", "git"},
    files = {
        show_hidden = true
    }
})

vim.keymap.set("n", "<leader>f", vim.cmd.SidebarNvimFocus)
vim.keymap.set("n", "<leader>z", vim.cmd.SidebarNvimTogge)

-- Automatically focus on sidebar on startup
--[[
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd.SidebarNvimFocus()
	end,
})
]]--
