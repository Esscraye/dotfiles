return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 100
  end,
  opts = {
    preset = 'helix',
    delay = function(ctx)
      return ctx.plugin and 0 or 200
    end,
  },
}
