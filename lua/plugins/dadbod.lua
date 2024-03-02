return {
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      "tpope/vim-dadbod",
      "kristijanhusak/vim-dadbod-completion",
    },
    config = function()
      require("config.dadbod").setup()
    end,
    cmd = { "DBUIToggle", "DBUI", "DBUIAddConnection", "DBUIFindBuffer", "DBUIRenameBuffer", "DBUILastQueryInfo" },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
    end
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>d"] = {
          name = "Database",
          u = { "<Cmd>DBUIToggle<Cr>", "Toggle UI" },
          f = { "<Cmd>DBUIFindBuffer<Cr>", "Find buffer" },
          r = { "<Cmd>DBUIRenameBuffer<Cr>", "Rename buffer" },
          q = { "<Cmd>DBUILastQueryInfo<Cr>", "Last query info" },
        }
      },
    },
  }
}

-- return {
--   'kristijanhusak/vim-dadbod-ui',
--   dependencies = {
--     { 'tpope/vim-dadbod',                     lazy = true },
--     { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
--   },
--   cmd = {
--     'DBUI',
--     'DBUIToggle',
--     'DBUIAddConnection',
--     'DBUIFindBuffer',
--   },
--   init = function()
--     -- Your DBUI configuration
--     vim.g.db_ui_use_nerd_fonts = 1
--   end,
-- }
