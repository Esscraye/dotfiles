return {
  'tpope/vim-fugitive',
  cmd = { 'Git', 'GBrowse' },
  keys = {
    { '<leader>gs', vim.cmd.Git, desc = '[G]it [S]tatus' },
    { '<leader>gd', '<cmd>Gdiffsplit<CR>', desc = '[G]it [D]iff' },
    { '<leader>gc', '<cmd>Git commit<CR>', desc = '[G]it [C]ommit' },
    { '<leader>gp', '<cmd>Git push<CR>', desc = '[G]it [P]ush' },
  },
}
