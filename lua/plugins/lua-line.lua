local colors = {
  base = '#191724',
  surface = '#1f1d2e',
  overlay = '#26233a',
  muted = '#6e6a86',
  subtle = '#908caa',
  text = '#e0def4',
  love = '#eb6f92',
  gold = '#f6c177',
  rose = '#ebbcba',
  pine = '#31748f',
  foam = '#9ccfd8',
  iris = '#c4a7e7',
  highlight_low = '#21202e',
  highlight_med = '#403d52',
  highlight_high = '#524f67'
}

local customrosepine = {
  normal = {
    a = { bg = colors.love, fg = colors.base },
    b = { bg = colors.highlight_low, fg = colors.text },
    c = { bg = colors.base, fg = colors.text }
  },
  insert = {
    a = { bg = colors.pine, fg = colors.base },
    b = { bg = colors.highlight_low, fg = colors.text },
    c = { bg = colors.base, fg = colors.text }
  },
  visual = {
    a = { bg = colors.iris, fg = colors.base },
    b = { bg = colors.highlight_low, fg = colors.text },
    c = { bg = colors.base, fg = colors.text }
  },
  replace = {
    a = { bg = colors.foam, fg = colors.base },
    b = { bg = colors.highlight_low, fg = colors.text },
    c = { bg = colors.base, fg = colors.text }
  },
  command = {
    a = { bg = colors.gold, fg = colors.base },
    b = { bg = colors.highlight_low, fg = colors.text },
    c = { bg = colors.base, fg = colors.text }
  },
  inactive = {
    a = { bg = colors.muted, fg = colors.base },
    b = { bg = colors.highlight_low, fg = colors.text },
    c = { bg = colors.base, fg = colors.text }
  }
}

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        theme = customrosepine
      },
      sections = {
        lualine_c = {
          { 'filename', path = 1 },
        },
      },
    })
  end
}
