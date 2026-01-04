return {
  'sphamba/smear-cursor.nvim',
  event = 'VeryLazy',
  opts = {
    legacy_computing_symbols_support = true,
    smear_between_buffers = true,
    time_interval = 40,
    scroll_direction = 'top',
    max_slope = nil,
    min_length = 0,
    trailing = true,
  },
}
