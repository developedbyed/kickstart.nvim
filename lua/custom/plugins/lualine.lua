return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Optional, but recommended for icons
  opts = {
    options = {
      --[[
      General options for lualine.
      For a full list of options, see :help lualine-options
      --]]
      icons_enabled = true, -- Do you want to use icons?
      theme = 'kanagawa', -- Or a specific theme like 'tokyonight', 'onedark', 'gruvbox', 'catppuccin', etc.
      -- 'auto' will try to match your colorscheme
      component_separators = { left = '', right = '' }, -- Separators between components
      section_separators = { left = '', right = '' }, -- Separators between sections (A,B,C and X,Y,Z)
      disabled_filetypes = { -- Filetypes for which lualine will be disabled
        statusline = {},
        winbar = {},
      },
      ignore_focus = {}, -- List of buffer types to ignore when checking focus
      always_divide_middle = true, -- If true, separates middle sections with section_separators
      globalstatus = false, -- If true, Components on statuslines of inactive windows are hidden
      -- and statusline for the last active window is used.
      refresh = { -- How often to refresh the statusline and tabline
        statusline = 1000, -- (in ms)
        tabline = 1000,
        winbar = 1000,
      },
    },
    sections = {
      --[[
      These are the main sections, 'lualine_a' through 'lualine_c' on the left,
      and 'lualine_x' through 'lualine_z' on the right.
      Each section is a table of components.
      A component can be a string (a built-in component name) or a table for more control.
      For a full list of built-in components, see :help lualine-components
      --]]
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = {
        { 'filename', path = 1 }, -- path = 1 shows filename relative to CWD
        -- You could also add things like:
        -- 'filesize',
        -- {
        --   'lsp_progress', -- Shows LSP progress messages
        --   display_components = {'lsp_client_name', 'progress'},
        --   colors = { MaterialDark = { progress_done =โซ '#a6e3a1' } },
        -- },
        -- {
        --  'searchcount',
        --  max_searches = 999, -- Maximum number of search results to display
        --  timeout = 500,      -- Timeout in milliseconds for search results
        -- },
      },
      lualine_x = { 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
    inactive_sections = {
      --[[
      Sections for inactive windows. Same structure as `sections`.
      Often simplified.
      --]]
      lualine_a = {},
      lualine_b = {},
      lualine_c = { { 'filename', path = 1 } },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {
      --[[
      Lualine can also act as a tabline.
      --]]
      -- lualine_a = {'tabs'},
      -- lualine_b = {},
      -- lualine_c = {},
      -- lualine_x = {},
      -- lualine_y = {},
      -- lualine_z = {},
    },
    winbar = {
      --[[
      Lualine can also act as a winbar (a bar at the top of each window).
      --]]
      -- lualine_a = {},
      -- lualine_b = {},
      -- lualine_c = {{'filename', path = 1}},
      -- lualine_x = {},
      -- lualine_y = {},
      -- lualine_z = {}
    },
    inactive_winbar = {
      -- lualine_c = {{'filename', path = 1}},
    },
    extensions = {
      --[[
      Lualine has extensions for integration with other plugins.
      --]]
      -- 'nvim-tree',
      -- 'toggleterm',
      -- 'quickfix',
      -- 'mason',
      -- 'fugitive', -- Example for git blame
      -- {
      --   'nvim-dap-ui',
      --   sections = {lualine_c = {'dap-state', 'dap-session'}}
      -- }
    },
  },
}
