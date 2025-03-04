return {
  -- {
  --   "catppuccin/nvim",
  --   lazy = true,
  --   name = "catppuccin",
  --   opts = {
  --     integrations = {
  --       aerial = true,
  --       alpha = true,
  --       cmp = true,
  --       dashboard = true,
  --       flash = true,
  --       fzf = true,
  --       grug_far = true,
  --       gitsigns = true,
  --       headlines = true,
  --       illuminate = true,
  --       indent_blankline = { enabled = true },
  --       leap = true,
  --       lsp_trouble = true,
  --       mason = true,
  --       markdown = true,
  --       mini = true,
  --       native_lsp = {
  --         enabled = true,
  --         underlines = {
  --           errors = { "undercurl" },
  --           hints = { "undercurl" },
  --           warnings = { "undercurl" },
  --           information = { "undercurl" },
  --         },
  --       },
  --       navic = { enabled = true, custom_bg = "lualine" },
  --       neotest = true,
  --       neotree = true,
  --       noice = true,
  --       notify = true,
  --       semantic_tokens = true,
  --       snacks = true,
  --       telescope = true,
  --       treesitter = true,
  --       treesitter_context = true,
  --       which_key = true,
  --     },
  --   },
  --   specs = {
  --     {
  --       "akinsho/bufferline.nvim",
  --       optional = true,
  --       opts = function(_, opts)
  --         if (vim.g.colors_name or ""):find("catppuccin") then
  --           opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
  --         end
  --       end,
  --     },
  --   },
  -- },

  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          transparent = false, -- Keep background enabled
          terminal_colors = true,
        },
        palettes = {
          carbonfox = {
            bg1 = "#1c1c1e", -- Slightly lighter black for the active window
            bg_float = "#3a3d4a", -- Brighter floating windows (hover, LSP, etc.)
          },
        },
        groups = {
          carbonfox = {
            Normal = { bg = "#1c1c1e" }, -- Apply to the main window
            NormalNC = { bg = "#111111" }, -- Keep inactive windows darker
            NormalFloat = { bg = "#292a30" }, -- Make floating windows more visible
            FloatBorder = { fg = "#5e5f66", bg = "#292a30" }, -- Ensure border visibility
            Pmenu = { bg = "#292a30" }, -- Completion menu background
            PmenuSel = { bg = "#3b3c42" }, -- Highlighted item in completion menu
            Visual = { bg = "#FF8800", fg = "#ffffff" }, -- **Orange visual selection highlight**
            VisualNOS = { bg = "#FF8800", fg = "#ffffff" }, -- Non-operator visual mode selection
            -- CursorLine = { bg = "#3a3d4a", fg = "#ffffff" }, -- Make cursor line more visible
            -- CursorColumn = { bg = "#3a3d4a", fg = "#ffffff" }, -- Highlight column as well
          },
        },
      })
      vim.cmd("colorscheme carbonfox") -- Set Carbonfox as the theme
    end,
  },
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("rose-pine").setup({
  --       variant = "moon", -- Use Rosé Pine Moon 🌙
  --       dark_variant = "moon", -- Ensure dark mode applies the moon variant
  --       bold_vert_split = false, -- No bold vertical splits
  --       dim_nc_background = false, -- No dimming of inactive windows
  --       disable_background = false, -- Keep background color
  --       disable_float_background = false, -- Keep floating windows styled
  --       disable_italics = false, -- Allow italics
  --
  --       highlight_groups = {
  --         -- Example tweaks (customize as needed)
  --         CursorLine = { bg = "#2a273f" }, -- Darker cursor line for visibility
  --         StatusLine = { fg = "#e0def4", bg = "#1f1d2e" }, -- Softer status line contrast
  --       },
  --     })
  --     vim.cmd("colorscheme rose-pine") -- Apply the theme
  --   end,
  -- },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_c = {
        { "filename", path = 1 }, -- Use full path instead of truncating
      }
    end,
  },
}
