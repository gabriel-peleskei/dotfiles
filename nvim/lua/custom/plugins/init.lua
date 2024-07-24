-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'tribela/vim-transparent' },
  { 'gabriel-peleskei/improved-ft', opts = {
    use_default_mappings = true,
    ignore_char_case = true,
  } },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000, opts = {
    flavour = 'latte',
  } },
  -- {
  --   'christoomey/vim-tmux-navigator',
  --   cmd = {
  --     'TmuxNavigateLeft',
  --     'TmuxNavigateDown',
  --     'TmuxNavigateUp',
  --     'TmuxNavigateRight',
  --     'TmuxNavigatePrevious',
  --   },
  --   keys = {
  --     { '<c-left>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
  --     { '<c-down>', '<cmd><C-U>TmuxNavigateDown<cr>' },
  --     { '<c-up>', '<cmd><C-U>TmuxNavigateUp<cr>' },
  --     { '<c-right>', '<cmd><C-U>TmuxNavigateRight<cr>' },
  --     { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
  --   },
  -- },
}
