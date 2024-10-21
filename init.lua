-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Copy shortcut
vim.api.nvim_set_keymap('v', '<C-c>', ':w !xclip -selection clipboard<CR><CR>', { noremap = true, silent = true })

