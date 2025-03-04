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
    follow_current_file = {
      enabled = true,
    },
  },
})
require("mason-lspconfig").setup({
  ensure_installed = { "clangd" }, -- Install clangd via Mason
})

-- setup must be called before loading

-- local custom = require("lualine.themes.solarized_light")
-- require("lualine").setup({
--   -- options = { theme = custom },
--   sections = {
--     lualine_c = {
--       {
--         "filename",
--         file_status = true, -- Displays file status (readonly status, modified status)
--         newfile_status = false, -- Display new file status (new file means no write after created)
--         path = 1, -- 0: Just the filename
--         -- 1: Relative path
--         -- 2: Absolute path
--         -- 3: Absolute path, with tilde as the home directory
--         -- 4: Filename and parent dir, with tilde as the home directory
--
--         shorting_target = 40, -- Shortens path to leave 40 spaces in the window
--         -- for other components. (terrible name, any suggestions?)
--         symbols = {
--           modified = "[+]", -- Text to show when the file is modified.
--           readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
--           unnamed = "[No Name]", -- Text to show for unnamed buffers.
--           newfile = "[New]", -- Text to show for newly created file before first write
--         },
--       },
--     },
--   },
-- })
