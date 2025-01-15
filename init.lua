-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Copy shortcut
vim.api.nvim_set_keymap("v", "<C-c>", ":w !xclip -selection clipboard<CR><CR>", { noremap = true, silent = true })

require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      visible = true, -- This will show hidden files
      hide_dotfiles = false, -- This will show dotfiles
      hide_gitignored = false, -- This will show gitignored files
    },
  },
})
require("lspconfig").clangd.setup({
  cmd = { "clangd", "--background-index", "--completion-style=detailed", "--clang-tidy" },
})
