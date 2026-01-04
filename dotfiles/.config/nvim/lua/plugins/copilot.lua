return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'VeryLazy',
  opts = {
    suggestion = { enabled = true, auto_trigger = true, debounce = 75 },
    panel = { enabled = false },
    filetypes = {
      help = false,
      gitcommit = false,
      gitrebase = false,
      hgcommit = false,
      svn = false,
      cvs = false,
      ['.'] = false,
    },
  },
}
