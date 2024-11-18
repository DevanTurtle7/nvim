require('persisted').setup({
    autostart = true,
    autoload = true
})

function OpenSidebar()
    vim.cmd.SidebarNvimOpen()
end

vim.api.nvim_create_autocmd("User", {
    pattern = "PersistedSavePre",
    callback = function()
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
            local filetype = vim.bo[buf].filetype

            if filetype == "SidebarNvim" or filetype == "cmd_menu"  then
                vim.api.nvim_buf_delete(buf, { force = true })
            end
        end
    end,
})

vim.api.nvim_create_autocmd("User", {
    pattern = "PersistedSavePost",
    callback = OpenSidebar
})

vim.api.nvim_create_autocmd("QuitPre", {
    callback = function()
        require('persisted').save()
    end
})
