return {
  'developedbyed/marko.nvim',
  config = function()
    require('marko').setup {
      width = 100,
      height = 100,
      border = 'rounded',
      title = ' Marko ',
    }
  end,
}
