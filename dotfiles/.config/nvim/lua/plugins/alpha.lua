return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- Set header
    dashboard.section.header.val = {
      '                                      ',
      '  ███████╗███████╗███████╗██╗   ██╗██╗███╗   ███╗',
      '  ██╔════╝██╔════╝██╔════╝██║   ██║██║████╗ ████║',
      '  █████╗  ███████╗███████╗██║   ██║██║██╔████╔██║',
      '  ██╔══╝  ╚════██║╚════██║╚██╗ ██╔╝██║██║╚██╔╝██║',
      '  ███████╗███████║███████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
      '  ╚══════╝╚══════╝╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
      '                                      ',
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button('n', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '  Find file', ':FzfLua files<CR>'),
      dashboard.button('r', '  Recent files', ':FzfLua oldfiles<CR>'),
      dashboard.button('g', '  Live grep', ':FzfLua live_grep<CR>'),
      dashboard.button('s', '  Restore session', ':silent !nvim -S<CR>'),
      dashboard.button('q', '  Quit', ':qa<CR>'),
    }

    -- Set footer
    local function footer()
      return 'Happy coding! ✨'
    end

    dashboard.section.footer.val = footer()

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd 'autocmd FileType alpha setlocal nofoldenable'
  end,
}
