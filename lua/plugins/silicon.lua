return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  init = function()
    local wk = require('which-key')
    wk.register({
      ["<leader>sx"] = { ":Silicon<CR>", "Snapshot Code" }
    }, { mode = "v" })
  end,
  config = function()
    require('silicon').setup({
      font = "JetBrainsMono Nerd Font=34;Noto Color Emoji=34",
      theme = 'gruvbox-dark',
      background = '#8da1b9',
      output = function()
        return "/mnt/c/Users/Charaf_Zitouni/Pictures/Screenshots/" .. os.date("!%Y-%m-%dT%H-%M-%S") .. "_code.png"
      end,
      window_title = function()
        return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
      end
    })
  end
}
