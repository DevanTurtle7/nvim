local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>pr", builtin.lsp_references, {})
vim.keymap.set("n", "<leader>pl", builtin.live_grep, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)


require("telescope").setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "package%-lock.json",
      ".git/"
    },
  },
  pickers = {
    find_files = {
      hidden = true
    }
  }
}
