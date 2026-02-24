-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      direction = 'float',
      open_mapping = [[<leader>ç]],
      float_opts = {
        border = 'curved',
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
      },
      start_in_insert = true,
      autochdir = true,
      insert_mappings = true,
      terminal_mappings = true,
      shade_terminals = false,
      persist_size = true,
      close_on_exit = true,
      shell = vim.o.shell,
    },
  },
  {
    'barrett-ruth/live-server.nvim',
    build = 'pnpm add -g live-server',
    cmd = { 'LiveServerStart', 'LiveServerStop' },
    config = true,
  },
  {
    'nvimdev/lspsaga.nvim',
    event = 'LspAttach',
    config = function()
      require('lspsaga').setup {
        -- você pode deixar vazio ou colocar configs aqui
      }
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter', -- necessário para highlight
      'nvim-tree/nvim-web-devicons', -- ícones bonitos
    },
  },
  {
    'kosayoda/nvim-lightbulb',
    event = 'LspAttach',
    dependencies = { 'antoinemadec/FixCursorHold.nvim' },
    config = function()
      require('nvim-lightbulb').setup {
        autocmd = { enabled = true },
      }
    end,
  },
  { 'L3MON4D3/LuaSnip', dependencies = { 'rafamadriz/friendly-snippets' } },
}
