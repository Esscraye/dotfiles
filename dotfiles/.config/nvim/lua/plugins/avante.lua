return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  lazy = true,
  version = false, -- set this if you want to always pull the latest change
  keys = {
    { '<leader>aa', '<cmd>AvanteAsk<CR>', desc = '[A]vante [A]sk' },
    { '<leader>ar', '<cmd>AvanteRefresh<CR>', desc = '[A]vante [R]efresh' },
    { '<leader>ae', '<cmd>AvanteEdit<CR>', desc = '[A]vante [E]dit' },
    { '<leader>at', '<cmd>AvanteToggle<CR>', desc = '[A]vante [T]oggle' },
    { '<leader>a?', '<cmd>AvanteModels<CR>', desc = '[A]vante select [?]model' },
  },
  opts = {
    provider = 'copilot',
    providers = {
      copilot = {
        endpoint = 'https://api.github.com',
        model = 'gpt-4o',
        timeout = 30000,
        temperature = 0,
        extra_request_body = {
          max_tokens = 4096,
        },
      },
    },
    behaviour = {
      auto_suggestions = false, -- Experimental stage
      auto_set_highlight_group = true,
      auto_set_keymaps = true,
      support_paste_from_clipboard = false,
    },
    mappings = {
      --- @class AvanteConflictMappings
      diff = {
        ours = 'co',
        theirs = 'ct',
        all_theirs = 'ca',
        both = 'cb',
        cursor = 'cc',
        next = ']x',
        prev = '[x',
      },
      suggestion = {
        accept = '<M-l>',
        next = '<M-]>',
        prev = '<M-[>',
        dismiss = '<C-]>',
      },
      jump = {
        next = ']]',
        prev = '[[',
      },
      submit = {
        normal = '<CR>',
        insert = '<C-s>',
      },
      sidebar = {
        apply_all = 'A',
        apply_cursor = 'a',
        switch_windows = '<Tab>',
        reverse_switch_windows = '<S-Tab>',
      },
    },
    hints = { enabled = true },
    windows = {
      ---@type "right" | "left" | "top" | "bottom"
      position = 'right',
      wrap = true,
      width = 30,
      sidebar_header = {
        enabled = true,
        align = 'center',
        rounded = true,
      },
    },
    highlights = {
      ---@type AvanteConflictHighlights
      diff = {
        current = 'DiffText',
        incoming = 'DiffAdd',
      },
    },
    --- @type string
    system_prompt = [[You are a helpful assistant.]]
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = 'make',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    --- The below dependencies are optional,
    'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
    'zbirenbaum/copilot.lua', -- for providers='copilot'
    {
      -- support for image pasting
      'HakonHarnes/img-clip.nvim',
      event = 'VeryLazy',
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_each_image = false,
          drag_and_drop = {
            enabled = true,
            insert_mode = false,
          },
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have multiple language models configured
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}
