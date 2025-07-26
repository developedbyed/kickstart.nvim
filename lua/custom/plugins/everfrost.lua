return {
  {
    'comfysage/evergarden',
    lazy = true,
    priority = 1000,
    config = function()
      require('evergarden').setup()
    end,
  },
  {
    'neanias/everforest-nvim',
    version = false,
    lazy = true,
    priority = 1000,
    config = function()
      require('everforest').setup({
        background = "hard",
      })
    end,
  },
}