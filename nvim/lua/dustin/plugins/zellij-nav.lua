return {
    "https://git.sr.ht/~swaits/zellij-nav.nvim",
    lazy = true,
    event = "VeryLazy",
    keys = {
      { "<c-a>", "<cmd>ZellijNavigateLeft<cr>",  { silent = true, desc = "navigate left"  } },
    --   { "<c-s>", "<cmd>ZellijNavigateDown<cr>",  { silent = true, desc = "navigate down"  } },
    --   { "<c-d>", "<cmd>ZellijNavigateUp<cr>",    { silent = true, desc = "navigate up"    } },
      { "<c-f>", "<cmd>ZellijNavigateRight<cr>", { silent = true, desc = "navigate right" } },
    },
    opts = {},
  }