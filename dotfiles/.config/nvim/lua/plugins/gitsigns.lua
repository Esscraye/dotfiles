return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    signs = {
      add = { text = '▎' },
      change = { text = '▎' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(bufnr)
      local gitsigns = require 'gitsigns'
      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      map('n', ']c', function()
        if vim.wo.diff then return ']c' end
        vim.schedule(function() gitsigns.next_hunk() end)
        return '<Ignore>'
      end, { expr = true, desc = 'Next Hunk' })

      map('n', '[c', function()
        if vim.wo.diff then return '[c' end
        vim.schedule(function() gitsigns.prev_hunk() end)
        return '<Ignore>'
      end, { expr = true, desc = 'Prev Hunk' })

      map({ 'n', 'v' }, '<leader>ghs', ':Gitsigns stage_hunk<CR>', { desc = 'Stage Hunk' })
      map({ 'n', 'v' }, '<leader>ghr', ':Gitsigns reset_hunk<CR>', { desc = 'Reset Hunk' })
      map('n', '<leader>ghS', gitsigns.stage_buffer, { desc = 'Stage Buffer' })
      map('n', '<leader>ghu', gitsigns.undo_stage_hunk, { desc = 'Undo Stage Hunk' })
      map('n', '<leader>ghR', gitsigns.reset_buffer, { desc = 'Reset Buffer' })
      map('n', '<leader>ghp', gitsigns.preview_hunk, { desc = 'Preview Hunk' })
      map('n', '<leader>ghb', function() gitsigns.blame_line { full = true } end, { desc = 'Blame Line' })
      map('n', '<leader>ghd', gitsigns.diffthis, { desc = 'Diff This' })
    end,
  },
}
