return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = { style = "storm" },
  },
  -- Snacks.nvim
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
      },
    },
  },

  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
        ██╗      █████╗ ███████╗██╗   ██╗          Z
        ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝      Z    
        ██║     ███████║  ███╔╝  ╚████╔╝    z       
        ██║     ██╔══██║ ███╔╝    ╚██╔╝   z         
        ███████╗██║  ██║███████╗   ██║              
        ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝              
 ]],
        },
      },
    },
  },

  -- Tmux navigator
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
