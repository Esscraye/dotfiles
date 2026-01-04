return {
  'laytan/cloak.nvim',
  event = 'VeryLazy',
  opts = {
    cloak_character = '*',
    highlight_group = 'Comment',
    cloak_length = nil,
    try_all_substrings = false,
    patterns = {
      {
        file_pattern = { '*.env*', '*.secrets' },
        cloak_pattern = '=.+',
        replace = '= [REDACTED] ',
      },
    },
  },
}
