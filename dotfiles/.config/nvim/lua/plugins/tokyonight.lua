return {
  'folke/tokyonight.nvim',
  lazy = true,
  priority = 1000,
  opts = {
    style = 'night',
    transparent = false,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      functions = {},
      variables = {},
      sidebars = 'dark',
      floats = 'dark',
    },
  },
}
