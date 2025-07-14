return {
  'rebelot/kanagawa.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('kanagawa').setup({
      theme = 'base',  -- Set to 'base' to match tmux
    })
    vim.cmd.colorscheme 'kanagawa'
  end,
}
