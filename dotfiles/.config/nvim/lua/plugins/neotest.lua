return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-neotest/neotest-python',
    'nvim-neotest/neotest-jest',
    'nvim-neotest/neotest-plenary',
    'fredrikaverpil/neotest-golang',
    'marilari88/neotest-vitest',
  },
  keys = {
    { '<leader>tn', '<cmd>Neotest nearest<CR>', desc = '[T]est [N]earest' },
    { '<leader>tf', '<cmd>Neotest file<CR>', desc = '[T]est [F]ile' },
    { '<leader>ts', '<cmd>Neotest suite<CR>', desc = '[T]est [S]uite' },
    { '<leader>ta', '<cmd>Neotest attach<CR>', desc = '[T]est [A]ttach' },
    { '<leader>to', '<cmd>Neotest output<CR>', desc = '[T]est [O]utput' },
  },
  config = function()
    local neotest = require 'neotest'
    neotest.setup {
      adapters = {
        require 'neotest-python',
        require 'neotest-jest',
        require 'neotest-vitest',
        require 'neotest-golang',
        require 'neotest-plenary',
      },
    }
  end,
}
