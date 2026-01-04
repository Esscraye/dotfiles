return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = 'markdown',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  opts = {
    file_types = { 'markdown', 'norg', 'rmd', 'org' },
    code = { sign = false, style = 'full', left_margin = 2, right_margin = 2 },
    heading = { sign = false, icons = { '󰲡 ', '󰲣 ', '󰲥 ', '󰲧 ', '󰲩 ', '󰲫 ' } },
  },
}
