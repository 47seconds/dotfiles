-- return {
--   {
--     "stevearc/conform.nvim",
--     -- event = 'BufWritePre', -- uncomment for format on save
--     opts = require "configs.conform",
--   },
--
--   -- These are some examples, uncomment them if you want to see them work!
--   {
--     "neovim/nvim-lspconfig",
--     config = function()
--       require "configs.lspconfig"
--     end,
--   },
--
--   -- {
--   --   "nvim-treesitter/nvim-treesitter",
--   --   opts = {
--   --     ensure_installed = {
--   --       "vim", "lua", "vimdoc",
--   --       "html", "css"
--   --     },
--   --   },
--   -- },
-- }

return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- Transparency plugin
  {
    "xiyaowong/transparent.nvim",
    lazy = false,  -- Load immediately
    priority = 1000,  -- Load early
    config = function()
      require("transparent").setup({
        groups = { 
          'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
          'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String',
          'Function', 'Conditional', 'Repeat', 'Operator', 'Structure',
          'LineNr', 'NonText', 'SignColumn', 'CursorLineNr', 'EndOfBuffer',
        },
        extra_groups = {
          "NormalFloat",
          "NvimTreeNormal",
          "NvimTreeNormalNC", 
          "TelescopeNormal",
          "TelescopeBorder",
          "TelescopePromptNormal",
          "TelescopeResultsNormal",
          "TelescopePreviewNormal",
        },
        exclude_groups = {},
      })
      -- Enable transparency immediately
      vim.cmd("TransparentEnable")
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "javascript", "typescript",
        "c", "cpp", "json", "bash", "markdown", "markdown_inline"
      },
      highlight = {
        enable = true,
      },
    },
  }
}
