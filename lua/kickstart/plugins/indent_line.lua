return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {
    indent = { char = '│' },
    whitespace = {
      remove_blankline_trail = false,
    },
    scope = {
      enabled = true,
      char = '│',
      show_start = true,
      show_end = true,
      highlight = 'KanagawaGray',
    },
  },
  config = function(_, opts)
    vim.api.nvim_set_hl(0, 'IblScope', { fg = '#7E9CD8' })

    opts.scope.highlight = 'IblScope'

    require('ibl').setup(opts)
  end,
}
